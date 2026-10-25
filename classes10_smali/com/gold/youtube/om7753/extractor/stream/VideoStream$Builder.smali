.class public final Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;
.super Ljava/lang/Object;
.source "VideoStream.java"


# instance fields
.field private content:Ljava/lang/String;

.field private deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

.field private id:Ljava/lang/String;

.field private isUrl:Z

.field private isVideoOnly:Ljava/lang/Boolean;

.field private itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

.field private manifestUrl:Ljava/lang/String;

.field private mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field private resolution:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    return-void
.end method


# virtual methods
.method public build()Lcom/gold/youtube/om7753/extractor/stream/VideoStream;
    .registers 13

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->id:Ljava/lang/String;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->content:Ljava/lang/String;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->isVideoOnly:Ljava/lang/Boolean;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->resolution:Ljava/lang/String;

    if-eqz v0, :cond_31

    new-instance v1, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->content:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->isUrl:Z

    iget-object v5, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    iget-object v6, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    iget-object v7, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->resolution:Ljava/lang/String;

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->isVideoOnly:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v9, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->manifestUrl:Ljava/lang/String;

    iget-object v10, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;Lcom/gold/youtube/om7753/extractor/stream/VideoStream-IA;)V

    return-object v1

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The resolution of the video stream has been not set. Please specify it with setResolution (use an empty string if you are not able to get it)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The video stream has been not set as a video-only stream or as a video stream with embedded audio. Please specify this information with setIsVideoOnly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The delivery method of the video stream has been set as null, which is not allowed. Pass a valid one instead with setDeliveryMethod."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The content of the video stream has been not set or is null. Please specify a non-null one with setContent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The identifier of the video stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Ljava/lang/String;Z)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;
    .registers 3

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->content:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->isUrl:Z

    return-object p0
.end method

.method public setDeliveryMethod(Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setIsVideoOnly(Z)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->isVideoOnly:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setItagItem(Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    return-object p0
.end method

.method public setManifestUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->manifestUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaFormat(Lcom/gold/youtube/om7753/extractor/MediaFormat;)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    return-object p0
.end method

.method public setResolution(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->resolution:Ljava/lang/String;

    return-object p0
.end method
