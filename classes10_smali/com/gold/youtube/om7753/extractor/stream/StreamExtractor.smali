.class public abstract Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;
.super Lcom/gold/youtube/om7753/extractor/Extractor;
.source "StreamExtractor.java"


# static fields
.field public static final NO_AGE_LIMIT:I = 0x0

.field public static final UNKNOWN_SUBSCRIBER_COUNT:J = -0x1L


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/extractor/StreamingService;Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/Extractor;-><init>(Lcom/gold/youtube/om7753/extractor/StreamingService;Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;)V

    return-void
.end method


# virtual methods
.method public getAgeLimit()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getAudioStreams()Ljava/util/List;
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getContentAvailability()Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->UNKNOWN:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-object v0
.end method

.method public getDashMpdUrl()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getDislikeCount()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrames()Ljava/util/List;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHlsUrl()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getLanguageInfo()Ljava/util/Locale;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLicence()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getLikeCount()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getMetaInfo()Ljava/util/List;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacy()Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->PUBLIC:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    return-object v0
.end method

.method public getRelatedItems()Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRelatedStreams()Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getRelatedItems()Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;

    move-result-object v0

    instance-of v1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;

    return-object v1

    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStreamSegments()Ljava/util/List;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;
.end method

.method public getSubChannelAvatars()Ljava/util/List;
    .registers 2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getSubChannelName()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getSubChannelUrl()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getSubtitles(Lcom/gold/youtube/om7753/extractor/MediaFormat;)Ljava/util/List;
    .registers 3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitlesDefault()Ljava/util/List;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportInfo()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getThumbnails()Ljava/util/List;
.end method

.method public getTimeStamp()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getTimestampSeconds(Ljava/lang/String;)J
    .registers 15

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException; {:try_start_2 .. :try_end_a} :catch_7b

    nop

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_78

    move-object v2, v0

    move-object v3, v0

    nop

    :try_start_14
    const-string v4, "(\\d+)s"

    invoke-static {v4, v1}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    const-string v4, "(\\d+)m"

    invoke-static {v4, v1}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    const-string v4, "(\\d+)h"

    invoke-static {v4, v1}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_2c
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_14 .. :try_end_28} :catch_2a

    move-object v0, v4

    goto :goto_40

    :catch_2a
    move-exception v0

    goto :goto_70

    :catch_2c
    move-exception v4

    :try_start_2d
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_40

    const-string v5, "t=(\\d+)"

    invoke-static {v5, v1}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    :cond_40
    :goto_40
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_49

    move v4, v5

    goto :goto_4d

    :cond_49
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_4d
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_55

    move v6, v5

    goto :goto_59

    :cond_55
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_59
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_60

    goto :goto_64

    :cond_60
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_64
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_2d .. :try_end_64} :catch_2a

    :goto_64
    int-to-long v7, v4

    const-wide/16 v9, 0x3c

    int-to-long v11, v6

    mul-long/2addr v11, v9

    add-long/2addr v7, v11

    const-wide/16 v9, 0xe10

    int-to-long v11, v5

    mul-long/2addr v11, v9

    add-long/2addr v7, v11

    return-wide v7

    :goto_70
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "Could not get timestamp."

    invoke-direct {v2, v3, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_78
    const-wide/16 v2, 0x0

    return-wide v2

    :catch_7b
    move-exception v0

    const-wide/16 v1, -0x2

    return-wide v1
.end method

.method public getUploadDate()Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .registers 2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public abstract getUploaderName()Ljava/lang/String;
.end method

.method public getUploaderSubscriberCount()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract getUploaderUrl()Ljava/lang/String;
.end method

.method public abstract getVideoOnlyStreams()Ljava/util/List;
.end method

.method public abstract getVideoStreams()Ljava/util/List;
.end method

.method public getViewCount()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isShortFormContent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isUploaderVerified()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
