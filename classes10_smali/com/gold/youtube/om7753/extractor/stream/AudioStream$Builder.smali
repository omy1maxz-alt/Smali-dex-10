.class public final Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;
.super Ljava/lang/Object;
.source "AudioStream.java"


# instance fields
.field private audioLocale:Ljava/util/Locale;

.field private audioTrackId:Ljava/lang/String;

.field private audioTrackName:Ljava/lang/String;

.field private audioTrackType:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

.field private averageBitrate:I

.field private content:Ljava/lang/String;

.field private deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

.field private id:Ljava/lang/String;

.field private isUrl:Z

.field private itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

.field private manifestUrl:Ljava/lang/String;

.field private mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;


# direct methods
.method static bridge synthetic -$$Nest$fgetaudioLocale(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Ljava/util/Locale;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->audioLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioTrackId(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->audioTrackId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioTrackName(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->audioTrackName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioTrackType(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->audioTrackType:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaverageBitrate(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)I
    .registers 1

    iget p0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->averageBitrate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontent(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->content:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeliveryMethod(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetid(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisUrl(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->isUrl:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitagItem(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmanifestUrl(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->manifestUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaFormat(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/MediaFormat;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    const/4 v0, -0x1

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->averageBitrate:I

    return-void
.end method


# virtual methods
.method public build()Lcom/gold/youtube/om7753/extractor/stream/AudioStream;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->validateBuild()V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;-><init>(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)V

    return-object v0
.end method

.method public setAudioLocale(Ljava/util/Locale;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->audioLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public setAudioTrackId(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->audioTrackId:Ljava/lang/String;

    return-object p0
.end method

.method public setAudioTrackName(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->audioTrackName:Ljava/lang/String;

    return-object p0
.end method

.method public setAudioTrackType(Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->audioTrackType:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    return-object p0
.end method

.method public setAverageBitrate(I)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;
    .registers 2

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->averageBitrate:I

    return-object p0
.end method

.method public setContent(Ljava/lang/String;Z)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;
    .registers 3

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->content:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->isUrl:Z

    return-object p0
.end method

.method public setDeliveryMethod(Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setItagItem(Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    return-object p0
.end method

.method public setManifestUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->manifestUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaFormat(Lcom/gold/youtube/om7753/extractor/MediaFormat;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    return-object p0
.end method

.method validateBuild()V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->id:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->content:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The delivery method of the audio stream has been set as null, which is not allowed. Pass a valid one instead with setDeliveryMethod."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The content of the audio stream has been not set or is null. Please specify a non-null one with setContent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The identifier of the audio stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
