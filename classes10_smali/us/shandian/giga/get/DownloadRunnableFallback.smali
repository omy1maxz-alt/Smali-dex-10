.class public Lus/shandian/giga/get/DownloadRunnableFallback;
.super Ljava/lang/Thread;
.source "DownloadRunnableFallback.java"


# instance fields
.field private mConn:Ljava/net/HttpURLConnection;

.field private mF:Lcom/gold/youtube/om7753/streams/io/SharpStream;

.field private mIs:Ljava/io/InputStream;

.field private final mMission:Lus/shandian/giga/get/DownloadMission;

.field private mRetryCount:I


# direct methods
.method constructor <init>(Lus/shandian/giga/get/DownloadMission;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    iput-object p1, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    return-void
.end method

.method private dispose()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mIs:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_d

    :cond_7
    :try_start_7
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_15

    :catchall_d
    move-exception v0

    iget-object v1, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_14

    :catch_14
    nop

    :goto_15
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mF:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    :cond_1c
    return-void
.end method


# virtual methods
.method public interrupt()V
    .registers 2

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_a

    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-void
.end method

.method public run()V
    .registers 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-wide v2, v0, Lus/shandian/giga/get/DownloadMission;->fallbackResumeOffset:J

    const-wide/16 v4, 0x0

    :try_start_8
    iget-object v6, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v6, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    const-wide/16 v12, -0x1

    if-nez v0, :cond_19

    const-wide/16 v7, 0x1

    cmp-long v0, v2, v7

    if-gez v0, :cond_17

    goto :goto_19

    :cond_17
    move-wide v14, v2

    goto :goto_1a

    :cond_19
    :goto_19
    move-wide v14, v12

    :goto_1a
    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    move-wide v8, v14

    invoke-virtual/range {v6 .. v11}, Lus/shandian/giga/get/DownloadMission;->openConnection(ZJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    iget v6, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    if-nez v6, :cond_33

    cmp-long v6, v14, v12

    if-nez v6, :cond_33

    const-string v6, "Range"

    const-string v7, "bytes=0-"

    invoke-virtual {v0, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v6, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v6}, Lus/shandian/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v6, 0x1a0

    if-ne v0, v6, :cond_5f

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4a

    goto :goto_5f

    :cond_4a
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    neg-long v8, v2

    invoke-virtual {v0, v8, v9}, Lus/shandian/giga/get/DownloadMission;->notifyProgress(J)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_50} :catch_e5

    :try_start_50
    iget v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    sub-int/2addr v0, v7

    iput v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    new-instance v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    invoke-direct {v0, v6}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    throw v0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception v0

    move-wide v2, v4

    goto/16 :goto_e6

    :cond_5f
    :goto_5f
    :try_start_5f
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v4, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    const/4 v5, 0x0

    if-nez v4, :cond_75

    iget-object v4, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-static {v4}, Lus/shandian/giga/util/Utility;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v8

    cmp-long v4, v8, v12

    if-nez v4, :cond_72

    const/4 v4, 0x1

    goto :goto_73

    :cond_72
    const/4 v4, 0x0

    :goto_73
    iput-boolean v4, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    :cond_75
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    if-nez v0, :cond_85

    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_92

    :cond_85
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v4, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    iget v6, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-wide v8, v4, v6

    aget-wide v10, v4, v5

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lus/shandian/giga/get/DownloadMission;->done:J

    :cond_92
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getStream()Lcom/gold/youtube/om7753/streams/io/SharpStream;

    move-result-object v0

    iput-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mF:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    iget-object v4, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v6, v4, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    iget v4, v4, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-wide v8, v6, v4

    add-long/2addr v8, v2

    invoke-virtual {v0, v8, v9}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V

    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mIs:Ljava/io/InputStream;

    const/high16 v0, 0x10000

    new-array v4, v0, [B

    const/4 v6, 0x0

    :goto_b5
    iget-object v8, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v8, v8, Lus/shandian/giga/get/DownloadMission;->running:Z

    const/4 v9, -0x1

    if-eqz v8, :cond_d1

    iget-object v6, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mIs:Ljava/io/InputStream;

    invoke-virtual {v6, v4, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-eq v6, v9, :cond_d1

    iget-object v8, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mF:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v8, v4, v5, v6}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([BII)V

    int-to-long v8, v6

    add-long/2addr v2, v8

    iget-object v10, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v10, v8, v9}, Lus/shandian/giga/get/DownloadMission;->notifyProgress(J)V

    goto :goto_b5

    :cond_d1
    invoke-direct/range {p0 .. p0}, Lus/shandian/giga/get/DownloadRunnableFallback;->dispose()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_d4} :catch_e5

    if-ne v6, v9, :cond_d7

    goto :goto_d8

    :cond_d7
    const/4 v7, 0x0

    :goto_d8
    if-eqz v7, :cond_e0

    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->notifyFinished()V

    goto :goto_e4

    :cond_e0
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput-wide v2, v0, Lus/shandian/giga/get/DownloadMission;->fallbackResumeOffset:J

    :goto_e4
    return-void

    :catch_e5
    move-exception v0

    :goto_e6
    invoke-direct/range {p0 .. p0}, Lus/shandian/giga/get/DownloadRunnableFallback;->dispose()V

    iget-object v4, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput-wide v2, v4, Lus/shandian/giga/get/DownloadMission;->fallbackResumeOffset:J

    iget-object v2, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v2, v2, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v2, :cond_121

    instance-of v2, v0, Ljava/nio/channels/ClosedByInterruptException;

    if-eqz v2, :cond_f8

    goto :goto_121

    :cond_f8
    instance-of v2, v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    if-eqz v2, :cond_10e

    move-object v2, v0

    check-cast v2, Lus/shandian/giga/get/DownloadMission$HttpError;

    iget v2, v2, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    const/16 v3, 0x193

    if-ne v2, v3, :cond_10e

    invoke-direct/range {p0 .. p0}, Lus/shandian/giga/get/DownloadRunnableFallback;->dispose()V

    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0, v3}, Lus/shandian/giga/get/DownloadMission;->doRecover(I)V

    return-void

    :cond_10e
    iget v2, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    iget-object v3, v1, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v4, v3, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    if-lt v2, v4, :cond_11e

    invoke-virtual {v3, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V

    return-void

    :cond_11e
    invoke-virtual/range {p0 .. p0}, Lus/shandian/giga/get/DownloadRunnableFallback;->run()V

    :cond_121
    :goto_121
    return-void
.end method
