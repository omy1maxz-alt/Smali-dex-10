.class public Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;
.super Ljava/lang/Object;
.source "SecondaryStreamHelper.java"


# instance fields
.field private final position:I

.field private final streams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;Lcom/gold/youtube/om7753/extractor/stream/Stream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;->streams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;->position:I

    if-ltz p1, :cond_12

    return-void

    :cond_12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "selected stream not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getAudioStreamFor(Ljava/util/List;Lcom/gold/youtube/om7753/extractor/stream/VideoStream;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream;
    .registers 8

    sget-object v0, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper$1;->$SwitchMap$com$gold$youtube$extractor$MediaFormat:[I

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    const/4 v3, 0x2

    if-eq v0, v3, :cond_14

    return-object v1

    :cond_14
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object p1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v4

    if-eqz p1, :cond_38

    sget-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->M4A:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    goto :goto_3a

    :cond_38
    sget-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    :goto_3a
    if-ne v4, v5, :cond_23

    return-object v3

    :cond_3d
    if-eqz p1, :cond_40

    return-object v1

    :cond_40
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_45
    if-ltz p1, :cond_59

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v2

    sget-object v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA_OPUS:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    if-ne v2, v3, :cond_56

    return-object v0

    :cond_56
    add-int/lit8 p1, p1, -0x1

    goto :goto_45

    :cond_59
    return-object v1
.end method


# virtual methods
.method public getSizeInBytes()J
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;->streams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    iget v1, p0, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;->position:I

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getSizeInBytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStream()Lcom/gold/youtube/om7753/extractor/stream/Stream;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;->streams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/stream/Stream;

    return-object v0
.end method
