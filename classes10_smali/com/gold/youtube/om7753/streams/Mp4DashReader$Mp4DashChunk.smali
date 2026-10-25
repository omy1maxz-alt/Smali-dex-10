.class public Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# instance fields
.field public data:Ljava/io/InputStream;

.field private i:I

.field public moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->i:I

    return-void
.end method


# virtual methods
.method public getNextSample()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->data:Ljava/io/InputStream;

    if-eqz v0, :cond_46

    iget v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->i:I

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entryCount:I

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;-><init>()V

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    iget v3, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->i:I

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->tfhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;

    invoke-virtual {v2, v3, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->getAbsoluteEntry(ILcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;

    move-result-object v1

    iput-object v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;->info:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;->data:[B

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->data:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iget-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;->info:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;

    iget v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    if-ne v1, v2, :cond_3e

    return-object v0

    :cond_3e
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF reached while reading a sample"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This chunk has info only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextSampleInfo()Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;
    .registers 5

    iget v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->i:I

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    iget v3, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entryCount:I

    if-lt v0, v3, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->i:I

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->tfhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;

    invoke-virtual {v2, v0, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->getAbsoluteEntry(ILcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;

    move-result-object v0

    return-object v0
.end method
