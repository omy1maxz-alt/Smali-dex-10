.class public Lus/shandian/giga/get/DownloadRunnable;
.super Ljava/lang/Thread;
.source "DownloadRunnable.java"


# instance fields
.field private mConn:Ljava/net/HttpURLConnection;

.field private final mId:I

.field private final mMission:Lus/shandian/giga/get/DownloadMission;


# direct methods
.method constructor <init>(Lus/shandian/giga/get/DownloadMission;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lus/shandian/giga/get/DownloadMission;

    iput-object p1, p0, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput p2, p0, Lus/shandian/giga/get/DownloadRunnable;->mId:I

    return-void
.end method

.method private releaseBlock(Lus/shandian/giga/get/DownloadMission$Block;J)V
    .registers 9

    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v1, p1, Lus/shandian/giga/get/DownloadMission$Block;->position:I

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_c

    const/4 p1, -0x1

    goto :goto_e

    :cond_c
    iget p1, p1, Lus/shandian/giga/get/DownloadMission$Block;->done:I

    :goto_e
    invoke-virtual {v0, v1, p1}, Lus/shandian/giga/get/DownloadMission;->releaseBlock(II)V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .registers 2

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    :try_start_3
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-void
.end method

.method public run()V
    .registers 22

    move-object/from16 v1, p0

    :try_start_2
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getStream()Lcom/gold/youtube/om7753/streams/io/SharpStream;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_15b

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_d
    iget-object v7, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v7, v7, Lus/shandian/giga/get/DownloadMission;->running:Z

    const/4 v8, -0x1

    if-eqz v7, :cond_148

    iget-object v7, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v9, v7, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-ne v9, v8, :cond_148

    if-nez v5, :cond_20

    invoke-virtual {v7}, Lus/shandian/giga/get/DownloadMission;->acquireBlock()Lus/shandian/giga/get/DownloadMission$Block;

    move-result-object v0

    :cond_20
    move-object v7, v0

    if-nez v7, :cond_25

    goto/16 :goto_148

    :cond_25
    iget v0, v7, Lus/shandian/giga/get/DownloadMission$Block;->position:I

    int-to-long v9, v0

    const-wide/32 v11, 0x80000

    mul-long v9, v9, v11

    add-long/2addr v11, v9

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    iget v0, v7, Lus/shandian/giga/get/DownloadMission$Block;->done:I

    int-to-long v3, v0

    add-long/2addr v9, v3

    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-wide v3, v0, Lus/shandian/giga/get/Mission;->length:J

    cmp-long v15, v11, v3

    if-ltz v15, :cond_3f

    sub-long v11, v3, v13

    :cond_3f
    const/16 v16, 0x0

    move-object v15, v0

    move-wide/from16 v17, v9

    move-wide/from16 v19, v11

    :try_start_46
    invoke-virtual/range {v15 .. v20}, Lus/shandian/giga/get/DownloadMission;->openConnection(ZJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    iget-object v3, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v4, v1, Lus/shandian/giga/get/DownloadRunnable;->mId:I

    invoke-virtual {v3, v4, v0}, Lus/shandian/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0x1a0

    if-ne v0, v3, :cond_81

    iget v0, v7, Lus/shandian/giga/get/DownloadMission$Block;->done:I

    if-lez v0, :cond_7b

    iget-object v3, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    neg-int v0, v0

    int-to-long v13, v0

    invoke-virtual {v3, v13, v14}, Lus/shandian/giga/get/DownloadMission;->notifyProgress(J)V

    const/4 v3, 0x0

    iput v3, v7, Lus/shandian/giga/get/DownloadMission$Block;->done:I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_6b} :catch_f9
    .catchall {:try_start_46 .. :try_end_6b} :catchall_f6

    :try_start_6b
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_70} :catch_77
    .catchall {:try_start_6b .. :try_end_70} :catchall_73

    move-object v0, v7

    const/4 v5, 0x1

    goto :goto_d

    :catchall_73
    move-exception v0

    const/4 v3, 0x1

    goto/16 :goto_141

    :catch_77
    move-exception v0

    const/4 v5, 0x1

    goto/16 :goto_fa

    :cond_7b
    :try_start_7b
    new-instance v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    invoke-direct {v0, v3}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    throw v0
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_81} :catch_f9
    .catchall {:try_start_7b .. :try_end_81} :catchall_f6

    :cond_81
    :try_start_81
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xce

    if-eq v0, v3, :cond_9d

    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    new-instance v3, Lus/shandian/giga/get/DownloadMission$HttpError;

    iget-object v4, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-direct {v3, v4}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    invoke-virtual {v0, v3}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V

    goto/16 :goto_13c

    :cond_9d
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v3, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    iget v0, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-wide v4, v3, v0

    add-long/2addr v4, v9

    invoke-virtual {v2, v4, v5}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V

    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_af} :catch_f3
    .catchall {:try_start_81 .. :try_end_af} :catchall_f0

    const/high16 v0, 0x10000

    :try_start_b1
    new-array v4, v0, [B

    :goto_b3
    cmp-long v5, v9, v11

    if-gtz v5, :cond_d6

    iget-object v5, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v5, v5, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v5, :cond_d6

    const/4 v13, 0x0

    invoke-virtual {v3, v4, v13, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v8, :cond_d6

    invoke-virtual {v2, v4, v13, v5}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([BII)V

    int-to-long v13, v5

    add-long/2addr v9, v13

    iget v0, v7, Lus/shandian/giga/get/DownloadMission$Block;->done:I

    add-int/2addr v0, v5

    iput v0, v7, Lus/shandian/giga/get/DownloadMission$Block;->done:I

    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0, v13, v14}, Lus/shandian/giga/get/DownloadMission;->notifyProgress(J)V
    :try_end_d3
    .catchall {:try_start_b1 .. :try_end_d3} :catchall_e2

    const/high16 v0, 0x10000

    goto :goto_b3

    :cond_d6
    if-eqz v3, :cond_db

    :try_start_d8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_f3
    .catchall {:try_start_d8 .. :try_end_db} :catchall_f0

    :cond_db
    sub-long/2addr v11, v9

    invoke-direct {v1, v7, v11, v12}, Lus/shandian/giga/get/DownloadRunnable;->releaseBlock(Lus/shandian/giga/get/DownloadMission$Block;J)V

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto :goto_137

    :catchall_e2
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_ef

    :try_start_e6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ea

    goto :goto_ef

    :catchall_ea
    move-exception v0

    move-object v3, v0

    :try_start_ec
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ef
    :goto_ef
    throw v4
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f0} :catch_f3
    .catchall {:try_start_ec .. :try_end_f0} :catchall_f0

    :catchall_f0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_141

    :catch_f3
    move-exception v0

    const/4 v5, 0x0

    goto :goto_fa

    :catchall_f6
    move-exception v0

    move v3, v5

    goto :goto_141

    :catch_f9
    move-exception v0

    :goto_fa
    :try_start_fa
    iget-object v3, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v3, v3, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v3, :cond_13a

    instance-of v3, v0, Ljava/nio/channels/ClosedByInterruptException;

    if-eqz v3, :cond_105

    goto :goto_13a

    :cond_105
    instance-of v3, v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    if-eqz v3, :cond_126

    move-object v3, v0

    check-cast v3, Lus/shandian/giga/get/DownloadMission$HttpError;

    iget v3, v3, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    const/16 v4, 0x193

    if-ne v3, v4, :cond_126

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    iget v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mId:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_11f

    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0, v4}, Lus/shandian/giga/get/DownloadMission;->doRecover(I)V
    :try_end_11f
    .catchall {:try_start_fa .. :try_end_11f} :catchall_f6

    :cond_11f
    if-nez v5, :cond_125

    sub-long/2addr v11, v9

    invoke-direct {v1, v7, v11, v12}, Lus/shandian/giga/get/DownloadRunnable;->releaseBlock(Lus/shandian/giga/get/DownloadMission$Block;J)V

    :cond_125
    return-void

    :cond_126
    const/4 v3, 0x1

    add-int/lit8 v4, v6, 0x1

    :try_start_129
    iget-object v13, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v14, v13, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    if-lt v6, v14, :cond_135

    invoke-virtual {v13, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V
    :try_end_132
    .catchall {:try_start_129 .. :try_end_132} :catchall_f6

    if-nez v5, :cond_148

    goto :goto_13c

    :cond_135
    move v6, v4

    const/4 v5, 0x1

    :goto_137
    move-object v0, v7

    goto/16 :goto_d

    :cond_13a
    :goto_13a
    if-nez v5, :cond_148

    :goto_13c
    sub-long/2addr v11, v9

    invoke-direct {v1, v7, v11, v12}, Lus/shandian/giga/get/DownloadRunnable;->releaseBlock(Lus/shandian/giga/get/DownloadMission$Block;J)V

    goto :goto_148

    :goto_141
    if-nez v3, :cond_147

    sub-long/2addr v11, v9

    invoke-direct {v1, v7, v11, v12}, Lus/shandian/giga/get/DownloadRunnable;->releaseBlock(Lus/shandian/giga/get/DownloadMission$Block;J)V

    :cond_147
    throw v0

    :cond_148
    :goto_148
    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v2, v0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-ne v2, v8, :cond_15a

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_15a

    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->notifyFinished()V

    :cond_15a
    return-void

    :catch_15b
    move-exception v0

    iget-object v2, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v2, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V

    return-void
.end method
