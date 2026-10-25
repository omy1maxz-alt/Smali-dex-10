.class public Lcom/gold/youtube/om7753/streams/WebMReader;
.super Ljava/lang/Object;
.source "WebMReader.java"


# instance fields
.field private done:Z

.field private firstSegment:Z

.field private segment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

.field private selectedTrack:I

.field private final stream:Lcom/gold/youtube/om7753/streams/DataReader;

.field private tracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-direct {v0, p1}, Lcom/gold/youtube/om7753/streams/DataReader;-><init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    return-void
.end method

.method static synthetic access$1000(Lcom/gold/youtube/om7753/streams/WebMReader;)[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->tracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/gold/youtube/om7753/streams/WebMReader;)I
    .registers 1

    iget p0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->selectedTrack:I

    return p0
.end method

.method static synthetic access$200(Lcom/gold/youtube/om7753/streams/WebMReader;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->done:Z

    return p0
.end method

.method static synthetic access$300(Lcom/gold/youtube/om7753/streams/WebMReader;)Lcom/gold/youtube/om7753/streams/WebMReader$Segment;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->segment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/WebMReader;->readCluster(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/WebMReader;->ensure(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    return-void
.end method

.method static synthetic access$600(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/streams/WebMReader;->untilElement(Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/gold/youtube/om7753/streams/WebMReader;)Lcom/gold/youtube/om7753/streams/DataReader;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    return-object p0
.end method

.method static synthetic access$900(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/WebMReader;->readSimpleBlock(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    move-result-object p0

    return-object p0
.end method

.method private elementID(J)Ljava/lang/String;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0x"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ensure(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V
    .registers 7

    iget-wide v0, p1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->offset:J

    iget-wide v2, p1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->size:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/DataReader;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    return-void

    :cond_13
    cmp-long v4, v0, v2

    if-ltz v4, :cond_1d

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {p1, v0, v1}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    return-void

    :cond_1d
    new-instance v0, Ljava/io/EOFException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->type:I

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/gold/youtube/om7753/streams/WebMReader;->elementID(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->offset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x3

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/DataReader;->position()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "parser go beyond limits of the Element. type=%s offset=%s size=%s position=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readBlob(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)[B
    .registers 7

    iget-wide v0, p1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->contentSize:J

    long-to-int p1, v0

    new-array p1, p1, [B

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v2, p1}, Lcom/gold/youtube/om7753/streams/DataReader;->read([B)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_11

    return-object p1

    :cond_11
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private readCluster(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;
    .registers 6

    new-instance v0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    invoke-direct {v0, p0, p1}, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;-><init>(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x67

    aput v3, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->untilElement(Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->readNumber(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->timecode:J

    return-object v0

    :cond_1a
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cluster at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->offset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " without Timecode element"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readEbml(Lcom/gold/youtube/om7753/streams/WebMReader$Element;II)Z
    .registers 10

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x2f7

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-direct {p0, p1, v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->untilElement(Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v1

    if-nez v1, :cond_f

    return v3

    :cond_f
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->readNumber(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)J

    move-result-wide v1

    int-to-long v4, p2

    cmp-long p2, v1, v4

    if-lez p2, :cond_19

    return v3

    :cond_19
    new-array p2, v0, [I

    const/16 v1, 0x282

    aput v1, p2, v3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/streams/WebMReader;->untilElement(Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object p2

    if-nez p2, :cond_26

    return v3

    :cond_26
    invoke-direct {p0, p2}, Lcom/gold/youtube/om7753/streams/WebMReader;->readString(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "webm"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_34

    return v3

    :cond_34
    new-array p2, v0, [I

    const/16 v1, 0x285

    aput v1, p2, v3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/streams/WebMReader;->untilElement(Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object p1

    if-eqz p1, :cond_4a

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/WebMReader;->readNumber(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)J

    move-result-wide p1

    int-to-long v1, p3

    cmp-long p3, p1, v1

    if-gtz p3, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    return v0
.end method

.method private readElement()Lcom/gold/youtube/om7753/streams/WebMReader$Element;
    .registers 6

    new-instance v0, Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/WebMReader$Element;-><init>()V

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->position()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->offset:J

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/WebMReader;->readEncodedNumber()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->type:I

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/WebMReader;->readEncodedNumber()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->contentSize:J

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/streams/DataReader;->position()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->offset:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->size:J

    return-object v0
.end method

.method private readElement(I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;
    .registers 7

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/WebMReader;->readElement()Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v0

    if-eqz p1, :cond_36

    iget v1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->type:I

    if-ne v1, p1, :cond_b

    goto :goto_36

    :cond_b
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p1

    invoke-direct {p0, v3, v4}, Lcom/gold/youtube/om7753/streams/WebMReader;->elementID(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->type:I

    int-to-long v3, p1

    invoke-direct {p0, v3, v4}, Lcom/gold/youtube/om7753/streams/WebMReader;->elementID(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    :goto_36
    return-object v0
.end method

.method private readEncodedNumber()J
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->read()I

    move-result v0

    if-lez v0, :cond_30

    const/16 v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_c
    const/16 v4, 0x9

    if-ge v3, v4, :cond_30

    and-int v4, v0, v1

    if-ne v4, v1, :cond_2a

    const/16 v1, 0xff

    shr-int/2addr v1, v3

    and-int/2addr v0, v1

    int-to-long v0, v0

    :goto_19
    if-ge v2, v3, :cond_29

    iget-object v4, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v4}, Lcom/gold/youtube/om7753/streams/DataReader;->read()I

    move-result v4

    const/16 v5, 0x8

    shl-long/2addr v0, v5

    int-to-long v4, v4

    or-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_29
    return-wide v0

    :cond_2a
    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_c

    :cond_30
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoded length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_39

    :goto_38
    throw v0

    :goto_39
    goto :goto_38
.end method

.method private readInfo(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Lcom/gold/youtube/om7753/streams/WebMReader$Info;
    .registers 7

    new-instance v0, Lcom/gold/youtube/om7753/streams/WebMReader$Info;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/WebMReader$Info;-><init>()V

    :goto_5
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_3e

    invoke-direct {p0, p1, v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->untilElement(Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget v2, v1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->type:I

    const/16 v3, 0x489

    if-eq v2, v3, :cond_24

    const v3, 0xad7b1

    if-eq v2, v3, :cond_1d

    goto :goto_27

    :cond_1d
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->readNumber(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Info;->timecodeScale:J

    goto :goto_27

    :cond_24
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->readNumber(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)J

    :goto_27
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->ensure(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    goto :goto_5

    :cond_2b
    iget-wide v1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Info;->timecodeScale:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_34

    return-object v0

    :cond_34
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Element Timecode not found"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    goto :goto_3d

    :goto_3c
    throw p1

    :goto_3d
    goto :goto_3c

    :array_3e
    .array-data 4
        0xad7b1
        0x489
    .end array-data
.end method

.method private readNumber(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)J
    .registers 7

    iget-wide v0, p1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->contentSize:J

    long-to-int p1, v0

    const-wide/16 v0, 0x0

    :goto_5
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_1f

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/DataReader;->read()I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_19

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    int-to-long v3, p1

    or-long/2addr v0, v3

    move p1, v2

    goto :goto_5

    :cond_19
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1f
    return-wide v0
.end method

.method private readSegment(Lcom/gold/youtube/om7753/streams/WebMReader$Element;IZ)Lcom/gold/youtube/om7753/streams/WebMReader$Segment;
    .registers 8

    new-instance v0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    invoke-direct {v0, p0, p1}, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;-><init>(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    :goto_5
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_5e

    invoke-direct {p0, p1, v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->untilElement(Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v1

    if-eqz v1, :cond_38

    iget v2, v1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->type:I

    const v3, 0xf43b675

    if-ne v2, v3, :cond_1c

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->access$102(Lcom/gold/youtube/om7753/streams/WebMReader$Segment;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    goto :goto_38

    :cond_1c
    const v3, 0x549a966

    if-eq v2, v3, :cond_2e

    const v3, 0x654ae6b  # 4.000091E-35f

    if-eq v2, v3, :cond_27

    goto :goto_34

    :cond_27
    invoke-direct {p0, v1, p2}, Lcom/gold/youtube/om7753/streams/WebMReader;->readTracks(Lcom/gold/youtube/om7753/streams/WebMReader$Element;I)[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->tracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    goto :goto_34

    :cond_2e
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->readInfo(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Lcom/gold/youtube/om7753/streams/WebMReader$Info;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->info:Lcom/gold/youtube/om7753/streams/WebMReader$Info;

    :goto_34
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->ensure(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    goto :goto_5

    :cond_38
    :goto_38
    if-eqz p3, :cond_5c

    iget-object p2, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->info:Lcom/gold/youtube/om7753/streams/WebMReader$Info;

    if-eqz p2, :cond_43

    iget-object p2, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->tracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    if-eqz p2, :cond_43

    goto :goto_5c

    :cond_43
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cluster element found without Info and/or Tracks element at position "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->offset:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5c
    :goto_5c
    return-object v0

    nop

    :array_5e
    .array-data 4
        0x549a966
        0x654ae6b  # 4.000091E-35f
        0xf43b675
    .end array-data
.end method

.method private readSimpleBlock(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;
    .registers 7

    new-instance v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    invoke-direct {v0, p1}, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;-><init>(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/WebMReader;->readEncodedNumber()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->trackNumber:J

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->relativeTimeCode:S

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->read()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->flags:B

    iget-wide v1, p1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->offset:J

    iget-wide v3, p1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->size:J

    add-long/2addr v1, v3

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/DataReader;->position()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int p1, v1

    iput p1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->dataSize:I

    if-ltz p1, :cond_2e

    return-object v0

    :cond_2e
    new-instance p1, Ljava/io/IOException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v0, v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->dataSize:I

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Unexpected SimpleBlock element size, missing %s bytes"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readString(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/WebMReader;->readBlob(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private readTracks(Lcom/gold/youtube/om7753/streams/WebMReader$Element;I)[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;
    .registers 15

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_6
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x2e

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-direct {p0, p1, v3}, Lcom/gold/youtube/om7753/streams/WebMReader;->untilElement(Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v3

    if-eqz v3, :cond_9f

    new-instance v4, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    invoke-direct {v4}, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;-><init>()V

    const/4 v6, 0x0

    :goto_1a
    new-array v7, v5, [I

    invoke-direct {p0, v3, v7}, Lcom/gold/youtube/om7753/streams/WebMReader;->untilElement(Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v7

    if-eqz v7, :cond_95

    iget v8, v7, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->type:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_8a

    const/4 v9, 0x6

    if-eq v8, v9, :cond_83

    const/16 v9, 0x1c

    if-eq v8, v9, :cond_76

    const/16 v9, 0x57

    if-eq v8, v9, :cond_6f

    const/16 v9, 0x16aa

    if-eq v8, v9, :cond_68

    const/16 v9, 0x16bb

    if-eq v8, v9, :cond_61

    const/16 v9, 0x23a2

    if-eq v8, v9, :cond_5a

    const v9, 0x3e383

    if-eq v8, v9, :cond_53

    const/16 v9, 0x60

    if-eq v8, v9, :cond_4c

    const/16 v9, 0x61

    if-eq v8, v9, :cond_4c

    goto :goto_91

    :cond_4c
    invoke-direct {p0, v7}, Lcom/gold/youtube/om7753/streams/WebMReader;->readBlob(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)[B

    move-result-object v8

    iput-object v8, v4, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->bMetadata:[B

    goto :goto_91

    :cond_53
    invoke-direct {p0, v7}, Lcom/gold/youtube/om7753/streams/WebMReader;->readNumber(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->defaultDuration:J

    goto :goto_91

    :cond_5a
    invoke-direct {p0, v7}, Lcom/gold/youtube/om7753/streams/WebMReader;->readBlob(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)[B

    move-result-object v8

    iput-object v8, v4, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecPrivate:[B

    goto :goto_91

    :cond_61
    invoke-direct {p0, v7}, Lcom/gold/youtube/om7753/streams/WebMReader;->readNumber(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->seekPreRoll:J

    goto :goto_91

    :cond_68
    invoke-direct {p0, v7}, Lcom/gold/youtube/om7753/streams/WebMReader;->readNumber(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecDelay:J

    goto :goto_91

    :cond_6f
    invoke-direct {p0, v7}, Lcom/gold/youtube/om7753/streams/WebMReader;->readNumber(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->trackNumber:J

    goto :goto_91

    :cond_76
    invoke-direct {p0, v7}, Lcom/gold/youtube/om7753/streams/WebMReader;->readNumber(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)J

    move-result-wide v8

    int-to-long v10, p2

    cmp-long v6, v8, v10

    if-eqz v6, :cond_81

    const/4 v6, 0x1

    goto :goto_91

    :cond_81
    const/4 v6, 0x0

    goto :goto_91

    :cond_83
    invoke-direct {p0, v7}, Lcom/gold/youtube/om7753/streams/WebMReader;->readString(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    goto :goto_91

    :cond_8a
    invoke-direct {p0, v7}, Lcom/gold/youtube/om7753/streams/WebMReader;->readNumber(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)J

    move-result-wide v8

    long-to-int v9, v8

    iput v9, v4, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->trackType:I

    :goto_91
    invoke-direct {p0, v7}, Lcom/gold/youtube/om7753/streams/WebMReader;->ensure(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    goto :goto_1a

    :cond_95
    if-nez v6, :cond_9a

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9a
    invoke-direct {p0, v3}, Lcom/gold/youtube/om7753/streams/WebMReader;->ensure(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    goto/16 :goto_6

    :cond_9f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p2, p1, [Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_a8
    if-ge v5, p1, :cond_c3

    aget-object v0, p2, v5

    iget v3, v0, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->trackType:I

    if-eq v3, v2, :cond_bc

    if-eq v3, v1, :cond_b7

    sget-object v3, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;->Other:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    iput-object v3, v0, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->kind:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    goto :goto_c0

    :cond_b7
    sget-object v3, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;->Audio:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    iput-object v3, v0, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->kind:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    goto :goto_c0

    :cond_bc
    sget-object v3, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;->Video:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    iput-object v3, v0, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->kind:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    :goto_c0
    add-int/lit8 v5, v5, 0x1

    goto :goto_a8

    :cond_c3
    return-object p2
.end method

.method private varargs untilElement(Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;
    .registers 9

    :goto_0
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->stream:Lcom/gold/youtube/om7753/streams/DataReader;

    if-nez p1, :cond_b

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->available()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_18

    :cond_b
    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->position()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->offset:J

    iget-wide v4, p1, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->size:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_33

    :goto_18
    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/WebMReader;->readElement()Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_21

    return-object v0

    :cond_21
    array-length v1, p2

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_2f

    aget v3, p2, v2

    iget v4, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->type:I

    if-ne v4, v3, :cond_2c

    return-object v0

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_2f
    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->ensure(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    goto :goto_0

    :cond_33
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getAvailableTracks()[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->tracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    return-object v0
.end method

.method public getNextSegment()Lcom/gold/youtube/om7753/streams/WebMReader$Segment;
    .registers 6

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->firstSegment:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->segment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    if-eqz v0, :cond_12

    iput-boolean v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->firstSegment:Z

    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->segment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->access$000(Lcom/gold/youtube/om7753/streams/WebMReader$Segment;)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->ensure(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    const/4 v0, 0x1

    new-array v3, v0, [I

    const v4, 0x8538067

    aput v4, v3, v2

    invoke-direct {p0, v1, v3}, Lcom/gold/youtube/om7753/streams/WebMReader;->untilElement(Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v3

    if-nez v3, :cond_2c

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->done:Z

    return-object v1

    :cond_2c
    invoke-direct {p0, v3, v2, v2}, Lcom/gold/youtube/om7753/streams/WebMReader;->readSegment(Lcom/gold/youtube/om7753/streams/WebMReader$Element;IZ)Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->segment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    return-object v0
.end method

.method public parse()V
    .registers 6

    const v0, 0xa45dfa3

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->readElement(I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/gold/youtube/om7753/streams/WebMReader;->readEbml(Lcom/gold/youtube/om7753/streams/WebMReader$Element;II)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->ensure(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    const/4 v0, 0x0

    new-array v2, v1, [I

    const v3, 0x8538067

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-direct {p0, v0, v2}, Lcom/gold/youtube/om7753/streams/WebMReader;->untilElement(Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-direct {p0, v0, v4, v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->readSegment(Lcom/gold/youtube/om7753/streams/WebMReader$Element;IZ)Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->segment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    iget-object v0, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->tracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->tracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    const/4 v0, -0x1

    iput v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->selectedTrack:I

    iput-boolean v4, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->done:Z

    iput-boolean v1, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->firstSegment:Z

    return-void

    :cond_33
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fragment element not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported EBML data (WebM)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectTrack(I)Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;
    .registers 3

    iput p1, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->selectedTrack:I

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader;->tracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    aget-object p1, v0, p1

    return-object p1
.end method
