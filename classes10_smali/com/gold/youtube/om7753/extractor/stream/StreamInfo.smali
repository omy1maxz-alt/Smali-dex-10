.class public Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;
.super Lcom/gold/youtube/om7753/extractor/Info;
.source "StreamInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ageLimit:I

.field private audioStreams:Ljava/util/List;

.field private category:Ljava/lang/String;

.field private contentAvailability:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

.field private dashMpdUrl:Ljava/lang/String;

.field private description:Lcom/gold/youtube/om7753/extractor/stream/Description;

.field private dislikeCount:J

.field private duration:J

.field private hlsUrl:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private language:Ljava/util/Locale;

.field private licence:Ljava/lang/String;

.field private likeCount:J

.field private metaInfo:Ljava/util/List;

.field private previewFrames:Ljava/util/List;

.field private privacy:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

.field private relatedItems:Ljava/util/List;

.field private shortFormContent:Z

.field private startPosition:J

.field private streamSegments:Ljava/util/List;

.field private streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

.field private subChannelAvatars:Ljava/util/List;

.field private subChannelName:Ljava/lang/String;

.field private subChannelUrl:Ljava/lang/String;

.field private subtitles:Ljava/util/List;

.field private supportInfo:Ljava/lang/String;

.field private tags:Ljava/util/List;

.field private textualUploadDate:Ljava/lang/String;

.field private thumbnails:Ljava/util/List;

.field private uploadDate:Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

.field private uploaderAvatars:Ljava/util/List;

.field private uploaderName:Ljava/lang/String;

.field private uploaderSubscriberCount:J

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z

.field private videoOnlyStreams:Ljava/util/List;

.field private videoStreams:Ljava/util/List;

.field private viewCount:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/stream/StreamType;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v2, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->thumbnails:Ljava/util/List;

    const-wide/16 p1, -0x1

    iput-wide p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->duration:J

    iput-wide p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->viewCount:J

    iput-wide p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->likeCount:J

    iput-wide p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->dislikeCount:J

    const-string p3, ""

    iput-object p3, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderName:Ljava/lang/String;

    iput-object p3, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderUrl:Ljava/lang/String;

    nop

    sget-object p5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p5, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderAvatars:Ljava/util/List;

    const/4 p5, 0x0

    iput-boolean p5, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderVerified:Z

    iput-wide p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderSubscriberCount:J

    iput-object p3, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->subChannelName:Ljava/lang/String;

    iput-object p3, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->subChannelUrl:Ljava/lang/String;

    nop

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->subChannelAvatars:Ljava/util/List;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;

    iput-object p3, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    iput-object p3, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->relatedItems:Ljava/util/List;

    const-wide/16 p1, 0x0

    iput-wide p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->startPosition:J

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;

    iput-object p3, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->host:Ljava/lang/String;

    iput-object p3, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->category:Ljava/lang/String;

    iput-object p3, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->licence:Ljava/lang/String;

    iput-object p3, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->supportInfo:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->language:Ljava/util/Locale;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->tags:Ljava/util/List;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->streamSegments:Ljava/util/List;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->metaInfo:Ljava/util/List;

    iput-boolean p5, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->shortFormContent:Z

    sget-object p1, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->AVAILABLE:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    iput-object p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->contentAvailability:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->previewFrames:Ljava/util/List;

    iput-object p4, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    iput p7, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->ageLimit:I

    sget-object p1, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->TAG:Ljava/lang/String;

    const-string p2, "Created {}"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static extractImportantData(Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;
    .registers 9

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    move-result-object v4

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getAgeLimit()I

    move-result v7

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->NONE:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    if-eq v4, v0, :cond_37

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    if-eqz v6, :cond_37

    const/4 v0, -0x1

    if-eq v7, v0, :cond_37

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getServiceId()I

    move-result v1

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v7}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/stream/StreamType;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_37
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;

    const-string v1, "Some important stream information was not given."

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static extractOptionalData(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setThumbnails(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_c
    :try_start_c
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getLength()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setDuration(J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_18
    :try_start_18
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setUploaderName(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_24
    :try_start_24
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_30
    :try_start_30
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getUploaderAvatars()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_3c
    :try_start_3c
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->isUploaderVerified()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setUploaderVerified(Z)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_48
    :try_start_48
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getUploaderSubscriberCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setUploaderSubscriberCount(J)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_54
    :try_start_54
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getSubChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setSubChannelName(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_60
    :try_start_60
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getSubChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setSubChannelUrl(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_6c
    :try_start_6c
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getSubChannelAvatars()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setSubChannelAvatars(Ljava/util/List;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_78
    :try_start_78
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getViewCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setViewCount(J)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7f} :catch_80

    goto :goto_84

    :catch_80
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_84
    :try_start_84
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setTextualUploadDate(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8b} :catch_8c

    goto :goto_90

    :catch_8c
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_90
    :try_start_90
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getUploadDate()Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setUploadDate(Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_97} :catch_98

    goto :goto_9c

    :catch_98
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_9c
    :try_start_9c
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setStartPosition(J)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a3} :catch_a4

    goto :goto_a8

    :catch_a4
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_a8
    :try_start_a8
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getLikeCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setLikeCount(J)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_af} :catch_b0

    goto :goto_b4

    :catch_b0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_b4
    :try_start_b4
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getDislikeCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setDislikeCount(J)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_bb} :catch_bc

    goto :goto_c0

    :catch_bc
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_c0
    :try_start_c0
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getSubtitlesDefault()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setSubtitles(Ljava/util/List;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c7} :catch_c8

    goto :goto_cc

    :catch_c8
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_cc
    :try_start_cc
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setHost(Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d3} :catch_d4

    goto :goto_d8

    :catch_d4
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_d8
    :try_start_d8
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getPrivacy()Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setPrivacy(Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_df} :catch_e0

    goto :goto_e4

    :catch_e0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_e4
    :try_start_e4
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setCategory(Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_eb} :catch_ec

    goto :goto_f0

    :catch_ec
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_f0
    :try_start_f0
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getLicence()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setLicence(Ljava/lang/String;)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f7} :catch_f8

    goto :goto_fc

    :catch_f8
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_fc
    :try_start_fc
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getLanguageInfo()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setLanguageInfo(Ljava/util/Locale;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_103} :catch_104

    goto :goto_108

    :catch_104
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_108
    :try_start_108
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setTags(Ljava/util/List;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10f} :catch_110

    goto :goto_114

    :catch_110
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_114
    :try_start_114
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getSupportInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setSupportInfo(Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_11b} :catch_11c

    goto :goto_120

    :catch_11c
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_120
    :try_start_120
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getStreamSegments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setStreamSegments(Ljava/util/List;)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_127} :catch_128

    goto :goto_12c

    :catch_128
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_12c
    :try_start_12c
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getMetaInfo()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setMetaInfo(Ljava/util/List;)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_133} :catch_134

    goto :goto_138

    :catch_134
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_138
    :try_start_138
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getFrames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setPreviewFrames(Ljava/util/List;)V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_13f} :catch_140

    goto :goto_144

    :catch_140
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_144
    :try_start_144
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->isShortFormContent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setShortFormContent(Z)V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_14b} :catch_14c

    goto :goto_150

    :catch_14c
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_150
    :try_start_150
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getContentAvailability()Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setContentAvailability(Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;)V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_157} :catch_158

    goto :goto_15c

    :catch_158
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_15c
    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorHelper;->getRelatedItemsOrLogError(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setRelatedItems(Ljava/util/List;)V

    return-void
.end method

.method private static extractStreams(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getDashMpdUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setDashMpdUrl(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_13

    :catch_8
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get DASH manifest"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_13
    :try_start_13
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getHlsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setHlsUrl(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_26

    :catch_1b
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get HLS manifest"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_26
    :try_start_26
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getAudioStreams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setAudioStreams(Ljava/util/List;)V
    :try_end_2d
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotSupportedException; {:try_start_26 .. :try_end_2d} :catch_89
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_39

    :catch_2e
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get audio streams"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_39
    :try_start_39
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getVideoStreams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setVideoStreams(Ljava/util/List;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_4c

    :catch_41
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get video streams"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_4c
    :try_start_4c
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setVideoOnlyStreams(Ljava/util/List;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_53} :catch_54

    goto :goto_5f

    :catch_54
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get video only streams"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    :goto_5f
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_80

    goto :goto_88

    :cond_80
    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo$StreamExtractException;

    const-string v1, "Could not get any stream. See error variable to get further details."

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo$StreamExtractException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    :goto_88
    return-void

    :catch_89
    move-exception v0

    throw v0
.end method

.method public static getInfo(Lcom/gold/youtube/om7753/extractor/StreamingService;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;
    .registers 5

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->TAG:Ljava/lang/String;

    const-string v1, "getInfo({service},{url})"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getStreamExtractor(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getInfo(Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInfo(Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;
    .registers 4

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->TAG:Ljava/lang/String;

    const-string v1, "getInfo({extractor})"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->fetchPage()V

    :try_start_e
    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->extractImportantData(Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->extractStreams(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;)V

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->extractOptionalData(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;)V
    :try_end_18
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException; {:try_start_e .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    throw v0

    :cond_25
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;

    invoke-direct {v2, v1, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInfo(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;
    .registers 4

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->TAG:Ljava/lang/String;

    const-string v1, "getInfo({url})"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getServiceByUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/StreamingService;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getInfo(Lcom/gold/youtube/om7753/extractor/StreamingService;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAgeLimit()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->ageLimit:I

    return v0
.end method

.method public getAudioStreams()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getContentAvailability()Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->contentAvailability:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-object v0
.end method

.method public getDashMpdUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDislikeCount()J
    .registers 3

    iget-wide v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->dislikeCount:J

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->duration:J

    return-wide v0
.end method

.method public getHlsUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageInfo()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->language:Ljava/util/Locale;

    return-object v0
.end method

.method public getLicence()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->licence:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeCount()J
    .registers 3

    iget-wide v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->likeCount:J

    return-wide v0
.end method

.method public getMetaInfo()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->metaInfo:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewFrames()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->previewFrames:Ljava/util/List;

    return-object v0
.end method

.method public getPrivacy()Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->privacy:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    return-object v0
.end method

.method public getRelatedItems()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->relatedItems:Ljava/util/List;

    return-object v0
.end method

.method public getRelatedStreams()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getRelatedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStartPosition()J
    .registers 3

    iget-wide v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->startPosition:J

    return-wide v0
.end method

.method public getStreamSegments()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->streamSegments:Ljava/util/List;

    return-object v0
.end method

.method public getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-object v0
.end method

.method public getSubChannelAvatars()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->subChannelAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getSubChannelName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->subChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubChannelUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->subChannelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitles()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;

    return-object v0
.end method

.method public getSupportInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->supportInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->textualUploadDate:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->thumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getUploadDate()Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploadDate:Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderSubscriberCount()J
    .registers 3

    iget-wide v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderSubscriberCount:J

    return-wide v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoOnlyStreams()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;

    return-object v0
.end method

.method public getVideoStreams()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    return-object v0
.end method

.method public getViewCount()J
    .registers 3

    iget-wide v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->viewCount:J

    return-wide v0
.end method

.method public isShortFormContent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->shortFormContent:Z

    return v0
.end method

.method public isUploaderVerified()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderVerified:Z

    return v0
.end method

.method public setAgeLimit(I)V
    .registers 2

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->ageLimit:I

    return-void
.end method

.method public setAudioStreams(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->category:Ljava/lang/String;

    return-void
.end method

.method public setContentAvailability(Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->contentAvailability:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-void
.end method

.method public setDashMpdUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Lcom/gold/youtube/om7753/extractor/stream/Description;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->description:Lcom/gold/youtube/om7753/extractor/stream/Description;

    return-void
.end method

.method public setDislikeCount(J)V
    .registers 3

    iput-wide p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->dislikeCount:J

    return-void
.end method

.method public setDuration(J)V
    .registers 3

    iput-wide p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->duration:J

    return-void
.end method

.method public setHlsUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->host:Ljava/lang/String;

    return-void
.end method

.method public setLanguageInfo(Ljava/util/Locale;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->language:Ljava/util/Locale;

    return-void
.end method

.method public setLicence(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->licence:Ljava/lang/String;

    return-void
.end method

.method public setLikeCount(J)V
    .registers 3

    iput-wide p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->likeCount:J

    return-void
.end method

.method public setMetaInfo(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->metaInfo:Ljava/util/List;

    return-void
.end method

.method public setPreviewFrames(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->previewFrames:Ljava/util/List;

    return-void
.end method

.method public setPrivacy(Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->privacy:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    return-void
.end method

.method public setRelatedItems(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->relatedItems:Ljava/util/List;

    return-void
.end method

.method public setRelatedStreams(Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->setRelatedItems(Ljava/util/List;)V

    return-void
.end method

.method public setShortFormContent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->shortFormContent:Z

    return-void
.end method

.method public setStartPosition(J)V
    .registers 3

    iput-wide p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->startPosition:J

    return-void
.end method

.method public setStreamSegments(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->streamSegments:Ljava/util/List;

    return-void
.end method

.method public setStreamType(Lcom/gold/youtube/om7753/extractor/stream/StreamType;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-void
.end method

.method public setSubChannelAvatars(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->subChannelAvatars:Ljava/util/List;

    return-void
.end method

.method public setSubChannelName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->subChannelName:Ljava/lang/String;

    return-void
.end method

.method public setSubChannelUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->subChannelUrl:Ljava/lang/String;

    return-void
.end method

.method public setSubtitles(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;

    return-void
.end method

.method public setSupportInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->supportInfo:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->tags:Ljava/util/List;

    return-void
.end method

.method public setTextualUploadDate(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->textualUploadDate:Ljava/lang/String;

    return-void
.end method

.method public setThumbnails(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->thumbnails:Ljava/util/List;

    return-void
.end method

.method public setUploadDate(Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploadDate:Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    return-void
.end method

.method public setUploaderAvatars(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderAvatars:Ljava/util/List;

    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public setUploaderSubscriberCount(J)V
    .registers 3

    iput-wide p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderSubscriberCount:J

    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderUrl:Ljava/lang/String;

    return-void
.end method

.method public setUploaderVerified(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->uploaderVerified:Z

    return-void
.end method

.method public setVideoOnlyStreams(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;

    return-void
.end method

.method public setVideoStreams(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    return-void
.end method

.method public setViewCount(J)V
    .registers 3

    iput-wide p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->viewCount:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getServiceId()I

    move-result v1

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    iget v7, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->ageLimit:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "[serviceId="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', originalUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ageLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
