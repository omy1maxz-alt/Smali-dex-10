.class public Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;
.super Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;
.source "YoutubeStreamExtractor.java"


# static fields
.field private static final ADAPTIVE_FORMATS:Ljava/lang/String; = "adaptiveFormats"

.field private static final CAPTIONS:Ljava/lang/String; = "captions"

.field private static final CIPHER:Ljava/lang/String; = "cipher"

.field private static final FORMATS:Ljava/lang/String; = "formats"

.field private static final NEXT:Ljava/lang/String; = "next"

.field private static final PLAYABILITY_STATUS:Ljava/lang/String; = "playabilityStatus"

.field private static final PLAYER_CAPTIONS_TRACKLIST_RENDERER:Ljava/lang/String; = "playerCaptionsTracklistRenderer"

.field private static final PREMIERED:Ljava/lang/String; = "Premiered "

.field private static final PREMIERED_ON:Ljava/lang/String; = "Premiered on "

.field private static final SIGNATURE_CIPHER:Ljava/lang/String; = "signatureCipher"

.field private static final STREAMING_DATA:Ljava/lang/String; = "streamingData"

.field private static final THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field private static final THUMBNAILS:Ljava/lang/String; = "thumbnails"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final VIDEO_DETAILS:Ljava/lang/String; = "videoDetails"

.field private static fetchIosClient:Z

.field private static poTokenProvider:Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenProvider;


# instance fields
.field private ageLimit:I

.field private androidCpn:Ljava/lang/String;

.field private androidStreamingData:Lcom/grack/nanojson/JsonObject;

.field private androidStreamingUrlsPoToken:Ljava/lang/String;

.field private iosCpn:Ljava/lang/String;

.field private iosStreamingData:Lcom/grack/nanojson/JsonObject;

.field private iosStreamingUrlsPoToken:Ljava/lang/String;

.field private nextResponse:Lcom/grack/nanojson/JsonObject;

.field private playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

.field private playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

.field private playerResponse:Lcom/grack/nanojson/JsonObject;

.field private streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

.field private thumbnailsArray:Lcom/grack/nanojson/JsonArray;

.field private videoPrimaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

.field private videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

.field private visionOsCpn:Ljava/lang/String;

.field private visionOsStreamingData:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/extractor/StreamingService;Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;-><init>(Lcom/gold/youtube/om7753/extractor/StreamingService;Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->ageLimit:I

    return-void
.end method

.method private buildAndAddItagInfoToList(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    const-string v6, "url"

    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_1b

    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_70

    :cond_1b
    nop

    const-string v7, "signatureCipher"

    invoke-virtual {v2, v7}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "cipher"

    invoke-virtual {v2, v9, v7}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/4 v6, 0x0

    return-object v6

    :cond_30
    invoke-static {v7}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->compatParseMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    nop

    const-string v10, "s"

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->deobfuscateSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v11, "sp"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "&"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_70
    invoke-static {v1, v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->getUrlWithThrottlingParameterDeobfuscated(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "&cpn="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v9, p5

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_a6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "&pot="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_a6
    const-string v7, "initRange"

    invoke-virtual {v2, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    const-string v10, "indexRange"

    invoke-virtual {v2, v10}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v10

    const-string v11, "mimeType"

    invoke-virtual {v2, v11, v8}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "codecs"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_ca

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v13

    goto :goto_cb

    :cond_ca
    move-object v12, v8

    :goto_cb
    const-string v14, "bitrate"

    invoke-virtual {v2, v14}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setBitrate(I)V

    const-string v14, "width"

    invoke-virtual {v2, v14}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setWidth(I)V

    const-string v14, "height"

    invoke-virtual {v2, v14}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setHeight(I)V

    const-string v14, "start"

    const-string v15, "-1"

    invoke-virtual {v7, v14, v15}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v3, v13}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setInitStart(I)V

    const-string v13, "end"

    invoke-virtual {v7, v13, v15}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setInitEnd(I)V

    invoke-virtual {v10, v14, v15}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setIndexStart(I)V

    invoke-virtual {v10, v13, v15}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setIndexEnd(I)V

    const-string v1, "quality"

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setQuality(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setCodec(Ljava/lang/String;)V

    const-string v1, "isDrc"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v1, v14}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setIsDrc(Ljava/lang/Boolean;)V

    const-string v1, "lastModified"

    invoke-virtual {v2, v1, v15}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setLastModified(J)V

    const-string v1, "xtags"

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setXtags(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    sget-object v14, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    if-eq v1, v14, :cond_15a

    iget-object v1, v0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    sget-object v14, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->POST_LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    if-ne v1, v14, :cond_163

    :cond_15a
    const-string v1, "targetDurationSec"

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setTargetDurationSec(I)V

    :cond_163
    sget-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    if-eq v4, v1, :cond_1d4

    sget-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    if-ne v4, v1, :cond_16c

    goto :goto_1d4

    :cond_16c
    sget-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    if-ne v4, v1, :cond_1dd

    const-string v1, "audioSampleRate"

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setSampleRate(I)V

    const-string v1, "audioChannels"

    const/4 v14, 0x2

    invoke-virtual {v2, v1, v14}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setAudioChannels(I)V

    const-string v1, "audioTrack"

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v14

    const-string v15, "id"

    invoke-virtual {v14, v15}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1c6

    invoke-virtual {v3, v14}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setAudioTrackId(Ljava/lang/String;)V

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/4 v13, -0x1

    if-eq v15, v13, :cond_1ba

    nop

    const/4 v13, 0x0

    invoke-virtual {v14, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/gold/youtube/om7753/extractor/utils/LocaleCompat;->forLanguageTag(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v13

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda8;

    invoke-direct {v4, v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda8;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;)V

    invoke-virtual {v13, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1ba
    nop

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getXtags()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->extractAudioTrackType(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setAudioTrackType(Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;)V

    :cond_1c6
    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v4, "displayName"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setAudioTrackName(Ljava/lang/String;)V

    goto :goto_1dd

    :cond_1d4
    :goto_1d4
    const-string v1, "fps"

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setFps(I)V

    :cond_1dd
    :goto_1dd
    nop

    const-wide/16 v13, -0x1

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "contentLength"

    invoke-virtual {v2, v4, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-wide v15, v13

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setContentLength(J)V

    nop

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "approxDurationMs"

    invoke-virtual {v2, v4, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setApproxDurationMs(J)V

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;

    invoke-direct {v1, v6, v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;-><init>(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;)V

    iget-object v4, v0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    sget-object v13, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->VIDEO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    if-ne v4, v13, :cond_221

    const-string v4, "type"

    invoke-virtual {v2, v4, v8}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "FORMAT_STREAM_TYPE_OTF"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->setIsUrl(Z)V

    goto :goto_22e

    :cond_221
    iget-object v4, v0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->POST_LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    if-eq v4, v8, :cond_22a

    move/from16 v13, v17

    goto :goto_22b

    :cond_22a
    const/4 v13, 0x0

    :goto_22b
    invoke-virtual {v1, v13}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->setIsUrl(Z)V

    :goto_22e
    return-object v1
.end method

.method private static checkPlayabilityStatus(Lcom/grack/nanojson/JsonObject;)V
    .registers 8

    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_fd

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_fd

    :cond_12
    const-string v1, "reason"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, ": \""

    if-eqz v1, :cond_d8

    const-string v4, "login_required"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    const-string v4, "inappropriate for some users"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6c

    const-string v4, "private"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_64

    const-string v4, "a bot"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3f

    goto :goto_74

    :cond_3f
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/SignInConfirmNotBotException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "YouTube probably temporarily blocked anonymous watch access with this IP , got error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/SignInConfirmNotBotException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_64
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/PrivateContentException;

    const-string v3, "This video is private"

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/PrivateContentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6c
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/AgeRestrictedContentException;

    const-string v3, "This age-restricted video cannot be watched anonymously"

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/AgeRestrictedContentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_74
    :goto_74
    const-string v4, "unplayable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_84

    const-string v4, "error"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d8

    :cond_84
    const-string v4, "Music Premium"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d2

    const-string v4, "payment"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ca

    const-string v4, "members"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c2

    const-string v4, "country"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ba

    const-string v4, "closed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b4

    const-string v4, "terminated"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d8

    :cond_b4
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException;

    invoke-direct {v2, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ba
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/GeographicRestrictionException;

    const-string v3, "This video is not available in client\'s country."

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/GeographicRestrictionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c2
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/PaidContentException;

    const-string v3, "This video is only available for members of the channel of this video"

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/PaidContentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ca
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/PaidContentException;

    const-string v3, "This video is a paid video"

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/PaidContentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d2
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/YoutubeMusicPremiumContentException;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/extractor/exceptions/YoutubeMusicPremiumContentException;-><init>()V

    throw v2

    :cond_d8
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_fd
    :goto_fd
    return-void
.end method

.method private fetchAndroidClient(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;)V
    .registers 7

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->generateContentPlaybackNonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidCpn:Ljava/lang/String;

    if-nez p4, :cond_11

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidCpn:Ljava/lang/String;

    invoke-static {p2, p1, p3, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->getAndroidReelPlayerResponse(Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    goto :goto_19

    :cond_11
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidCpn:Ljava/lang/String;

    invoke-static {p2, p1, p3, v0, p4}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->getAndroidPlayerResponse(Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    :goto_19
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "playabilityStatus"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->checkPlayabilityStatus(Lcom/grack/nanojson/JsonObject;)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, p3}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->isPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "streamingData"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "captions"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "playerCaptionsTracklistRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    if-eqz p4, :cond_4c

    iget-object v0, p4, Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;->streamingDataPoToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingUrlsPoToken:Ljava/lang/String;

    :cond_4c
    return-void

    :cond_4d
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;

    const-string v1, "ANDROID player response is not valid"

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fetchIosClient(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;)V
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->generateContentPlaybackNonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosCpn:Ljava/lang/String;

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosCpn:Ljava/lang/String;

    invoke-static {p2, p1, p3, v0, p4}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->getIosPlayerResponse(Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->isPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "streamingData"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosStreamingData:Lcom/grack/nanojson/JsonObject;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "captions"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "playerCaptionsTracklistRenderer"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    :cond_30
    if-eqz p4, :cond_36

    iget-object v1, p4, Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;->streamingDataPoToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosStreamingUrlsPoToken:Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    :cond_36
    goto :goto_38

    :catch_37
    move-exception v0

    :goto_38
    return-void
.end method

.method private fetchVisionOsClient(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->generateContentPlaybackNonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->visionOsCpn:Ljava/lang/String;

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->visionOsCpn:Ljava/lang/String;

    invoke-static {p2, p1, p3, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->getVisionOsPlayerResponse(Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->isPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "streamingData"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->visionOsStreamingData:Lcom/grack/nanojson/JsonObject;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "captions"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "playerCaptionsTracklistRenderer"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    :cond_30
    goto :goto_32

    :catch_31
    move-exception v0

    :goto_32
    return-void
.end method

.method private fetchWebClientMetadataAndSetThumbnails(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/lang/String;)V
    .registers 10

    const-string v0, "thumbnail"

    const-string v1, "videoDetails"

    const-string v2, "thumbnails"

    :try_start_6
    invoke-static {p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->getWebMetadataPlayerResponse(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->isPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "microformat"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    const-string v5, "playerMicroformatRenderer"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    iput-object v4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v3, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/grack/nanojson/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-virtual {v4, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v5

    iput-object v5, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->thumbnailsArray:Lcom/grack/nanojson/JsonArray;

    goto :goto_43

    :cond_33
    iget-object v5, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v5, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v5

    iput-object v5, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->thumbnailsArray:Lcom/grack/nanojson/JsonArray;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    goto :goto_5c

    :catch_44
    move-exception v3

    new-instance v4, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v4}, Lcom/grack/nanojson/JsonObject;-><init>()V

    iput-object v4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    iget-object v4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v4, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->thumbnailsArray:Lcom/grack/nanojson/JsonArray;

    :goto_5c
    return-void
.end method

.method private getAudioStreamBuilderHelper()Ljava/util/function/Function;
    .registers 2

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda23;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;)V

    return-object v0
.end method

.method private getDurationFromFirstAdaptiveFormat(Ljava/util/List;)I
    .registers 8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    const-string v2, "adaptiveFormats"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grack/nanojson/JsonArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_4

    :cond_1d
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "approxDurationMs"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_28
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000  # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_34} :catch_35

    return v0

    :catch_35
    move-exception v4

    goto :goto_4

    :cond_37
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v1, "Could not get duration"

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getItags(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;
    .registers 14

    :try_start_0
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/gold/youtube/om7753/extractor/utils/Pair;

    new-instance v3, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    iget-object v4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    new-instance v5, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    iget-object v6, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidCpn:Ljava/lang/String;

    iget-object v7, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingUrlsPoToken:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/gold/youtube/om7753/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-direct {v3, v4, v5}, Lcom/gold/youtube/om7753/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    iget-object v4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->visionOsStreamingData:Lcom/grack/nanojson/JsonObject;

    new-instance v5, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    iget-object v6, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->visionOsCpn:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/gold/youtube/om7753/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-direct {v3, v4, v5}, Lcom/gold/youtube/om7753/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    iget-object v4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosStreamingData:Lcom/grack/nanojson/JsonObject;

    new-instance v5, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    iget-object v6, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosCpn:Ljava/lang/String;

    iget-object v7, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosStreamingUrlsPoToken:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/gold/youtube/om7753/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-direct {v3, v4, v5}, Lcom/gold/youtube/om7753/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda15;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda16;

    invoke-direct {v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda16;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_61

    return-object v1

    :catch_61
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " streams"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getManifestUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ManifestUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_80

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v3, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    goto :goto_17

    :cond_3a
    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object v1

    if-nez v1, :cond_58

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_58
    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?pot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_80
    goto :goto_17

    :cond_81
    const-string v1, ""

    return-object v1
.end method

.method private getStreamsFromStreamingDataKey(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/stream/Stream;
    .registers 14

    if-eqz p2, :cond_2d

    invoke-virtual {p2, p3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    move-object v4, p1

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    goto :goto_31

    :cond_d
    invoke-virtual {p2, p3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;

    move-object v2, p0

    move-object v4, p1

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p4, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda5;

    invoke-direct {p4}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p1, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :cond_2d
    move-object v4, p1

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    :goto_31
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method private getVideoInfoRenderer(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "twoColumnWatchNextResults"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "results"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda21;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1}, Lcom/grack/nanojson/JsonObject;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    return-object v0
.end method

.method private getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoPrimaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoPrimaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    return-object v0

    :cond_7
    const-string v0, "videoPrimaryInfoRenderer"

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoInfoRenderer(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoPrimaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoPrimaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    return-object v0
.end method

.method private getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    return-object v0

    :cond_7
    const-string v0, "videoSecondaryInfoRenderer"

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoInfoRenderer(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    return-object v0
.end method

.method private getVideoStreamBuilderHelper(Z)Ljava/util/function/Function;
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda14;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;Z)V

    return-object v0
.end method

.method private static isPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "videoDetails"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "videoId"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getAgeLimit$3(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .registers 3

    nop

    const-string v0, "metadataRowRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAgeLimit$4(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .registers 2

    nop

    const-string v0, "runs"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAgeLimit$5(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .registers 3

    const-string v0, "text"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAgeLimit$6(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "Age-restricted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getItags$15(Ljava/util/List;Lcom/gold/youtube/om7753/extractor/stream/Stream;)V
    .registers 3

    invoke-static {p1, p0}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->containSimilarStream(Lcom/gold/youtube/om7753/extractor/stream/Stream;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method static synthetic lambda$getPrivacy$19(Lcom/grack/nanojson/JsonObject;)Z
    .registers 3

    const-string v0, "metadataBadgeRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "iconType"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRIVACY_UNLISTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getRelatedItems$11(Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;Lcom/grack/nanojson/JsonObject;)Lcom/gold/youtube/om7753/extractor/InfoItemExtractor;
    .registers 5

    const-string v0, "compactVideoRenderer"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;)V

    return-object v1

    :cond_12
    const-string v0, "compactRadioRenderer"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object v1

    :cond_24
    const-string v0, "compactPlaylistRenderer"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object v1

    :cond_36
    const-string v0, "lockupViewModel"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "contentType"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LOCKUP_CONTENT_TYPE_PLAYLIST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    const-string v2, "LOCKUP_CONTENT_TYPE_PODCAST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    goto :goto_67

    :cond_59
    const-string v2, "LOCKUP_CONTENT_TYPE_VIDEO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;

    invoke-direct {v2, v0, p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;)V

    return-object v2

    :cond_67
    :goto_67
    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;

    invoke-direct {v2, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object v2

    :cond_6d
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$getStreamSegments$20(Lcom/grack/nanojson/JsonObject;)Z
    .registers 3

    nop

    const-string v0, "engagementPanelSectionListRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "panelIdentifier"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "engagement-panel-macro-markers-description-chapters"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getStreamSegments$21(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;
    .registers 3

    nop

    const-string v0, "engagementPanelSectionListRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "macroMarkersListRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getStreamSegments$22(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .registers 2

    const-string v0, "macroMarkersListItemRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getUploadDate$1(Ljj$/time/LocalDate;)Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    invoke-virtual {p0}, Ljj$/time/LocalDate;->atStartOfDay()Ljj$/time/LocalDateTime;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;-><init>(Ljj$/time/LocalDateTime;Z)V

    return-object v0
.end method

.method static synthetic lambda$getUploadDate$2(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse upload date \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getVideoInfoRenderer$12(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .registers 3

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getVideoInfoRenderer$13(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .registers 3

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$parseLikeCountFromLikeButtonRenderer$7(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .registers 3

    const-string v0, "segmentedLikeDislikeButtonRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "likeButton"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "toggleButtonRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$parseLikeCountFromLikeButtonRenderer$8(Lcom/grack/nanojson/JsonObject;)Z
    .registers 2

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$parseLikeCountFromLikeButtonViewModel$10(Lcom/grack/nanojson/JsonObject;)Z
    .registers 2

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$parseLikeCountFromLikeButtonViewModel$9(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .registers 3

    const-string v0, "segmentedLikeDislikeButtonViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "likeButtonViewModel"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "toggleButtonViewModel"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "defaultButtonViewModel"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "buttonViewModel"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method private static parseLikeCountFromLikeButtonRenderer(Lcom/grack/nanojson/JsonArray;)J
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    if-eqz v1, :cond_65

    const-string v2, "accessibilityData"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "label"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "accessibility"

    if-nez v0, :cond_40

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_40
    if-nez v0, :cond_54

    const-string v5, "defaultText"

    invoke-virtual {v1, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_54
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "no likes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_65

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_65
    if-eqz v0, :cond_90

    :try_start_67
    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_6f
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_6f} :catch_70

    return-wide v2

    :catch_70
    move-exception v2

    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" as a long"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_90
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "Could not get like count from accessibility data"

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseLikeCountFromLikeButtonViewModel(Lcom/grack/nanojson/JsonArray;)J
    .registers 7

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_5c

    const-string v1, "accessibilityText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_54

    :try_start_2b
    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_33} :catch_34

    return-wide v2

    :catch_34
    move-exception v2

    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" as a long"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_54
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "Could not find buttonViewModel\'s accessibilityText string"

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5c
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not find buttonViewModel object"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseOptionalDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;
    .registers 5

    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p2, v0}, Ljj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p1, v0}, Ljj$/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1
    :try_end_e
    .catch Ljj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    move-exception v0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static setFetchIosClient(Z)V
    .registers 1

    sput-boolean p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->fetchIosClient:Z

    return-void
.end method

.method public static setPoTokenProvider(Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenProvider;)V
    .registers 1

    sput-object p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->poTokenProvider:Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenProvider;

    return-void
.end method

.method private setStreamType()V
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "playabilityStatus"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "liveStreamability"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    goto :goto_33

    :cond_15
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isPostLiveDvr"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->POST_LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    goto :goto_33

    :cond_2f
    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->VIDEO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    :goto_33
    return-void
.end method


# virtual methods
.method public getAgeLimit()I
    .registers 3

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->ageLimit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->ageLimit:I

    return v0

    :cond_8
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "metadataRowContainer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "metadataRowContainerRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "rows"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/16 v1, 0x12

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    iput v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->ageLimit:I

    iget v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->ageLimit:I

    return v1
.end method

.method public getAudioStreams()Ljava/util/List;
    .registers 5

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getAudioStreamBuilderHelper()Ljava/util/function/Function;

    move-result-object v1

    const-string v2, "adaptiveFormats"

    const-string v3, "audio"

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getItags(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "category"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDashMpdUrl()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingUrlsPoToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-static {v0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "dash"

    const-string v2, "mpd_version=7"

    invoke-static {v1, v0, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getManifestUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "playabilityStatus"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "errorScreen"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "playerErrorMessageRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getFrames()Ljava/util/List;
    .registers 25

    const-string v0, "$M"

    const-string v1, "playerLiveStoryboardSpecRenderer"

    move-object/from16 v2, p0

    :try_start_6
    iget-object v3, v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v4, "storyboards"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    nop

    invoke-virtual {v3, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_18

    :cond_16
    const-string v1, "playerStoryboardSpecRenderer"

    :goto_18
    invoke-virtual {v3, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    if-nez v1, :cond_23

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_23
    const-string v4, "spec"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_30

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_30
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v7, v5, v6

    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v5

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x1

    :goto_42
    array-length v11, v5

    if-ge v9, v11, :cond_10b

    aget-object v11, v5, v9

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/16 v13, 0x8

    if-ne v12, v13, :cond_ff

    const/4 v12, 0x5

    aget-object v13, v11, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_61

    move/from16 v22, v6

    move/from16 v23, v10

    goto/16 :goto_103

    :cond_61
    const/4 v13, 0x2

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x3

    aget-object v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/4 v14, 0x4

    aget-object v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const-string v14, "$L"

    add-int/lit8 v15, v9, -0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "$N"

    const/16 v16, 0x6

    move/from16 v22, v6

    aget-object v6, v11, v16

    invoke-virtual {v14, v15, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x7

    aget-object v14, v11, v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "&sigh="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_d6

    int-to-double v14, v13

    move/from16 v23, v10

    mul-int v10, v20, v21

    move/from16 v16, v12

    move/from16 v18, v13

    int-to-double v12, v10

    div-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v10, v12

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x0

    :goto_c4
    if-ge v13, v10, :cond_d4

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v0, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_c4

    :cond_d4
    move-object v15, v12

    goto :goto_e2

    :cond_d6
    move/from16 v23, v10

    move/from16 v16, v12

    move/from16 v18, v13

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    move-object v12, v10

    move-object v15, v12

    :goto_e2
    new-instance v14, Lcom/gold/youtube/om7753/extractor/stream/Frameset;

    aget-object v10, v11, v22

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v12, v11, v23

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    aget-object v12, v11, v16

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v16, v10

    invoke-direct/range {v14 .. v21}, Lcom/gold/youtube/om7753/extractor/stream/Frameset;-><init>(Ljava/util/List;IIIIII)V

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_fe} :catch_10c

    goto :goto_103

    :cond_ff
    move/from16 v22, v6

    move/from16 v23, v10

    :goto_103
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v22

    move/from16 v10, v23

    goto/16 :goto_42

    :cond_10b
    return-object v8

    :catch_10c
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;

    const-string v3, "Could not get frames"

    invoke-direct {v1, v3, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getHlsUrl()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->visionOsStreamingData:Lcom/grack/nanojson/JsonObject;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosStreamingData:Lcom/grack/nanojson/JsonObject;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosStreamingUrlsPoToken:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/gold/youtube/om7753/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    iget-object v4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingUrlsPoToken:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/gold/youtube/om7753/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-static {v0, v1, v2}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "hls"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getManifestUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageInfo()Ljava/util/Locale;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .registers 5

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    :try_start_3
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "lengthSeconds"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    return-wide v1

    :catch_16
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/grack/nanojson/JsonObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosStreamingData:Lcom/grack/nanojson/JsonObject;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getDurationFromFirstAdaptiveFormat(Ljava/util/List;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public getLicence()Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "metadataRowContainer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "metadataRowContainerRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "rows"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "metadataRowRenderer"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "contents"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    const-string v3, "title"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Licence"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    move-object v3, v1

    goto :goto_47

    :cond_45
    const-string v3, "YouTube licence"

    :goto_47
    return-object v3
.end method

.method public getLikeCount()J
    .registers 5

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "allowRatings"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_16
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "videoActions"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "menuRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "topLevelButtons"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    :try_start_2c
    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->parseLikeCountFromLikeButtonViewModel(Lcom/grack/nanojson/JsonArray;)J

    move-result-wide v1
    :try_end_30
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_2c .. :try_end_30} :catch_31

    return-wide v1

    :catch_31
    move-exception v1

    :try_start_32
    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->parseLikeCountFromLikeButtonRenderer(Lcom/grack/nanojson/JsonArray;)J

    move-result-wide v1
    :try_end_36
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_32 .. :try_end_36} :catch_37

    return-wide v1

    :catch_37
    move-exception v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "Could not get like count"

    invoke-direct {v2, v3, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getMetaInfo()Ljava/util/List;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "twoColumnWatchNextResults"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "results"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeMetaInfoHelper;->getMetaInfo(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_32

    :cond_2a
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get name"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    :goto_32
    return-object v0
.end method

.method public getPrivacy()Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "isUnlisted"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "badges"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda20;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_27

    :cond_24
    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->PUBLIC:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    goto :goto_29

    :cond_27
    :goto_27
    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->UNLISTED:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    :goto_29
    return-object v0
.end method

.method public bridge synthetic getRelatedItems()Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getRelatedItems()Lcom/gold/youtube/om7753/extractor/MultiInfoItemsCollector;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedItems()Lcom/gold/youtube/om7753/extractor/MultiInfoItemsCollector;
    .registers 6

    const-string v0, "secondaryResults"

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getAgeLimit()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    return-object v0

    :cond_d
    :try_start_d
    new-instance v1, Lcom/gold/youtube/om7753/extractor/MultiInfoItemsCollector;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getServiceId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/MultiInfoItemsCollector;-><init>(I)V

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    const-string v3, "contents"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "twoColumnWatchNextResults"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "results"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getTimeAgoParser()Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    move-result-object v2

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda11;

    invoke-direct {v4, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda11;-><init>(Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda12;

    invoke-direct {v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda13;

    invoke-direct {v4, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda13;-><init>(Lcom/gold/youtube/om7753/extractor/MultiInfoItemsCollector;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_57} :catch_58

    return-object v1

    :catch_58
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get related videos"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getStreamSegments()Ljava/util/List;
    .registers 14

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "engagementPanels"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda24;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda25;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonArray;

    if-nez v0, :cond_3d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_3d
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getLength()J

    move-result-wide v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda26;

    invoke-direct {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda26;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/grack/nanojson/JsonObject;

    const-string v7, "onTap"

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    const-string v8, "watchEndpoint"

    invoke-virtual {v7, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    const-string v8, "startTimeSeconds"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v9, :cond_ee

    int-to-long v8, v7

    cmp-long v8, v8, v1

    if-lez v8, :cond_7e

    goto :goto_f6

    :cond_7e
    const-string v8, "title"

    invoke-virtual {v6, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v8

    invoke-static {v8}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e6

    new-instance v9, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;

    invoke-direct {v9, v8, v7}, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getUrl()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?t="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->setUrl(Ljava/lang/String;)V

    const-string v10, "thumbnail"

    invoke-virtual {v6, v10}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e1

    invoke-virtual {v6, v10}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v10

    const-string v11, "thumbnails"

    invoke-virtual {v10, v11}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v10

    invoke-virtual {v10}, Lcom/grack/nanojson/JsonArray;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_e1

    nop

    invoke-virtual {v10}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v11

    const-string v12, "url"

    invoke-virtual {v11, v12}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->fixThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/gold/youtube/om7753/extractor/stream/StreamSegment;->setPreviewUrl(Ljava/lang/String;)V

    :cond_e1
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_57

    :cond_e6
    new-instance v9, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v10, "Could not get stream segment title."

    invoke-direct {v9, v10}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_ee
    new-instance v8, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v9, "Could not get stream segment start time."

    invoke-direct {v8, v9}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_f6
    :goto_f6
    return-object v3
.end method

.method public getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-object v0
.end method

.method public getSubtitles(Lcom/gold/youtube/om7753/extractor/MediaFormat;)Ljava/util/List;
    .registers 14

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v2, "captionTracks"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8b

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "languageCode"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    const-string v5, "baseUrl"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const-string v6, "vssId"

    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_88

    if-eqz v4, :cond_88

    if-eqz v5, :cond_88

    const-string v6, "a."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    nop

    const-string v7, "&fmt=[^&]*"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "&tlang=[^&]*"

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream$Builder;

    invoke-direct {v8}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->getSuffix()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&fmt="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream$Builder;->setContent(Ljava/lang/String;Z)Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream$Builder;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream$Builder;->setMediaFormat(Lcom/gold/youtube/om7753/extractor/MediaFormat;)Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream$Builder;->setAutoGenerated(Z)Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream$Builder;->build()Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_88
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_8b
    return-object v0
.end method

.method public getSubtitlesDefault()Ljava/util/List;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->TTML:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getSubtitles(Lcom/gold/youtube/om7753/extractor/MediaFormat;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "keywords"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getStringListFromJsonArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "uploadDate"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v3, "publishDate"

    invoke-virtual {v1, v3, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    return-object v0

    :cond_1f
    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v3, "liveBroadcastDetails"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "endTimestamp"

    invoke-virtual {v1, v3, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "startTimestamp"

    invoke-virtual {v1, v3, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_39
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    return-object v0

    :cond_40
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    move-result-object v2

    sget-object v3, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4a

    return-object v4

    :cond_4a
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "dateText"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5b

    return-object v4

    :cond_5b
    const-string v4, "Premiered on "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_6c
    const-string v4, "Premiered "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_7d
    return-object v3
.end method

.method public getThumbnails()Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    :try_start_3
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->thumbnailsArray:Lcom/grack/nanojson/JsonArray;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get thumbnails"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTimeStamp()J
    .registers 5

    nop

    const-string v0, "((#|&|\\?)t=\\d*h?\\d*m?\\d+s?)"

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getTimestampSeconds(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_10
    return-wide v0
.end method

.method public getUploadDate()Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;
    .registers 4

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    :try_start_4
    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;->fromOffsetDateTime(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    move-result-object v1
    :try_end_8
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    :catch_9
    move-exception v1

    :try_start_a
    new-instance v1, Lcom/gold/youtube/om7753/extractor/localization/Localization;

    const-string v2, "en"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/localization/Localization;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoPatternsManager;->getTimeAgoParserFor(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->parse(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    move-result-object v2
    :try_end_19
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_a .. :try_end_19} :catch_1a

    return-object v2

    :catch_1a
    move-exception v1

    const-string v1, "MMM dd, yyyy"

    invoke-direct {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->parseOptionalDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda17;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport5;->m(Ljava/util/Optional;Ljava/util/function/Supplier;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda19;

    invoke-direct {v2, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda19;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    return-object v1
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .registers 5

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "owner"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "videoOwnerRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "avatarStack"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    nop

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "avatarStackViewModel"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "avatars"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "avatarViewModel"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "sources"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v1

    goto :goto_58

    :cond_48
    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "thumbnails"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v1

    :goto_58
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6b

    iget v2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->ageLimit:I

    if-eqz v2, :cond_63

    goto :goto_6b

    :cond_63
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "Could not get uploader avatars"

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6b
    :goto_6b
    return-object v1
.end method

.method public getUploaderName()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "author"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    return-object v0

    :cond_18
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get uploader name"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUploaderSubscriberCount()J
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "owner.videoOwnerRenderer"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "subscriberCountText"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    nop

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_1b
    nop

    const-string v2, "navigationEndpoint"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getFirstCollaborator(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "subtitle"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "•"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v1, v3, v4

    :goto_3b
    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_44
    :try_start_44
    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->mixedNumberWordToLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_48} :catch_49

    return-wide v2

    :catch_49
    move-exception v2

    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v4, "Could not get uploader subscriber count"

    invoke-direct {v3, v4, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "channelId"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_33
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get uploader url"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVideoOnlyStreams()Ljava/util/List;
    .registers 5

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoStreamBuilderHelper(Z)Ljava/util/function/Function;

    move-result-object v1

    const-string v2, "adaptiveFormats"

    const-string v3, "video-only"

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getItags(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoStreams()Ljava/util/List;
    .registers 5

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->assertPageFetched()V

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoStreamBuilderHelper(Z)Ljava/util/function/Function;

    move-result-object v1

    const-string v2, "formats"

    const-string v3, "video"

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getItags(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViewCount()J
    .registers 5

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "viewCount"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "videoViewCountRenderer"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v3, "videoDetails"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_39

    :cond_31
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get view count"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no views"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    const-wide/16 v1, 0x0

    return-wide v1

    :cond_48
    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public isUploaderVerified()Z
    .registers 5

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "owner"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "videoOwnerRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "badges"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    nop

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isVerified(Lcom/grack/nanojson/JsonArray;)Z

    move-result v1

    return v1

    :cond_22
    nop

    const-string v1, "navigationEndpoint"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getFirstCollaborator(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    if-nez v1, :cond_31

    const/4 v2, 0x0

    return v2

    :cond_31
    nop

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "attachmentRuns"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->hasArtistOrVerifiedIconBadgeAttachment(Lcom/grack/nanojson/JsonArray;)Z

    move-result v2

    return v2
.end method

.method synthetic lambda$getAudioStreamBuilderHelper$16$com-gold-youtube-om7753-extractor-services-youtube-extractors-YoutubeStreamExtractor(Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream;
    .registers 6

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->getItagItem()Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;-><init>()V

    iget v2, v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->setId(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->getIsUrl()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->setContent(Ljava/lang/String;Z)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getMediaFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->setMediaFormat(Lcom/gold/youtube/om7753/extractor/MediaFormat;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getAverageBitrate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->setAverageBitrate(I)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getAudioTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->setAudioTrackId(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getAudioTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->setAudioTrackName(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getAudioLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->setAudioLocale(Ljava/util/Locale;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getAudioTrackType()Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->setAudioTrackType(Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->setItagItem(Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    if-eq v2, v3, :cond_65

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->POST_LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    if-eq v2, v3, :cond_65

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->getIsUrl()Z

    move-result v2

    if-nez v2, :cond_6a

    :cond_65
    sget-object v2, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->DASH:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->setDeliveryMethod(Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;

    :cond_6a
    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream$Builder;->build()Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    move-result-object v2

    return-object v2
.end method

.method synthetic lambda$getItags$14$com-gold-youtube-om7753-extractor-services-youtube-extractors-YoutubeStreamExtractor(Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/utils/Pair;)Ljava/util/stream/Stream;
    .registers 13

    nop

    invoke-virtual {p4}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p4}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getStreamsFromStreamingDataKey(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getStreamsFromStreamingDataKey$18$com-gold-youtube-om7753-extractor-services-youtube-extractors-YoutubeStreamExtractor(Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;
    .registers 14

    :try_start_0
    const-string v0, "itag"

    invoke-virtual {p5, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getItag(I)Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object v0

    move-object v4, v0

    iget-object v0, v4, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->itagType:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    if-ne v0, p1, :cond_1d

    iget-object v5, v4, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->itagType:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;
    :try_end_11
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_11} :catch_22

    move-object v1, p0

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    move-object v3, p5

    :try_start_16
    invoke-direct/range {v1 .. v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->buildAndAddItagInfoToList(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;

    move-result-object p2
    :try_end_1a
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException; {:try_start_16 .. :try_end_1a} :catch_1b

    return-object p2

    :catch_1b
    move-exception v0

    goto :goto_27

    :cond_1d
    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    move-object v3, p5

    goto :goto_27

    :catch_22
    move-exception v0

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    move-object v3, p5

    :goto_27
    const/4 p2, 0x0

    return-object p2
.end method

.method synthetic lambda$getUploadDate$0$com-gold-youtube-om7753-extractor-services-youtube-extractors-YoutubeStreamExtractor(Ljava/lang/String;)Ljava/util/Optional;
    .registers 3

    const-string v0, "dd MMM yyyy"

    invoke-direct {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->parseOptionalDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getVideoStreamBuilderHelper$17$com-gold-youtube-om7753-extractor-services-youtube-extractors-YoutubeStreamExtractor(ZLcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;)Lcom/gold/youtube/om7753/extractor/stream/VideoStream;
    .registers 8

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->getItagItem()Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;-><init>()V

    iget v2, v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->setId(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->getIsUrl()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->setContent(Ljava/lang/String;Z)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getMediaFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->setMediaFormat(Lcom/gold/youtube/om7753/extractor/MediaFormat;)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->setIsVideoOnly(Z)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->setItagItem(Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->getResolutionString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    move-object v3, v2

    goto :goto_39

    :cond_37
    const-string v3, ""

    :goto_39
    invoke-virtual {v1, v3}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->setResolution(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->VIDEO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    if-ne v3, v4, :cond_48

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->getIsUrl()Z

    move-result v3

    if-nez v3, :cond_4d

    :cond_48
    sget-object v3, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->DASH:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    invoke-virtual {v1, v3}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->setDeliveryMethod(Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;)Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;

    :cond_4d
    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream$Builder;->build()Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    move-result-object v3

    return-object v3
.end method

.method public onFetchPage(Lcom/gold/youtube/om7753/extractor/downloader/Downloader;)V
    .registers 11

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getExtractorLocalization()Lcom/gold/youtube/om7753/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getExtractorContentCountry()Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    move-result-object v2

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->poTokenProvider:Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenProvider;

    const/4 v4, 0x1

    if-nez v3, :cond_13

    move v5, v4

    goto :goto_14

    :cond_13
    const/4 v5, 0x0

    :goto_14
    const/4 v6, 0x0

    if-eqz v5, :cond_19

    move-object v7, v6

    goto :goto_1d

    :cond_19
    invoke-interface {v3, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenProvider;->getAndroidClientPoToken(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;

    move-result-object v7

    :goto_1d
    nop

    invoke-direct {p0, v1, v2, v0, v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->fetchAndroidClient(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->setStreamType()V

    sget-boolean v8, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->fetchIosClient:Z

    if-eqz v8, :cond_33

    if-eqz v5, :cond_2b

    goto :goto_2f

    :cond_2b
    invoke-interface {v3, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenProvider;->getIosClientPoToken(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;

    move-result-object v6

    :goto_2f
    nop

    invoke-direct {p0, v1, v2, v0, v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->fetchIosClient(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;)V

    :cond_33
    invoke-direct {p0, v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->fetchVisionOsClient(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->fetchWebClientMetadataAndSetThumbnails(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/lang/String;)V

    nop

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->prepareDesktopJsonBuilder(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v6

    const-string v8, "videoId"

    invoke-virtual {v6, v8, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v6

    const-string v8, "contentCheckOk"

    invoke-virtual {v6, v8, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v6

    const-string v8, "racyCheckOk"

    invoke-virtual {v6, v8, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v6, "next"

    invoke-static {v6, v4, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getJsonPostResponse(Ljava/lang/String;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    iput-object v6, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    return-void
.end method
