.class public Lus/shandian/giga/get/DownloadMission;
.super Lus/shandian/giga/get/Mission;
.source "DownloadMission.java"


# static fields
.field private static final serialVersionUID:J = 0x6L


# instance fields
.field final LOCK:Ljava/lang/Object;

.field private transient blockAcquired:[Z

.field blocks:[I

.field public current:I

.field public volatile done:J

.field public enqueued:Z

.field public errCode:I

.field public errObject:Ljava/lang/Exception;

.field volatile fallbackResumeOffset:J

.field private transient finishCount:I

.field public transient init:Ljava/lang/Thread;

.field public transient mHandler:Landroid/os/Handler;

.field public transient maxRetry:I

.field public transient metadata:Ljava/io/File;

.field public nearLength:J

.field public offsets:[J

.field public psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

.field public volatile psState:I

.field public recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

.field public volatile transient running:Z

.field public threadCount:I

.field public transient threads:[Ljava/lang/Thread;

.field public unknownLength:Z

.field public urls:[Ljava/lang/String;

.field private volatile transient writingToFile:Z

.field private transient writingToFileNext:J


# direct methods
.method public static synthetic $r8$lambda$J0GR1urTFneOp2O30GpOM3TNG0I(Lus/shandian/giga/get/DownloadMission;)V
    .registers 1

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->doPostprocessing()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;CLus/shandian/giga/postprocessing/Postprocessing;)V
    .registers 8

    invoke-direct {p0}, Lus/shandian/giga/get/Mission;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->threadCount:I

    const/4 v1, -0x1

    iput v1, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    new-instance v2, Lus/shandian/giga/get/DownloadMission$Lock;

    invoke-direct {v2, v1}, Lus/shandian/giga/get/DownloadMission$Lock;-><init>(Lus/shandian/giga/get/DownloadMission$1;)V

    iput-object v2, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Thread;

    iput-object v2, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    iput-object v1, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_36

    iput-object p1, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    iput-char p3, p0, Lus/shandian/giga/get/Mission;->kind:C

    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    iput-boolean v2, p0, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    iput-object p2, p0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    iput-object p4, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    return-void

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "urls array is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private deleteThisFromFile()Z
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    const/4 v2, 0x0

    iput-object v2, p0, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private doPostprocessing()V
    .registers 11

    const/4 v0, -0x1

    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    const/16 v3, 0x3ef

    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_12
    iget-object v6, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    invoke-virtual {v6, p0}, Lus/shandian/giga/postprocessing/Postprocessing;->run(Lus/shandian/giga/get/DownloadMission;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_23
    .catchall {:try_start_12 .. :try_end_17} :catchall_21

    iget v2, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-ne v2, v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    invoke-direct {p0, v4}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    goto :goto_5f

    :catchall_21
    move-exception v1

    goto :goto_7e

    :catch_23
    move-exception v6

    :try_start_24
    const-string v7, "DownloadMission"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Post-processing failed. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    invoke-virtual {v9}, Lus/shandian/giga/postprocessing/Postprocessing;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v7, v6, Ljava/io/InterruptedIOException;

    if-nez v7, :cond_6f

    instance-of v7, v6, Ljava/nio/channels/ClosedByInterruptException;

    if-nez v7, :cond_6f

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_6f

    :cond_4f
    iget v1, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-ne v1, v0, :cond_55

    iput v3, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I
    :try_end_55
    .catchall {:try_start_24 .. :try_end_55} :catchall_21

    :cond_55
    iget v1, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-ne v1, v0, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x0

    :goto_5b
    invoke-direct {p0, v4}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    move-object v1, v6

    :goto_5f
    iget v2, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-eq v2, v0, :cond_6b

    if-nez v1, :cond_67

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    :cond_67
    invoke-virtual {p0, v3, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    return-void

    :cond_6b
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->notifyFinished()V

    return-void

    :cond_6f
    :goto_6f
    const/16 v2, 0x3f0

    :try_start_71
    invoke-virtual {p0, v2, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_21

    iget v1, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-ne v1, v0, :cond_79

    goto :goto_7a

    :cond_79
    const/4 v4, 0x0

    :goto_7a
    invoke-direct {p0, v4}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    return-void

    :goto_7e
    iget v2, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-ne v2, v0, :cond_83

    goto :goto_84

    :cond_83
    const/4 v4, 0x0

    :goto_84
    invoke-direct {p0, v4}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    throw v1
.end method

.method private initializer()V
    .registers 3

    new-instance v0, Lus/shandian/giga/get/DownloadInitializer;

    invoke-direct {v0, p0}, Lus/shandian/giga/get/DownloadInitializer;-><init>(Lus/shandian/giga/get/DownloadMission;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lus/shandian/giga/get/DownloadMission;->runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    return-void
.end method

.method private joinForThreads(I)V
    .registers 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    if-eqz v1, :cond_27

    if-eq v1, v0, :cond_27

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    if-lez p1, :cond_27

    :try_start_17
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1d} :catch_1e

    goto :goto_27

    :catch_1e
    move-exception p1

    const-string v0, "DownloadMission"

    const-string v1, "Initializer thread is still running"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_27
    :goto_27
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v1, :cond_43

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v4, v5, :cond_3d

    goto :goto_40

    :cond_3d
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_43
    :try_start_43
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    array-length v1, v0

    :goto_46
    if-ge v2, v1, :cond_5a

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_51

    goto :goto_57

    :cond_51
    if-lez p1, :cond_57

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_57} :catch_5b

    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_5a
    return-void

    :catch_5b
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A download thread is still running"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_65

    :goto_64
    throw v0

    :goto_65
    goto :goto_64
.end method

.method private notify(I)V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private notifyPostProcessing(I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_c

    if-eq p1, v1, :cond_9

    const-string v0, "Failed"

    goto :goto_e

    :cond_9
    const-string v0, "Completed"

    goto :goto_e

    :cond_c
    const-string v0, "Running"

    :goto_e
    const-string v2, "DownloadMission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " postprocessing on "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_32

    iput p1, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    return-void

    :cond_32
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_35
    iput p1, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->writeThisToFile()V

    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method private pauseThreads()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lus/shandian/giga/get/DownloadMission;->running:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lus/shandian/giga/get/DownloadMission;->joinForThreads(I)V

    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->writeThisToFile()V

    return-void
.end method

.method private runAsync(ILjava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, v0}, Lus/shandian/giga/get/DownloadMission;->runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method

.method private runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-object p2
.end method

.method private writeThisToFileAsync()V
    .registers 3

    new-instance v0, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/get/DownloadMission;)V

    const/4 v1, -0x2

    invoke-direct {p0, v1, v0}, Lus/shandian/giga/get/DownloadMission;->runAsync(ILjava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method acquireBlock()Lus/shandian/giga/get/DownloadMission$Block;
    .registers 6

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lus/shandian/giga/get/DownloadMission;->blockAcquired:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_2a

    aget-boolean v2, v2, v1

    if-nez v2, :cond_27

    iget-object v2, p0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    aget v2, v2, v1

    if-ltz v2, :cond_27

    new-instance v2, Lus/shandian/giga/get/DownloadMission$Block;

    invoke-direct {v2}, Lus/shandian/giga/get/DownloadMission$Block;-><init>()V

    iput v1, v2, Lus/shandian/giga/get/DownloadMission$Block;->position:I

    iget-object v3, p0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    aget v3, v3, v1

    iput v3, v2, Lus/shandian/giga/get/DownloadMission$Block;->done:I

    iget-object v3, p0, Lus/shandian/giga/get/DownloadMission;->blockAcquired:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    monitor-exit v0

    return-object v2

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2a
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    goto :goto_31

    :goto_30
    throw v1

    :goto_31
    goto :goto_30
.end method

.method public delete()Z
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lus/shandian/giga/postprocessing/Postprocessing;->cleanupTemporalDir()V

    :cond_7
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lus/shandian/giga/get/DownloadMission;->notify(I)V

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->deleteThisFromFile()Z

    move-result v0

    invoke-super {p0}, Lus/shandian/giga/get/Mission;->delete()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x0

    :cond_16
    return v0
.end method

.method doRecover(I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to recover the mission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadMission"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    new-array p1, v1, [Ljava/lang/String;

    iput-object p1, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    return-void

    :cond_2a
    invoke-direct {p0, v1}, Lus/shandian/giga/get/DownloadMission;->joinForThreads(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Thread;

    const/4 v2, -0x3

    new-instance v3, Lus/shandian/giga/get/DownloadMissionRecover;

    invoke-direct {v3, p0, p1}, Lus/shandian/giga/get/DownloadMissionRecover;-><init>(Lus/shandian/giga/get/DownloadMission;I)V

    invoke-direct {p0, v2, v3}, Lus/shandian/giga/get/DownloadMission;->runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;

    move-result-object p1

    aput-object p1, v0, v1

    iput-object v0, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    return-void
.end method

.method establishConnection(ILjava/net/HttpURLConnection;)V
    .registers 3

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_24

    const/16 p2, 0xcd

    if-eq p1, p2, :cond_24

    const/16 p2, 0xcf

    if-eq p1, p2, :cond_24

    const/16 p2, 0x1a0

    if-eq p1, p2, :cond_23

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_1d

    const/16 p2, 0x12b

    if-gt p1, p2, :cond_1d

    return-void

    :cond_1d
    new-instance p2, Lus/shandian/giga/get/DownloadMission$HttpError;

    invoke-direct {p2, p1}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    throw p2

    :cond_23
    return-void

    :cond_24
    new-instance p2, Lus/shandian/giga/get/DownloadMission$HttpError;

    invoke-direct {p2, p1}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    throw p2
.end method

.method public getLength()J
    .registers 6

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    goto :goto_25

    :cond_b
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    iget v2, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    array-length v3, v0

    if-ge v2, v3, :cond_13

    goto :goto_15

    :cond_13
    array-length v2, v0

    sub-int/2addr v2, v1

    :goto_15
    aget-wide v1, v0, v2

    iget-wide v3, p0, Lus/shandian/giga/get/Mission;->length:J

    add-long/2addr v1, v3

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lus/shandian/giga/get/DownloadMission;->nearLength:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_25
    :goto_25
    iget-wide v0, p0, Lus/shandian/giga/get/Mission;->length:J

    return-wide v0
.end method

.method public hasInvalidStorage()Z
    .registers 3

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/16 v1, 0x3f3

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isCorrupt()Z
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->isPsFailed()Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/16 v3, 0x3f1

    if-eq v0, v3, :cond_1a

    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public isFinished()Z
    .registers 3

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_12

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    if-eqz v0, :cond_10

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isInitialized()Z
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isPsFailed()Z
    .registers 3

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_c

    const/16 v1, 0x3f0

    if-eq v0, v1, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    iget-boolean v0, v0, Lus/shandian/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    return v0
.end method

.method public isPsRunning()Z
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    if-eq v0, v1, :cond_10

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_10
    return v1
.end method

.method public isRecovering()Z
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_15

    aget-object v1, v0, v2

    instance-of v1, v1, Lus/shandian/giga/get/DownloadMissionRecover;

    if-eqz v1, :cond_15

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v2, 0x1

    :cond_15
    return v2
.end method

.method public declared-synchronized notifyError(ILjava/lang/Exception;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "DownloadMission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyError() code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/16 v2, 0x3f2

    const/16 v3, 0x3eb

    const/4 v4, 0x0

    if-lt v0, v1, :cond_43

    if-eqz p2, :cond_43

    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_43

    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ENOSPC:I

    if-ne v0, v1, :cond_3c

    move-object p2, v4

    const/16 p1, 0x3f2

    goto :goto_43

    :cond_3c
    sget v1, Landroid/system/OsConstants;->EACCES:I

    if-ne v0, v1, :cond_43

    move-object p2, v4

    const/16 p1, 0x3eb

    :cond_43
    :goto_43
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_6e

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    const/16 v2, 0x3eb

    goto :goto_70

    :cond_56
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENOSPC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_70

    :cond_63
    iget-object v0, p0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->canWrite()Z

    move-result v0

    if-nez v0, :cond_6e

    const/16 v2, 0x3e9

    goto :goto_70

    :cond_6e
    move v2, p1

    move-object v4, p2

    :goto_70
    iput v2, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    iput-object v4, p0, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    const/16 p1, 0x3f4

    if-eq v2, p1, :cond_86

    packed-switch v2, :pswitch_data_96

    const/16 p1, 0x1f4

    if-lt v2, p1, :cond_83

    const/16 p1, 0x257

    if-le v2, p1, :cond_86

    :cond_83
    const/4 p1, 0x0

    iput-boolean p1, p0, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    :cond_86
    :pswitch_86  #0x3ec, 0x3ed, 0x3ee
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lus/shandian/giga/get/DownloadMission;->notify(I)V

    iget-boolean p1, p0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz p1, :cond_91

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->pauseThreads()V
    :try_end_91
    .catchall {:try_start_1 .. :try_end_91} :catchall_93

    :cond_91
    monitor-exit p0

    return-void

    :catchall_93
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_96
    .packed-switch 0x3ec
        :pswitch_86  #000003ec
        :pswitch_86  #000003ed
        :pswitch_86  #000003ee
    .end packed-switch
.end method

.method declared-synchronized notifyError(Ljava/lang/Exception;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "DownloadMission"

    const-string v1, "notifyError()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v0, p1, Ljava/io/FileNotFoundException;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_4c

    :cond_13
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_1d

    const/16 p1, 0x3ec

    invoke-virtual {p0, p1, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_4c

    :cond_1d
    instance-of v0, p1, Lus/shandian/giga/get/DownloadMission$HttpError;

    if-eqz v0, :cond_29

    check-cast p1, Lus/shandian/giga/get/DownloadMission$HttpError;

    iget p1, p1, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    invoke-virtual {p0, p1, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_4c

    :cond_29
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_33

    const/16 p1, 0x3ee

    invoke-virtual {p0, p1, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_4c

    :cond_33
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_3d

    const/16 p1, 0x3ed

    invoke-virtual {p0, p1, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_4c

    :cond_3d
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_47

    const/16 p1, 0x3f4

    invoke-virtual {p0, p1, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_4c

    :cond_47
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0, p1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4e

    :goto_4c
    monitor-exit p0

    return-void

    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized notifyFinished()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2b

    iget v2, p0, Lus/shandian/giga/get/DownloadMission;->finishCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lus/shandian/giga/get/DownloadMission;->finishCount:I

    iget-object v4, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    array-length v4, v4
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_54

    if-ge v2, v4, :cond_15

    monitor-exit p0

    return-void

    :cond_15
    add-int/2addr v0, v3

    :try_start_16
    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    array-length v1, v1

    if-ge v0, v1, :cond_2b

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, v1, v2

    iget-wide v4, p0, Lus/shandian/giga/get/Mission;->length:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->initializer()V
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_54

    monitor-exit p0

    return-void

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    if-nez v0, :cond_45

    new-array v0, v3, [Ljava/lang/Thread;

    new-instance v2, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/get/DownloadMission;)V

    invoke-direct {p0, v3, v2}, Lus/shandian/giga/get/DownloadMission;->runAsync(ILjava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_54

    monitor-exit p0

    return-void

    :cond_45
    :try_start_45
    iput-boolean v1, p0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    iput-boolean v1, p0, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    iput-boolean v1, p0, Lus/shandian/giga/get/DownloadMission;->running:Z

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->deleteThisFromFile()Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lus/shandian/giga/get/DownloadMission;->notify(I)V
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_54

    monitor-exit p0

    return-void

    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized notifyProgress(J)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lus/shandian/giga/get/Mission;->length:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lus/shandian/giga/get/Mission;->length:J

    :cond_a
    iget-wide v0, p0, Lus/shandian/giga/get/DownloadMission;->done:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lus/shandian/giga/get/DownloadMission;->done:J

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_37

    if-nez v0, :cond_15

    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    iget-boolean v0, p0, Lus/shandian/giga/get/DownloadMission;->writingToFile:Z

    if-nez v0, :cond_35

    iget-wide v0, p0, Lus/shandian/giga/get/DownloadMission;->done:J

    iget-wide v2, p0, Lus/shandian/giga/get/DownloadMission;->writingToFileNext:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_27

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_35

    :cond_27
    const/4 p1, 0x1

    iput-boolean p1, p0, Lus/shandian/giga/get/DownloadMission;->writingToFile:Z

    iget-wide p1, p0, Lus/shandian/giga/get/DownloadMission;->done:J

    const-wide/32 v0, 0x80000

    add-long/2addr p1, v0

    iput-wide p1, p0, Lus/shandian/giga/get/DownloadMission;->writingToFileNext:J

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->writeThisToFileAsync()V
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_37

    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method openConnection(Ljava/lang/String;ZJJ)Ljava/net/HttpURLConnection;
    .registers 10

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101 Firefox/91.0"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "*/*"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v1, "*"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2b

    const-string p2, "HEAD"

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_2b
    const/16 p2, 0x7530

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-ltz p2, :cond_64

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    cmp-long p3, p5, v0

    if-lez p3, :cond_5f

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_5f
    const-string p3, "Range"

    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    return-object p1
.end method

.method openConnection(ZJJ)Ljava/net/HttpURLConnection;
    .registers 15

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    iget v1, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-object v3, v0, v1

    move-object v2, p0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v2 .. v8}, Lus/shandian/giga/get/DownloadMission;->openConnection(Ljava/lang/String;ZJJ)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .registers 5

    iget-boolean v0, p0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lus/shandian/giga/get/DownloadMission;->running:Z

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lus/shandian/giga/get/DownloadMission;->notify(I)V

    iget-object v2, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    iget-object v2, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, -0x1

    :try_start_26
    invoke-virtual {p0, v0, v1, v3}, Lus/shandian/giga/get/DownloadMission;->resetState(ZZI)V

    monitor-exit v2

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->pauseThreads()V

    return-void
.end method

.method public psContinue(Z)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    if-eqz p1, :cond_7

    const/4 p1, -0x1

    goto :goto_9

    :cond_7
    const/16 p1, 0x3ef

    :goto_9
    iput p1, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    iget-object p1, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method releaseBlock(II)V
    .registers 6

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->blockAcquired:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    aput p2, v1, p1

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public resetState(ZZI)V
    .registers 8

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lus/shandian/giga/get/Mission;->length:J

    iput p3, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 p3, 0x0

    iput-object p3, p0, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    new-array v3, v2, [Ljava/lang/Thread;

    iput-object v3, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    iput-wide v0, p0, Lus/shandian/giga/get/DownloadMission;->fallbackResumeOffset:J

    iput-object p3, p0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    iput-object p3, p0, Lus/shandian/giga/get/DownloadMission;->blockAcquired:[Z

    if-eqz p1, :cond_1a

    iput v2, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    :cond_1a
    if-eqz p2, :cond_1f

    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->writeThisToFile()V

    :cond_1f
    return-void
.end method

.method public setEnqueued(Z)V
    .registers 2

    iput-boolean p1, p0, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->writeThisToFileAsync()V

    return-void
.end method

.method public start()V
    .registers 8

    iget-boolean v0, p0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v0, :cond_9c

    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9c

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_12

    goto/16 :goto_9c

    :cond_12
    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Lus/shandian/giga/get/DownloadMission;->joinForThreads(I)V

    iput-boolean v1, p0, Lus/shandian/giga/get/DownloadMission;->running:Z

    const/4 v0, -0x1

    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->hasInvalidStorage()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0, v2}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    return-void

    :cond_29
    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    iget-object v3, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_34

    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->notifyFinished()V

    return-void

    :cond_34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lus/shandian/giga/get/DownloadMission;->notify(I)V

    iget-object v3, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    iget v4, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-object v3, v3, v4

    if-nez v3, :cond_46

    const/16 v0, 0x3f5

    invoke-virtual {p0, v0}, Lus/shandian/giga/get/DownloadMission;->doRecover(I)V

    return-void

    :cond_46
    iget-object v3, p0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    if-nez v3, :cond_4e

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->initializer()V

    return-void

    :cond_4e
    iput-object v2, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->finishCount:I

    array-length v2, v3

    new-array v2, v2, [Z

    iput-object v2, p0, Lus/shandian/giga/get/DownloadMission;->blockAcquired:[Z

    array-length v2, v3

    if-ge v2, v1, :cond_6a

    new-array v2, v1, [Ljava/lang/Thread;

    new-instance v3, Lus/shandian/giga/get/DownloadRunnableFallback;

    invoke-direct {v3, p0}, Lus/shandian/giga/get/DownloadRunnableFallback;-><init>(Lus/shandian/giga/get/DownloadMission;)V

    invoke-direct {p0, v1, v3}, Lus/shandian/giga/get/DownloadMission;->runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;

    move-result-object v1

    aput-object v1, v2, v0

    iput-object v2, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    goto :goto_9c

    :cond_6a
    array-length v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_6d
    if-ge v4, v2, :cond_78

    aget v6, v3, v4

    if-ltz v6, :cond_75

    add-int/lit8 v5, v5, 0x1

    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_6d

    :cond_78
    if-ge v5, v1, :cond_7e

    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->notifyFinished()V

    return-void

    :cond_7e
    iget v1, p0, Lus/shandian/giga/get/DownloadMission;->threadCount:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [Ljava/lang/Thread;

    iput-object v1, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    :goto_88
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    array-length v2, v1

    if-ge v0, v2, :cond_9c

    add-int/lit8 v2, v0, 0x1

    new-instance v3, Lus/shandian/giga/get/DownloadRunnable;

    invoke-direct {v3, p0, v0}, Lus/shandian/giga/get/DownloadRunnable;-><init>(Lus/shandian/giga/get/DownloadMission;I)V

    invoke-direct {p0, v2, v3}, Lus/shandian/giga/get/DownloadMission;->runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v1, v0

    move v0, v2

    goto :goto_88

    :cond_9c
    :goto_9c
    return-void
.end method

.method writeThisToFile()V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-static {v1, p0}, Lus/shandian/giga/util/Utility;->writeToFile(Ljava/io/File;Ljava/io/Serializable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lus/shandian/giga/get/DownloadMission;->writingToFile:Z

    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
