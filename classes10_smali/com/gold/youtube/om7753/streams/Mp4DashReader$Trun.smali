.class public Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# instance fields
.field bEntries:[B

.field bFirstSampleFlags:I

.field public bFlags:I

.field public chunkDuration:I

.field public chunkSize:I

.field dataOffset:I

.field entriesRowSize:I

.field public entryCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbsoluteEntry(ILcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;
    .registers 7

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->getEntry(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;

    move-result-object v0

    iget v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_1c

    iget v1, p2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v3, 0x20

    invoke-static {v1, v3}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, p2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->defaultSampleFlags:I

    iput v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    :cond_1c
    iget v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v3, 0x200

    invoke-static {v1, v3}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_34

    iget v1, p2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_34

    iget v1, p2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->defaultSampleSize:I

    iput v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    :cond_34
    iget v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_4a

    iget v1, p2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget p2, p2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    iput p2, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    :cond_4a
    if-nez p1, :cond_59

    iget p1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_59

    iget p1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFirstSampleFlags:I

    iput p1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    :cond_59
    return-object v0
.end method

.method public getEntry(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bEntries:[B

    iget v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->entriesRowSize:I

    mul-int p1, p1, v1

    invoke-static {v0, p1, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;-><init>()V

    iget v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    :cond_1f
    iget v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    :cond_2f
    iget v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    :cond_3f
    iget v1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    :cond_4f
    iget p1, p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {p1, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    iput-boolean p1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->hasCompositionTimeOffset:Z

    iget p1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    const/high16 v1, 0x10000

    invoke-static {p1, v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->isKeyframe:Z

    return-object v0
.end method
