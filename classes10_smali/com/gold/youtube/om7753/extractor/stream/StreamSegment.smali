.class public Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;
.super Ljava/lang/Object;
.source "StreamSegment.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private channelName:Ljava/lang/String;

.field private previewUrl:Ljava/lang/String;

.field private startTimeSeconds:I

.field private title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->previewUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->title:Ljava/lang/String;

    iput p2, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->startTimeSeconds:I

    return-void
.end method


# virtual methods
.method public getChannelName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeSeconds()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->startTimeSeconds:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->channelName:Ljava/lang/String;

    return-void
.end method

.method public setPreviewUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->previewUrl:Ljava/lang/String;

    return-void
.end method

.method public setStartTimeSeconds(I)V
    .registers 2

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->startTimeSeconds:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->url:Ljava/lang/String;

    return-void
.end method
