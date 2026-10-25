.class public final Lcom/gold/youtube/om7753/extractor/stream/VideoStream;
.super Lcom/gold/youtube/om7753/extractor/stream/Stream;
.source "VideoStream.java"


# static fields
.field public static final RESOLUTION_UNKNOWN:Ljava/lang/String; = ""


# instance fields
.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private fps:I

.field private height:I

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field public final isVideoOnly:Z

.field private itag:I

.field private itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

.field private quality:Ljava/lang/String;

.field public final resolution:Ljava/lang/String;

.field private width:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;)V
    .registers 18

    move-object/from16 v0, p9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/gold/youtube/om7753/extractor/stream/Stream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;Ljava/lang/String;)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->itag:I

    if-eqz v0, :cond_54

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    iget v2, v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->id:I

    iput v2, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->itag:I

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getBitrate()I

    move-result v2

    iput v2, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->bitrate:I

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getInitStart()I

    move-result v2

    iput v2, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->initStart:I

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getInitEnd()I

    move-result v2

    iput v2, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->initEnd:I

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getIndexStart()I

    move-result v2

    iput v2, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->indexStart:I

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getIndexEnd()I

    move-result v2

    iput v2, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->indexEnd:I

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getCodec()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->codec:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->height:I

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->width:I

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getQuality()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->quality:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getFps()I

    move-result v2

    iput v2, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->fps:I

    :cond_54
    iput-object p6, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->isVideoOnly:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;Lcom/gold/youtube/om7753/extractor/stream/VideoStream-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;)V

    return-void
.end method


# virtual methods
.method public equalStats(Lcom/gold/youtube/om7753/extractor/stream/Stream;)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->equalStats(Lcom/gold/youtube/om7753/extractor/stream/Stream;)Z

    move-result v0

    if-eqz v0, :cond_22

    instance-of v0, p1, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->isVideoOnly:Z

    move-object v1, p1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    iget-boolean v1, v1, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->isVideoOnly:Z

    if-ne v0, v1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public getBitrate()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->bitrate:I

    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public getFps()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->fps:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->height:I

    return v0
.end method

.method public getIndexEnd()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->indexEnd:I

    return v0
.end method

.method public getIndexStart()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->indexStart:I

    return v0
.end method

.method public getInitEnd()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->initEnd:I

    return v0
.end method

.method public getInitStart()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->initStart:I

    return v0
.end method

.method public getItag()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->itag:I

    return v0
.end method

.method public getItagItem()Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->quality:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->width:I

    return v0
.end method

.method public isVideoOnly()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->isVideoOnly:Z

    return v0
.end method
