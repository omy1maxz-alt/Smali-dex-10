.class public Lus/shandian/giga/get/DownloadMissionRecover;
.super Ljava/lang/Thread;
.source "DownloadMissionRecover.java"


# instance fields
.field private mConn:Ljava/net/HttpURLConnection;

.field private final mErrCode:I

.field private mExtractor:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;

.field private final mMission:Lus/shandian/giga/get/DownloadMission;

.field private final mNotInitialized:Z

.field private mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;


# direct methods
.method constructor <init>(Lus/shandian/giga/get/DownloadMission;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    if-nez v0, :cond_f

    iget p1, p1, Lus/shandian/giga/get/DownloadMission;->current:I

    if-nez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iput-boolean p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mNotInitialized:Z

    iput p2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mErrCode:I

    return-void
.end method

.method private disconnect()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    :try_start_a
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1b

    :catchall_10
    move-exception v1

    iget-object v2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_1b
    .catchall {:try_start_a .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v1

    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    throw v1

    :catch_1b
    :goto_1b
    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private parseContentRange(Ljava/lang/String;)[J
    .registers 10

    const/4 v0, 0x3

    new-array v0, v0, [J

    if-nez p1, :cond_6

    return-object v0

    :cond_6
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bytes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    return-object v0

    :cond_13
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x2d

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v4, 0x2f

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, 0x0

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v0, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v0, v2

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_52

    const-wide/16 v3, -0x1

    aput-wide v3, v0, v2

    goto :goto_58

    :cond_52
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_58} :catch_58

    :catch_58
    :goto_58
    return-object v0
.end method

.method private recover(Ljava/lang/String;Z)V
    .registers 7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v1, v1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string v1, "recover()  name=%s  isStale=%s  url=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadMissionRecover"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v1, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    iget v3, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    aput-object p1, v1, v3

    if-nez p1, :cond_38

    new-array p1, v2, [Ljava/lang/String;

    iput-object p1, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    const/16 p1, 0x3f5

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    return-void

    :cond_38
    iget-boolean p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mNotInitialized:Z

    if-eqz p1, :cond_3d

    return-void

    :cond_3d
    if-eqz p2, :cond_43

    const/4 p1, -0x1

    invoke-virtual {v0, v2, v2, p1}, Lus/shandian/giga/get/DownloadMission;->resetState(ZZI)V

    :cond_43
    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->writeThisToFile()V

    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean p1, p1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz p1, :cond_5e

    invoke-super {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-eqz p1, :cond_55

    goto :goto_5e

    :cond_55
    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput-boolean v2, p1, Lus/shandian/giga/get/DownloadMission;->running:Z

    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->start()V

    :cond_5e
    :goto_5e
    return-void
.end method

.method private resolve(Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v0}, Lus/shandian/giga/get/MissionRecoveryInfo;->getValidateCondition()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "DownloadMissionRecover"

    const-string/jumbo v1, "validation condition not defined, the resource can be stale"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    const/4 v1, 0x0

    if-nez v0, :cond_90

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v0}, Lus/shandian/giga/get/MissionRecoveryInfo;->getValidateCondition()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_90

    :cond_20
    :try_start_20
    iget-object v2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    const/4 v4, 0x1

    iget-wide v7, v2, Lus/shandian/giga/get/Mission;->length:J

    const-wide/16 v5, 0xa

    sub-long v5, v7, v5

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lus/shandian/giga/get/DownloadMission;->openConnection(Ljava/lang/String;ZJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    const-string v2, "If-Range"

    iget-object v3, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v3}, Lus/shandian/giga/get/MissionRecoveryInfo;->getValidateCondition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    const/4 v2, -0x3

    iget-object v3, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2, v3}, Lus/shandian/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq v0, v2, :cond_84

    const/16 v2, 0xce

    if-eq v0, v2, :cond_5d

    const/16 v1, 0x19d

    if-ne v0, v1, :cond_57

    goto :goto_84

    :cond_57
    new-instance p1, Lus/shandian/giga/get/DownloadMission$HttpError;

    invoke-direct {p1, v0}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    throw p1

    :cond_5d
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Range"

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/shandian/giga/get/DownloadMissionRecover;->parseContentRange(Ljava/lang/String;)[J

    move-result-object v0

    const/4 v2, 0x2

    aget-wide v4, v0, v2

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_7d

    aget-wide v4, v0, v2

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-wide v6, v0, Lus/shandian/giga/get/Mission;->length:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7d

    const/4 v1, 0x1

    :cond_7d
    invoke-direct {p0, p1, v1}, Lus/shandian/giga/get/DownloadMissionRecover;->recover(Ljava/lang/String;Z)V
    :try_end_80
    .catchall {:try_start_20 .. :try_end_80} :catchall_8b

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    return-void

    :cond_84
    :goto_84
    :try_start_84
    invoke-direct {p0, p1, v3}, Lus/shandian/giga/get/DownloadMissionRecover;->recover(Ljava/lang/String;Z)V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_8b

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    return-void

    :catchall_8b
    move-exception p1

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    throw p1

    :cond_90
    :goto_90
    invoke-direct {p0, p1, v1}, Lus/shandian/giga/get/DownloadMissionRecover;->recover(Ljava/lang/String;Z)V

    return-void
.end method

.method private resolveStream()V
    .registers 6

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v0}, Lus/shandian/giga/get/MissionRecoveryInfo;->getKind()C

    move-result v0

    const/16 v1, 0x61

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9d

    const/16 v1, 0x73

    if-eq v0, v1, :cond_60

    const/16 v1, 0x76

    if-ne v0, v1, :cond_58

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v0}, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object v0

    goto :goto_28

    :cond_22
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getVideoStreams()Ljava/util/List;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    iget-object v3, v1, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    iget-object v4, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->getDesired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v3

    iget-object v4, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v4

    if-ne v3, v4, :cond_2c

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_cf

    :cond_58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown stream type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v1}, Lus/shandian/giga/get/MissionRecoveryInfo;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getSubtitles(Lcom/gold/youtube/om7753/extractor/MediaFormat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;->getLanguageTag()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->getDesired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;->isAutoGenerated()Z

    move-result v3

    iget-object v4, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2()Z

    move-result v4

    if-ne v3, v4, :cond_70

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v2

    goto :goto_cf

    :cond_9d
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getAudioStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result v3

    iget-object v4, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->getDesiredBitrate()I

    move-result v4

    if-ne v3, v4, :cond_a7

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v3

    iget-object v4, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v4

    if-ne v3, v4, :cond_a7

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v2

    :cond_cf
    :goto_cf
    invoke-direct {p0, v2}, Lus/shandian/giga/get/DownloadMissionRecover;->resolve(Ljava/lang/String;)V

    return-void
.end method

.method private test()Z
    .registers 9

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v1, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    iget v2, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-object v3, v1, v2

    const/4 v7, 0x0

    if-nez v3, :cond_c

    return v7

    :cond_c
    :try_start_c
    aget-object v1, v1, v2

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Lus/shandian/giga/get/DownloadMission;->openConnection(Ljava/lang/String;ZJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    const/4 v2, -0x3

    invoke-virtual {v1, v2, v0}, Lus/shandian/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_25} :catch_33
    .catchall {:try_start_c .. :try_end_25} :catchall_2e

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_33

    const/4 v0, 0x1

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    return v0

    :catchall_2e
    move-exception v0

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    throw v0

    :catch_33
    :cond_33
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    return v7
.end method

.method private tryRecover()V
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    :try_start_5
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getServiceByUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/StreamingService;

    move-result-object v0

    iget-object v2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v2, v2, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getStreamExtractor(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/Extractor;->fetchPage()V
    :try_end_1a
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v0

    iput-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;

    throw v0

    :cond_1f
    :goto_1f
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_b2

    invoke-super {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_2d

    goto/16 :goto_b2

    :cond_2d
    iget-boolean v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mNotInitialized:Z

    if-nez v0, :cond_43

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v2, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    iget v3, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    aput-object v1, v2, v3

    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    aget-object v0, v0, v3

    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->resolveStream()V

    return-void

    :cond_43
    const-string v0, "DownloadMissionRecover"

    const-string v1, "mission is not fully initialized, this will take a while"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    const/4 v0, 0x0

    :try_start_4b
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v2, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    iget-object v3, v1, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_8e

    iget-object v1, v1, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    aget-object v1, v1, v2

    iput-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->test()Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_85

    :cond_61
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v1, v1, Lus/shandian/giga/get/DownloadMission;->running:Z
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_ac

    if-nez v1, :cond_6c

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput v0, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    return-void

    :cond_6c
    :try_start_6c
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->resolveStream()V

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v1, v1, Lus/shandian/giga/get/DownloadMission;->running:Z
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_ac

    if-nez v1, :cond_7a

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput v0, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    return-void

    :cond_7a
    :try_start_7a
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v2, v1, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    iget v1, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-object v1, v2, v1

    if-nez v1, :cond_85

    goto :goto_8e

    :cond_85
    :goto_85
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v2, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lus/shandian/giga/get/DownloadMission;->current:I
    :try_end_8d
    .catchall {:try_start_7a .. :try_end_8d} :catchall_ac

    goto :goto_4a

    :cond_8e
    :goto_8e
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput v0, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->writeThisToFile()V

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v1, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v1, :cond_ab

    invoke-super {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_a2

    goto :goto_ab

    :cond_a2
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput-boolean v0, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->start()V

    :cond_ab
    :goto_ab
    return-void

    :catchall_ac
    move-exception v1

    iget-object v2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput v0, v2, Lus/shandian/giga/get/DownloadMission;->current:I

    throw v1

    :cond_b2
    :goto_b2
    return-void
.end method


# virtual methods
.method public interrupt()V
    .registers 2

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    :cond_a
    return-void
.end method

.method public run()V
    .registers 6

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v1, v0, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    iget v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mErrCode:I

    invoke-virtual {v0, v1, v2}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    return-void

    :cond_d
    const/4 v0, 0x0

    :goto_e
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v4, v3, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    if-ge v0, v4, :cond_2b

    :try_start_16
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->tryRecover()V
    :try_end_19
    .catch Ljava/io/InterruptedIOException; {:try_start_16 .. :try_end_19} :catch_2a
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_16 .. :try_end_19} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception v2

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_2a

    invoke-super {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_2a

    :cond_28
    move v0, v1

    goto :goto_e

    :catch_2a
    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    iget v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mErrCode:I

    invoke-virtual {v3, v0, v2}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    return-void
.end method
