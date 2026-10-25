.class public Lus/shandian/giga/get/DownloadInitializer;
.super Ljava/lang/Thread;
.source "DownloadInitializer.java"


# instance fields
.field private mConn:Ljava/net/HttpURLConnection;

.field private final mMission:Lus/shandian/giga/get/DownloadMission;


# direct methods
.method constructor <init>(Lus/shandian/giga/get/DownloadMission;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    const/4 p1, 0x0

    iput-object p1, p0, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private dispose()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method


# virtual methods
.method public interrupt()V
    .registers 2

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadInitializer;->dispose()V

    :cond_a
    return-void
.end method

.method public run()V
    .registers 23

    move-object/from16 v1, p0

    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v2, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_e

    const/4 v2, -0x1

    invoke-virtual {v0, v4, v3, v2}, Lus/shandian/giga/get/DownloadMission;->resetState(ZZI)V

    :cond_e
    const/16 v2, 0xcc

    const/16 v5, 0xcc

    const/4 v6, 0x0

    :goto_13
    :try_start_13
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v7, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    const-wide/16 v13, 0x0

    if-nez v0, :cond_99

    iget v0, v7, Lus/shandian/giga/get/DownloadMission;->current:I

    if-nez v0, :cond_99

    const-wide v7, 0x7fffffffffffffffL

    move-wide v9, v13

    const/4 v0, 0x0

    :goto_26
    iget-object v11, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v12, v11, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v12, v12

    if-ge v0, v12, :cond_71

    iget-boolean v11, v11, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v11, :cond_71

    iget-object v15, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v11, v15, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    aget-object v16, v11, v0

    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v15 .. v21}, Lus/shandian/giga/get/DownloadMission;->openConnection(Ljava/lang/String;ZJJ)Ljava/net/HttpURLConnection;

    move-result-object v11

    iput-object v11, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    iget-object v12, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v12, v4, v11}, Lus/shandian/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    invoke-direct/range {p0 .. p0}, Lus/shandian/giga/get/DownloadInitializer;->dispose()V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    if-eqz v11, :cond_52

    return-void

    :cond_52
    iget-object v11, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-static {v11}, Lus/shandian/giga/util/Utility;->getTotalContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v11

    if-nez v0, :cond_64

    iget-object v15, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iget-object v15, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput-wide v11, v15, Lus/shandian/giga/get/Mission;->length:J

    :cond_64
    cmp-long v15, v11, v13

    if-lez v15, :cond_69

    add-long/2addr v9, v11

    :cond_69
    cmp-long v15, v11, v7

    if-gez v15, :cond_6e

    move-wide v7, v11

    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_71
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput-wide v9, v0, Lus/shandian/giga/get/DownloadMission;->nearLength:J

    iget-object v9, v0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    if-eqz v9, :cond_ca

    iget-boolean v9, v9, Lus/shandian/giga/postprocessing/Postprocessing;->reserveSpace:Z

    if-eqz v9, :cond_ca

    const-wide/16 v9, 0x1

    cmp-long v11, v7, v9

    if-gez v11, :cond_8b

    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    const-wide/32 v7, 0x500000

    aput-wide v7, v0, v4

    goto :goto_ca

    :cond_8b
    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    const-wide/32 v9, 0x9600000

    cmp-long v11, v7, v9

    if-gez v11, :cond_95

    goto :goto_96

    :cond_95
    move-wide v7, v9

    :goto_96
    aput-wide v7, v0, v4

    goto :goto_ca

    :cond_99
    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Lus/shandian/giga/get/DownloadMission;->openConnection(ZJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v7, v4, v0}, Lus/shandian/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    invoke-direct/range {p0 .. p0}, Lus/shandian/giga/get/DownloadInitializer;->dispose()V

    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_1f0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_ba

    goto/16 :goto_1f0

    :cond_ba
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-static {v7}, Lus/shandian/giga/util/Utility;->getTotalContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v7

    iput-wide v7, v0, Lus/shandian/giga/get/Mission;->length:J

    :cond_ca
    :goto_ca
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-wide v7, v0, Lus/shandian/giga/get/Mission;->length:J

    const/4 v9, 0x0

    cmp-long v10, v7, v13

    if-eqz v10, :cond_1ed

    if-ne v5, v2, :cond_d7

    goto/16 :goto_1ed

    :cond_d7
    const-wide/16 v10, -0x1

    cmp-long v0, v7, v10

    if-nez v0, :cond_f3

    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v7, 0xc8

    if-ne v0, v7, :cond_f3

    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    new-array v7, v4, [I

    iput-object v7, v0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    iput-wide v13, v0, Lus/shandian/giga/get/Mission;->length:J

    iput-boolean v3, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    goto/16 :goto_166

    :cond_f3
    iget-object v15, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    const/16 v16, 0x1

    iget-wide v7, v15, Lus/shandian/giga/get/Mission;->length:J

    const-wide/16 v10, 0xa

    sub-long v17, v7, v10

    move-wide/from16 v19, v7

    invoke-virtual/range {v15 .. v20}, Lus/shandian/giga/get/DownloadMission;->openConnection(ZJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v7, v4, v0}, Lus/shandian/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    invoke-direct/range {p0 .. p0}, Lus/shandian/giga/get/DownloadInitializer;->dispose()V

    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_1ec

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_11b

    goto/16 :goto_1ec

    :cond_11b
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v7, v0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    monitor-enter v7
    :try_end_120
    .catch Ljava/io/InterruptedIOException; {:try_start_13 .. :try_end_120} :catch_24c
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_13 .. :try_end_120} :catch_24c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_120} :catch_1f1

    :try_start_120
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v8, 0xce

    if-ne v0, v8, :cond_14f

    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v8, v0, Lus/shandian/giga/get/DownloadMission;->threadCount:I

    if-le v8, v3, :cond_148

    iget-wide v10, v0, Lus/shandian/giga/get/Mission;->length:J

    const-wide/32 v12, 0x80000

    div-long v12, v10, v12

    long-to-int v8, v12

    const/high16 v12, 0x80000

    mul-int v12, v12, v8

    int-to-long v12, v12

    cmp-long v14, v12, v10

    if-gez v14, :cond_143

    add-int/lit8 v8, v8, 0x1

    :cond_143
    new-array v8, v8, [I

    iput-object v8, v0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    goto :goto_157

    :cond_148
    new-array v8, v4, [I

    iput-object v8, v0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    iput-boolean v4, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    goto :goto_157

    :cond_14f
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    new-array v8, v4, [I

    iput-object v8, v0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    iput-boolean v4, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    :goto_157
    monitor-exit v7
    :try_end_158
    .catchall {:try_start_120 .. :try_end_158} :catchall_1e9

    :try_start_158
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_1e8

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_166

    goto/16 :goto_1e8

    :cond_166
    :goto_166
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getStream()Lcom/gold/youtube/om7753/streams/io/SharpStream;

    move-result-object v7
    :try_end_16e
    .catch Ljava/io/InterruptedIOException; {:try_start_158 .. :try_end_16e} :catch_24c
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_158 .. :try_end_16e} :catch_24c
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_16e} :catch_1f1

    :try_start_16e
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v8, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    iget v10, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-wide v10, v8, v10

    iget-wide v12, v0, Lus/shandian/giga/get/Mission;->length:J

    add-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->setLength(J)V

    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v8, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    iget v0, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-wide v10, v8, v0

    invoke-virtual {v7, v10, v11}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V
    :try_end_187
    .catchall {:try_start_16e .. :try_end_187} :catchall_1da

    :try_start_187
    invoke-virtual {v7}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_1d9

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_197

    goto :goto_1d9

    :cond_197
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v7, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    if-nez v7, :cond_1d0

    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    if-eqz v0, :cond_1d0

    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    const-string v7, "ETAG"

    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    const-string v8, "Last-Modified"

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v10, v8, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    iget v8, v8, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-object v8, v10, v8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1c3

    invoke-virtual {v8, v0}, Lus/shandian/giga/get/MissionRecoveryInfo;->setValidateCondition(Ljava/lang/String;)V

    goto :goto_1d0

    :cond_1c3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1cd

    invoke-virtual {v8, v7}, Lus/shandian/giga/get/MissionRecoveryInfo;->setValidateCondition(Ljava/lang/String;)V

    goto :goto_1d0

    :cond_1cd
    invoke-virtual {v8, v9}, Lus/shandian/giga/get/MissionRecoveryInfo;->setValidateCondition(Ljava/lang/String;)V

    :cond_1d0
    :goto_1d0
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput-boolean v4, v0, Lus/shandian/giga/get/DownloadMission;->running:Z
    :try_end_1d4
    .catch Ljava/io/InterruptedIOException; {:try_start_187 .. :try_end_1d4} :catch_24c
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_187 .. :try_end_1d4} :catch_24c
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_1d4} :catch_1f1

    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->start()V

    :cond_1d9
    :goto_1d9
    return-void

    :catchall_1da
    move-exception v0

    move-object v8, v0

    if-eqz v7, :cond_1e7

    :try_start_1de
    invoke-virtual {v7}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V
    :try_end_1e1
    .catchall {:try_start_1de .. :try_end_1e1} :catchall_1e2

    goto :goto_1e7

    :catchall_1e2
    move-exception v0

    move-object v7, v0

    :try_start_1e4
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e7
    :goto_1e7
    throw v8
    :try_end_1e8
    .catch Ljava/io/InterruptedIOException; {:try_start_1e4 .. :try_end_1e8} :catch_24c
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1e4 .. :try_end_1e8} :catch_24c
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_1e8} :catch_1f1

    :cond_1e8
    :goto_1e8
    return-void

    :catchall_1e9
    move-exception v0

    :try_start_1ea
    monitor-exit v7
    :try_end_1eb
    .catchall {:try_start_1ea .. :try_end_1eb} :catchall_1e9

    :try_start_1eb
    throw v0

    :cond_1ec
    :goto_1ec
    return-void

    :cond_1ed
    :goto_1ed
    invoke-virtual {v0, v2, v9}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V
    :try_end_1f0
    .catch Ljava/io/InterruptedIOException; {:try_start_1eb .. :try_end_1f0} :catch_24c
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1eb .. :try_end_1f0} :catch_24c
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_1f0} :catch_1f1

    :cond_1f0
    :goto_1f0
    return-void

    :catch_1f1
    move-exception v0

    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v7, v7, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v7, :cond_24c

    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_1ff

    goto :goto_24c

    :cond_1ff
    instance-of v7, v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    if-eqz v7, :cond_215

    move-object v7, v0

    check-cast v7, Lus/shandian/giga/get/DownloadMission$HttpError;

    iget v7, v7, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    const/16 v8, 0x193

    if-ne v7, v8, :cond_215

    invoke-virtual/range {p0 .. p0}, Lus/shandian/giga/get/DownloadInitializer;->interrupt()V

    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0, v8}, Lus/shandian/giga/get/DownloadMission;->doRecover(I)V

    return-void

    :cond_215
    instance-of v7, v0, Ljava/io/IOException;

    if-eqz v7, :cond_22d

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Permission denied"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_22d

    iget-object v2, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    return-void

    :cond_22d
    add-int/lit8 v7, v6, 0x1

    iget-object v8, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v8, v8, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    if-le v6, v8, :cond_242

    const-string v2, "DownloadInitializer"

    const-string v3, "initializer failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v2, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V

    return-void

    :cond_242
    const-string v6, "DownloadInitializer"

    const-string v8, "initializer failed, retrying"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    goto/16 :goto_13

    :catch_24c
    :cond_24c
    :goto_24c
    return-void
.end method
