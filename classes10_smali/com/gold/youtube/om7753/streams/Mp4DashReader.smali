.class public Lcom/gold/youtube/om7753/streams/Mp4DashReader;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# instance fields
.field private backupBox:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

.field private box:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

.field private brands:[I

.field private chunkZero:Z

.field private moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

.field private selectedTrack:I

.field private final stream:Lcom/gold/youtube/om7753/streams/DataReader;

.field private tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->brands:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->chunkZero:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->selectedTrack:I

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->backupBox:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    new-instance v0, Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-direct {v0, p1}, Lcom/gold/youtube/om7753/streams/DataReader;-><init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    return-void
.end method

.method private boxName(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private boxName(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Ljava/lang/String;
    .registers 2

    iget p1, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->type:I

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V
    .registers 7

    iget-wide v0, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->offset:J

    iget-wide v2, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/DataReader;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    return-void

    :cond_13
    cmp-long v4, v0, v2

    if-ltz v4, :cond_1f

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    long-to-int v1, v0

    int-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    return-void

    :cond_1f
    new-instance v0, Ljava/io/EOFException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->boxName(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->offset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x3

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/DataReader;->position()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "parser go beyond limits of the box. type=%s offset=%s size=%s position=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasFlag(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private parseEdts(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Elst;
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x656c7374

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-direct {p0, p1, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->untilBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;[I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object p1

    if-nez p1, :cond_11

    const/4 p1, 0x0

    return-object p1

    :cond_11
    new-instance p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Elst;

    invoke-direct {p1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Elst;-><init>()V

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->read()I

    move-result v1

    if-ne v1, v0, :cond_1f

    const/4 v3, 0x1

    :cond_1f
    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    const-wide/16 v4, 0x3

    invoke-virtual {v1, v4, v5}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v1

    if-ge v1, v0, :cond_33

    const/high16 v0, 0x10000

    iput v0, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Elst;->bMediaRate:I

    return-object p1

    :cond_33
    if-eqz v3, :cond_4e

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    const-wide/16 v3, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/DataReader;->readLong()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Elst;->mediaTime:J

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x10

    int-to-long v0, v1

    invoke-virtual {v2, v0, v1}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    goto :goto_5e

    :cond_4e
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Elst;->mediaTime:J

    :goto_5e
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v0

    iput v0, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Elst;->bMediaRate:I

    return-object p1
.end method

.method private parseFtyp(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)[I
    .registers 7

    iget-wide v0, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->offset:J

    iget-wide v2, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v0, v2

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/DataReader;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int p1, v0

    new-array v0, p1, [I

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v1

    const/4 v4, 0x0

    aput v1, v0, v4

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1, v2, v3}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    const/4 v1, 0x1

    :goto_22
    if-ge v1, p1, :cond_2f

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_2f
    return-object v0
.end method

.method private parseHdlr(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;
    .registers 8

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;-><init>()V

    const/16 v1, 0xc

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;->bReserved:[B

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;->type:I

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;->subType:I

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    iget-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;->bReserved:[B

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/streams/DataReader;->read([B)I

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    iget-wide v2, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->offset:J

    iget-wide v4, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v2, v4

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->position()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    return-object v0
.end method

.method private parseMdia(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;
    .registers 7

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;-><init>()V

    :goto_5
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_56

    invoke-direct {p0, p1, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->untilBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;[I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object v1

    if-eqz v1, :cond_55

    iget v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->type:I

    const v3, 0x68646c72  # 4.3148E24f

    if-eq v2, v3, :cond_4b

    const v3, 0x6d646864

    if-eq v2, v3, :cond_2a

    const v3, 0x6d696e66

    if-eq v2, v3, :cond_23

    goto :goto_51

    :cond_23
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseMinf(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Minf;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;->minf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Minf;

    goto :goto_51

    :cond_2a
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readFullBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;->mdhd:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_3d

    const/4 v3, 0x4

    :cond_3d
    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;->mdhdTimeScale:I

    goto :goto_51

    :cond_4b
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseHdlr(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;->hdlr:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;

    :goto_51
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    goto :goto_5

    :cond_55
    return-object v0

    :array_56
    .array-data 4
        0x6d646864
        0x68646c72  # 4.3148E24f
        0x6d696e66
    .end array-data
.end method

.method private parseMfhd()I
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v0

    return v0
.end method

.method private parseMinf(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Minf;
    .registers 5

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Minf;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Minf;-><init>()V

    :goto_5
    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->untilAnyBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object v1

    if-eqz v1, :cond_29

    iget v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->type:I

    sparse-switch v2, :sswitch_data_2a

    goto :goto_25

    :sswitch_11
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseStbl(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Minf;->stblStsd:[B

    goto :goto_25

    :sswitch_18
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readFullBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Minf;->mhd:[B

    goto :goto_25

    :sswitch_1f
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readFullBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Minf;->dinf:[B

    :goto_25
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    goto :goto_5

    :cond_29
    return-object v0

    :sswitch_data_2a
    .sparse-switch
        0x64696e66 -> :sswitch_1f
        0x736d6864 -> :sswitch_18
        0x7374626c -> :sswitch_11
        0x766d6864 -> :sswitch_18
    .end sparse-switch
.end method

.method private parseMoof(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;
    .registers 7

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;-><init>()V

    const v1, 0x6d666864

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readBox(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object v1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseMfhd()I

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    :cond_12
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x74726166

    aput v3, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->untilBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;[I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-direct {p0, v1, p2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseTraf(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    iget-object v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    if-eqz v1, :cond_12

    :cond_2e
    return-object v0
.end method

.method private parseMoov(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moov;
    .registers 7

    const v0, 0x6d766864

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readBox(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moov;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moov;-><init>()V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseMvhd()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mvhd;

    move-result-object v2

    iput-object v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moov;->mvhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mvhd;

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moov;->mvhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mvhd;

    iget-wide v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mvhd;->nextTrackId:J

    long-to-int v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1f
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_5c

    invoke-direct {p0, p1, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->untilBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;[I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object v2

    if-eqz v2, :cond_4f

    iget v3, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->type:I

    const v4, 0x6d766578

    if-eq v3, v4, :cond_40

    const v4, 0x7472616b

    if-eq v3, v4, :cond_38

    goto :goto_4b

    :cond_38
    invoke-direct {p0, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseTrak(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_40
    iget-object v3, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moov;->mvhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mvhd;

    iget-wide v3, v3, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mvhd;->nextTrackId:J

    long-to-int v4, v3

    invoke-direct {p0, v2, v4}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseMvex(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;I)[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;

    move-result-object v3

    iput-object v3, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moov;->mvexTrex:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;

    :goto_4b
    invoke-direct {p0, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    goto :goto_1f

    :cond_4f
    const/4 p1, 0x0

    new-array p1, p1, [Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iput-object p1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moov;->trak:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    return-object v1

    nop

    :array_5c
    .array-data 4
        0x7472616b
        0x6d766578
    .end array-data
.end method

.method private parseMvex(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;I)[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_5
    const/4 p2, 0x1

    new-array p2, p2, [I

    const v1, 0x74726578

    const/4 v2, 0x0

    aput v1, p2, v2

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->untilBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;[I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object p2

    if-eqz p2, :cond_1f

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseTrex()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    goto :goto_5

    :cond_1f
    new-array p1, v2, [Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;

    return-object p1
.end method

.method private parseMvhd()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mvhd;
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->read()I

    move-result v0

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    if-nez v0, :cond_13

    const/4 v2, 0x4

    goto :goto_15

    :cond_13
    const/16 v2, 0x8

    :goto_15
    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    new-instance v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mvhd;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mvhd;-><init>()V

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/DataReader;->readUnsignedInt()J

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    if-nez v0, :cond_2c

    const-wide/16 v3, 0x4

    goto :goto_2e

    :cond_2c
    const-wide/16 v3, 0x8

    :goto_2e
    invoke-virtual {v2, v3, v4}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    const-wide/16 v2, 0x4c

    invoke-virtual {v0, v2, v3}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->readUnsignedInt()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mvhd;->nextTrackId:J

    return-object v1
.end method

.method private parseStbl(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)[B
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x73747364

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->untilBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;[I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object p1

    if-nez p1, :cond_12

    new-array p1, v2, [B

    return-object p1

    :cond_12
    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readFullBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)[B

    move-result-object p1

    return-object p1
.end method

.method private parseTfdt()J
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->read()I

    move-result v0

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_1c

    :cond_16
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->readLong()J

    move-result-wide v0

    :goto_1c
    return-wide v0
.end method

.method private parseTfhd(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;
    .registers 5

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;-><init>()V

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->bFlags:I

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->trackId:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1c

    if-eq v1, p1, :cond_1c

    const/4 p1, 0x0

    return-object p1

    :cond_1c
    iget p1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    const-wide/16 v1, 0x8

    invoke-virtual {p1, v1, v2}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    :cond_2c
    iget p1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    :cond_3c
    iget p1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result p1

    iput p1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    :cond_4e
    iget p1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result p1

    iput p1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->defaultSampleSize:I

    :cond_60
    iget p1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v1, 0x20

    invoke-static {p1, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result p1

    iput p1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->defaultSampleFlags:I

    :cond_72
    return-object v0
.end method

.method private parseTkhd()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->read()I

    move-result v0

    new-instance v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;-><init>()V

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    if-nez v0, :cond_11

    const/4 v3, 0x4

    goto :goto_13

    :cond_11
    const/16 v3, 0x8

    :goto_13
    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v2

    iput v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->trackId:I

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    const-wide/16 v3, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_39

    :cond_33
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->readLong()J

    move-result-wide v2

    :goto_39
    iput-wide v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->duration:J

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->readShort()S

    move-result v0

    iput-short v0, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->bLayer:S

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->readShort()S

    move-result v0

    iput-short v0, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->bAlternateGroup:S

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->readShort()S

    move-result v0

    iput-short v0, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->bVolume:S

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    const/16 v0, 0x24

    new-array v0, v0, [B

    iput-object v0, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->matrix:[B

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v2, v0}, Lcom/gold/youtube/om7753/streams/DataReader;->read([B)I

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v0

    iput v0, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->bWidth:I

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v0

    iput v0, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->bHeight:I

    return-object v1
.end method

.method private parseTraf(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;
    .registers 5

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;-><init>()V

    const v1, 0x74666864

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readBox(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseTfhd(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;

    move-result-object p2

    iput-object p2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->tfhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    iget-object p2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->tfhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;

    if-nez p2, :cond_1b

    const/4 p1, 0x0

    return-object p1

    :cond_1b
    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_44

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->untilBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;[I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object p1

    iget p2, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->type:I

    const v1, 0x74666474

    if-ne p2, v1, :cond_39

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseTfdt()J

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    const p1, 0x7472756e

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readBox(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object p1

    :cond_39
    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseTrun()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    move-result-object p2

    iput-object p2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    return-object v0

    nop

    :array_44
    .array-data 4
        0x7472756e
        0x74666474
    .end array-data
.end method

.method private parseTrak(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;
    .registers 6

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;-><init>()V

    const v1, 0x746b6864

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readBox(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object v1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseTkhd()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->tkhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    :goto_15
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_40

    invoke-direct {p0, p1, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->untilBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;[I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->type:I

    const v3, 0x65647473

    if-eq v2, v3, :cond_35

    const v3, 0x6d646961

    if-eq v2, v3, :cond_2e

    goto :goto_3b

    :cond_2e
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseMdia(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->mdia:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;

    goto :goto_3b

    :cond_35
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseEdts(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Elst;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->edstElst:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Elst;

    :goto_3b
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    goto :goto_15

    :cond_3f
    return-object v0

    :array_40
    .array-data 4
        0x6d646961
        0x65647473
    .end array-data
.end method

.method private parseTrex()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;-><init>()V

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;->access$002(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;I)I

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    return-object v0
.end method

.method private parseTrun()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;
    .registers 9

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;-><init>()V

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entryCount:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entriesRowSize:I

    iget v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    const/4 v4, 0x4

    if-eqz v2, :cond_28

    iget v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entriesRowSize:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entriesRowSize:I

    :cond_28
    iget v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v5, 0x200

    invoke-static {v2, v5}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_37

    iget v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entriesRowSize:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entriesRowSize:I

    :cond_37
    iget v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v6, 0x400

    invoke-static {v2, v6}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_46

    iget v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entriesRowSize:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entriesRowSize:I

    :cond_46
    iget v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v6, 0x800

    invoke-static {v2, v6}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_55

    iget v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entriesRowSize:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entriesRowSize:I

    :cond_55
    iget v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entriesRowSize:I

    iget v7, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entryCount:I

    mul-int v2, v2, v7

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bEntries:[B

    iget v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_70

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v2

    iput v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->dataOffset:I

    :cond_70
    iget v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v2, v4}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v2

    iput v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFirstSampleFlags:I

    :cond_80
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    iget-object v4, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bEntries:[B

    invoke-virtual {v2, v4}, Lcom/gold/youtube/om7753/streams/DataReader;->read([B)I

    :goto_87
    iget v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entryCount:I

    if-ge v1, v2, :cond_c7

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->getEntry(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;

    move-result-object v2

    iget v4, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v4, v3}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v4

    if-eqz v4, :cond_9e

    iget v4, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->chunkDuration:I

    iget v7, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->chunkDuration:I

    :cond_9e
    iget v4, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v4, v5}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v4

    if-eqz v4, :cond_ad

    iget v4, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->chunkSize:I

    iget v7, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->chunkSize:I

    :cond_ad
    iget v4, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v4, v6}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v4

    if-eqz v4, :cond_c4

    iget v4, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v4, v3}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v4

    if-nez v4, :cond_c4

    iget v4, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->chunkDuration:I

    iget v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->chunkDuration:I

    :cond_c4
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    :cond_c7
    return-object v0
.end method

.method private readBox()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;
    .registers 7

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;-><init>()V

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->position()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->offset:J

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readUnsignedInt()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->size:J

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->type:I

    iget-wide v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->size:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_2d

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->size:J

    :cond_2d
    return-object v0
.end method

.method private readBox(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;
    .registers 6

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readBox()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object v0

    iget v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->type:I

    if-ne v1, p1, :cond_9

    return-object v0

    :cond_9
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->boxName(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readFullBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)[B
    .registers 7

    iget-wide v0, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->size:J

    long-to-int v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v2, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->type:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Lcom/gold/youtube/om7753/streams/DataReader;->read([BII)I

    move-result v2

    if-ne v2, v1, :cond_23

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :cond_23
    new-instance v0, Ljava/io/EOFException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->type:I

    invoke-direct {p0, v3}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->offset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "EOF reached in box: type=%s offset=%s size=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private untilAnyBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;
    .registers 8

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->position()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->offset:J

    iget-wide v4, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_11

    const/4 p1, 0x0

    return-object p1

    :cond_11
    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readBox()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object p1

    return-object p1
.end method

.method private varargs untilBox(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;[I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;
    .registers 9

    :goto_0
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->position()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->offset:J

    iget-wide v4, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_25

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readBox()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_21

    aget v3, p2, v2

    iget v4, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->type:I

    if-ne v4, v3, :cond_1e

    return-object v0

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_21
    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    goto :goto_0

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getBrands()[I
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->brands:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextChunk(Z)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;
    .registers 12

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    iget v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->selectedTrack:I

    aget-object v0, v0, v1

    :cond_6
    :goto_6
    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->available()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12c

    iget-boolean v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->chunkZero:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->box:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->available()Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_12c

    :cond_23
    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readBox()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->box:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    goto :goto_2c

    :cond_2a
    iput-boolean v3, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->chunkZero:Z

    :goto_2c
    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->box:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    iget v4, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->type:I

    const v5, 0x6d646174

    if-eq v4, v5, :cond_ee

    const v2, 0x6d6f6f66

    if-eq v4, v2, :cond_3b

    goto :goto_6

    :cond_3b
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    if-nez v2, :cond_e6

    iget-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->tkhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    iget v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->trackId:I

    invoke-direct {p0, v1, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseMoof(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v1, v3}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    const-wide/16 v4, 0x8

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    iget v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->dataOffset:I

    int-to-long v6, v2

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->box:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    iget-wide v8, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v8, v4

    sub-long/2addr v6, v8

    long-to-int v2, v6

    iput v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->dataOffset:I

    if-ltz v2, :cond_70

    goto :goto_79

    :cond_70
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "trun box has wrong data offset, points outside of concurrent mdat box"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_79
    :goto_79
    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    iget v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->chunkSize:I

    if-ge v2, v3, :cond_ae

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->tfhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_a0

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->tfhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->defaultSampleSize:I

    iget v3, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entryCount:I

    mul-int v1, v1, v3

    iput v1, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->chunkSize:I

    goto :goto_ae

    :cond_a0
    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->box:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    iget-wide v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->size:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    iput v3, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->chunkSize:I

    :cond_ae
    :goto_ae
    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x900

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    iget v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->chunkDuration:I

    if-nez v2, :cond_6

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->tfhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->tfhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    iget v3, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entryCount:I

    mul-int v1, v1, v3

    iput v1, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->chunkDuration:I

    goto/16 :goto_6

    :cond_e6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "moof found without mdat"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ee
    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    if-eqz v1, :cond_124

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    if-nez v1, :cond_fa

    iput-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    goto/16 :goto_6

    :cond_fa
    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;-><init>()V

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iput-object v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    if-nez p1, :cond_113

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->chunkSize:I

    invoke-virtual {p1, v1}, Lcom/gold/youtube/om7753/streams/DataReader;->getView(I)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->data:Ljava/io/InputStream;

    :cond_113
    iput-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    iget-object v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->dataOffset:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    return-object v0

    :cond_124
    new-instance p1, Ljava/io/IOException;

    const-string v0, "mdat found without moof"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12c
    :goto_12c
    return-object v2
.end method

.method public parse()V
    .registers 10

    iget v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->selectedTrack:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_6

    return-void

    :cond_6
    const v0, 0x66747970

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readBox(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->box:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseFtyp(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->brands:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x64617368

    if-eq v0, v2, :cond_42

    const v2, 0x69736f35

    if-ne v0, v2, :cond_23

    goto :goto_42

    :cond_23
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a MPEG-4 DASH container, major brand is not \'dash\' or \'iso5\' is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->brands:[I

    aget v1, v3, v1

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    :goto_42
    const/4 v0, 0x0

    :goto_43
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->box:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    iget v3, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->type:I

    const v4, 0x6d6f6f66

    if-eq v3, v4, :cond_62

    invoke-direct {p0, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->ensure(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->readBox()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    move-result-object v2

    iput-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->box:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    iget v3, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->type:I

    const v4, 0x6d6f6f76

    if-eq v3, v4, :cond_5d

    goto :goto_43

    :cond_5d
    invoke-direct {p0, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parseMoov(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moov;

    move-result-object v0

    goto :goto_43

    :cond_62
    if-eqz v0, :cond_e9

    iget-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moov;->trak:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    array-length v2, v2

    new-array v2, v2, [Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    iput-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    const/4 v2, 0x0

    :goto_6c
    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    array-length v4, v3

    if-ge v2, v4, :cond_e4

    new-instance v4, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    invoke-direct {v4}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;-><init>()V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moov;->trak:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    aget-object v4, v4, v2

    iput-object v4, v3, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v3, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moov;->mvexTrex:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;

    if-eqz v3, :cond_a5

    array-length v4, v3

    const/4 v5, 0x0

    :goto_88
    if-ge v5, v4, :cond_a5

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v7, v7, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->tkhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    iget v7, v7, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->trackId:I

    invoke-static {v6}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;->access$000(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;)I

    move-result v8

    if-ne v7, v8, :cond_a2

    iget-object v7, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v7, v7, v2

    iput-object v6, v7, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trex:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trex;

    :cond_a2
    add-int/lit8 v5, v5, 0x1

    goto :goto_88

    :cond_a5
    iget-object v3, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moov;->trak:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->mdia:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;

    iget-object v3, v3, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;->hdlr:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;

    iget v3, v3, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;->subType:I

    const v4, 0x736f756e

    if-eq v3, v4, :cond_d9

    const v4, 0x73756274

    if-eq v3, v4, :cond_d0

    const v4, 0x76696465

    if-eq v3, v4, :cond_c7

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    sget-object v4, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;->Other:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    iput-object v4, v3, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->kind:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    goto :goto_e1

    :cond_c7
    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    sget-object v4, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;->Video:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    iput-object v4, v3, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->kind:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    goto :goto_e1

    :cond_d0
    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    sget-object v4, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;->Subtitles:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    iput-object v4, v3, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->kind:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    goto :goto_e1

    :cond_d9
    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    sget-object v4, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;->Audio:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    iput-object v4, v3, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->kind:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    :goto_e1
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_e4
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->box:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->backupBox:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    return-void

    :cond_e9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The provided Mp4 doesn\'t have the \'moov\' box"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_f2

    :goto_f1
    throw v0

    :goto_f2
    goto :goto_f1
.end method

.method public rewind()V
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->canRewind()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->box:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->backupBox:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->box:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->chunkZero:Z

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->rewind()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->backupBox:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;

    iget-wide v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Box;->offset:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    return-void

    :cond_26
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The provided stream doesn\'t allow seek"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectTrack(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;
    .registers 3

    iput p1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->selectedTrack:I

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object p1, v0, p1

    return-object p1
.end method
