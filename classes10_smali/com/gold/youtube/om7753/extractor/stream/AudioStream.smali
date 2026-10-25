.class public final Lcom/gold/youtube/om7753/extractor/stream/AudioStream;
.super Lcom/gold/youtube/om7753/extractor/stream/Stream;
.source "AudioStream.java"


# static fields
.field public static final UNKNOWN_BITRATE:I = -0x1


# instance fields
.field private final audioLocale:Ljava/util/Locale;

.field private final audioTrackId:Ljava/lang/String;

.field private final audioTrackName:Ljava/lang/String;

.field private final audioTrackType:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

.field private final averageBitrate:I

.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field private itag:I

.field private itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

.field private quality:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)V
    .registers 9

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetid(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetcontent(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetisUrl(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Z

    move-result v3

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetmediaFormat(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v4

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetdeliveryMethod(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    move-result-object v5

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetmanifestUrl(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/gold/youtube/om7753/extractor/stream/Stream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->itag:I

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object v1

    if-eqz v1, :cond_79

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object v1

    iput-object v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object v1

    iget v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->id:I

    iput v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->itag:I

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getQuality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->quality:Ljava/lang/String;

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getBitrate()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->bitrate:I

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getInitStart()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->initStart:I

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getInitEnd()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->initEnd:I

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getIndexStart()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->indexStart:I

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getIndexEnd()I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->indexEnd:I

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getCodec()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->codec:Ljava/lang/String;

    :cond_79
    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetaverageBitrate(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)I

    move-result v1

    iput v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->averageBitrate:I

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetaudioTrackId(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetaudioTrackName(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->audioTrackName:Ljava/lang/String;

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetaudioLocale(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->-$$Nest$fgetaudioTrackType(Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;)Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    move-result-object v1

    iput-object v1, v0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->audioTrackType:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    return-void
.end method


# virtual methods
.method public equalStats(Lcom/gold/youtube/om7753/extractor/stream/Stream;)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->equalStats(Lcom/gold/youtube/om7753/extractor/stream/Stream;)Z

    move-result v0

    if-eqz v0, :cond_38

    instance-of v0, p1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    if-eqz v0, :cond_38

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->averageBitrate:I

    move-object v1, p1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    iget v1, v1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->averageBitrate:I

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->audioTrackType:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    move-object v1, p1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->audioTrackType:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    move-object v1, p1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    return v0
.end method

.method public getAudioLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getAudioTrackId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioTrackName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->audioTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioTrackType()Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->audioTrackType:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    return-object v0
.end method

.method public getAverageBitrate()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->averageBitrate:I

    return v0
.end method

.method public getBitrate()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->bitrate:I

    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexEnd()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->indexEnd:I

    return v0
.end method

.method public getIndexStart()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->indexStart:I

    return v0
.end method

.method public getInitEnd()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->initEnd:I

    return v0
.end method

.method public getInitStart()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->initStart:I

    return v0
.end method

.method public getItag()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->itag:I

    return v0
.end method

.method public getItagItem()Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->quality:Ljava/lang/String;

    return-object v0
.end method
