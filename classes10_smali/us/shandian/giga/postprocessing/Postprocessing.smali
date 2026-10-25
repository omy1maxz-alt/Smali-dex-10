.class public abstract Lus/shandian/giga/postprocessing/Postprocessing;
.super Ljava/lang/Object;
.source "Postprocessing.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private args:[Ljava/lang/String;

.field private transient mission:Lus/shandian/giga/get/DownloadMission;

.field private final name:Ljava/lang/String;

.field public reserveSpace:Z

.field private transient tempFile:Ljava/io/File;

.field public worksOnSameFile:Z


# direct methods
.method public static synthetic $r8$lambda$7d_MtpNf1zmwau8qL61Ne742vNo([Lus/shandian/giga/io/ChunkFileInputStream;)J
    .registers 3

    invoke-static {p0}, Lus/shandian/giga/postprocessing/Postprocessing;->lambda$run$1([Lus/shandian/giga/io/ChunkFileInputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$ffky_bJn0pquJExtwlDZGI4lYNY(Lus/shandian/giga/postprocessing/Postprocessing;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lus/shandian/giga/postprocessing/Postprocessing;->lambda$run$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$l31WXroIsw_L_zFxYojXmO93smw(Lus/shandian/giga/postprocessing/Postprocessing;Ljava/lang/Exception;)Z
    .registers 2

    invoke-direct {p0, p1}, Lus/shandian/giga/postprocessing/Postprocessing;->lambda$run$3(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lV7tyNIimX1xyzGJyhynjcsb-Lk(Lus/shandian/giga/postprocessing/Postprocessing;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lus/shandian/giga/postprocessing/Postprocessing;->lambda$run$0(J)V

    return-void
.end method

.method constructor <init>(ZZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->reserveSpace:Z

    iput-boolean p2, p0, Lus/shandian/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    iput-object p3, p0, Lus/shandian/giga/postprocessing/Postprocessing;->name:Ljava/lang/String;

    return-void
.end method

.method public static getAlgorithm(Ljava/lang/String;[Ljava/lang/String;)Lus/shandian/giga/postprocessing/Postprocessing;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_80

    goto :goto_45

    :sswitch_c
    const-string/jumbo v0, "webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_45

    :cond_16
    const/4 v1, 0x4

    goto :goto_45

    :sswitch_18
    const-string/jumbo v0, "ttml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_45

    :cond_22
    const/4 v1, 0x3

    goto :goto_45

    :sswitch_24
    const-string v0, "mp4D-mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_45

    :cond_2d
    const/4 v1, 0x2

    goto :goto_45

    :sswitch_2f
    const-string v0, "mp4D-m4a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_45

    :cond_38
    const/4 v1, 0x1

    goto :goto_45

    :sswitch_3a
    const-string/jumbo v0, "webm-ogg-d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    packed-switch v1, :pswitch_data_96

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unimplemented post-processing algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5f  #0x4
    new-instance p0, Lus/shandian/giga/postprocessing/WebMMuxer;

    invoke-direct {p0}, Lus/shandian/giga/postprocessing/WebMMuxer;-><init>()V

    goto :goto_7c

    :pswitch_65  #0x3
    new-instance p0, Lus/shandian/giga/postprocessing/TtmlConverter;

    invoke-direct {p0}, Lus/shandian/giga/postprocessing/TtmlConverter;-><init>()V

    goto :goto_7c

    :pswitch_6b  #0x2
    new-instance p0, Lus/shandian/giga/postprocessing/Mp4FromDashMuxer;

    invoke-direct {p0}, Lus/shandian/giga/postprocessing/Mp4FromDashMuxer;-><init>()V

    goto :goto_7c

    :pswitch_71  #0x1
    new-instance p0, Lus/shandian/giga/postprocessing/M4aNoDash;

    invoke-direct {p0}, Lus/shandian/giga/postprocessing/M4aNoDash;-><init>()V

    goto :goto_7c

    :pswitch_77  #0x0
    new-instance p0, Lus/shandian/giga/postprocessing/OggFromWebmDemuxer;

    invoke-direct {p0}, Lus/shandian/giga/postprocessing/OggFromWebmDemuxer;-><init>()V

    :goto_7c
    iput-object p1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->args:[Ljava/lang/String;

    return-object p0

    nop

    :sswitch_data_80
    .sparse-switch
        -0x558b978e -> :sswitch_3a
        -0x43d5a580 -> :sswitch_2f
        -0x43d59e69 -> :sswitch_24
        0x367c1f -> :sswitch_18
        0x379f99 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_77  #00000000
        :pswitch_71  #00000001
        :pswitch_6b  #00000002
        :pswitch_65  #00000003
        :pswitch_5f  #00000004
    .end packed-switch
.end method

.method private synthetic lambda$run$0(J)V
    .registers 7

    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v1, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    sub-long/2addr p1, v2

    iget-wide v0, v0, Lus/shandian/giga/get/DownloadMission;->done:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_12

    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iput-wide p1, v0, Lus/shandian/giga/get/DownloadMission;->done:J

    :cond_12
    return-void
.end method

.method private static synthetic lambda$run$1([Lus/shandian/giga/io/ChunkFileInputStream;)J
    .registers 9

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lus/shandian/giga/io/ChunkFileInputStream;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v2}, Lus/shandian/giga/io/ChunkFileInputStream;->available()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-gez v7, :cond_17

    goto :goto_1d

    :cond_17
    invoke-virtual {v2}, Lus/shandian/giga/io/ChunkFileInputStream;->getFilePointer()J

    move-result-wide v0

    sub-long/2addr v0, v5

    return-wide v0

    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_20
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private synthetic lambda$run$2(J)V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iput-wide p1, v0, Lus/shandian/giga/get/DownloadMission;->done:J

    return-void
.end method

.method private synthetic lambda$run$3(Ljava/lang/Exception;)Z
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    const/4 v1, 0x3

    iput v1, v0, Lus/shandian/giga/get/DownloadMission;->psState:I

    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    const/16 v2, 0x3f1

    invoke-virtual {v0, v2, p1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    :try_start_c
    monitor-enter p0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_d} :catch_1c

    :goto_d
    :try_start_d
    iget-object p1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget p1, p1, Lus/shandian/giga/get/DownloadMission;->psState:I

    if-ne p1, v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_d

    :cond_17
    monitor-exit p0

    goto :goto_29

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    :try_start_1b
    throw p1
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1c} :catch_1c

    :catch_1c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "got InterruptedException"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    iget-object p1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget p1, p1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    return p1
.end method


# virtual methods
.method public cleanupTemporalDir()V
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_a
    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method getArgumentAt(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->args:[Ljava/lang/String;

    if-eqz v0, :cond_b

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_b

    :cond_8
    aget-object p1, v0, p1

    return-object p1

    :cond_b
    :goto_b
    return-object p2
.end method

.method varargs abstract process(Lcom/gold/youtube/om7753/streams/io/SharpStream;[Lcom/gold/youtube/om7753/streams/io/SharpStream;)I
.end method

.method public run(Lus/shandian/giga/get/DownloadMission;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iput-object v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lus/shandian/giga/get/DownloadMission;->done:J

    iget-object v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->length()J

    move-result-wide v2

    iget-object v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v4, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    sub-long/2addr v2, v6

    iget-wide v6, v0, Lus/shandian/giga/get/DownloadMission;->nearLength:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lus/shandian/giga/get/Mission;->length:J

    new-instance v0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;-><init>(Lus/shandian/giga/postprocessing/Postprocessing;)V

    iget-boolean v2, v1, Lus/shandian/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    const-wide/16 v3, -0x1

    const/4 v13, 0x0

    const/4 v14, -0x1

    if-eqz v2, :cond_f7

    iget-object v2, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v2, v2, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v2, v2

    new-array v15, v2, [Lus/shandian/giga/io/ChunkFileInputStream;

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x1

    :goto_39
    if-ge v10, v2, :cond_6d

    :try_start_3b
    iget-object v6, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v6, v6, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v6}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getStream()Lcom/gold/youtube/om7753/streams/io/SharpStream;

    move-result-object v7

    if-ge v12, v2, :cond_4c

    iget-object v6, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v6, v6, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    aget-wide v8, v6, v12

    goto :goto_50

    :cond_4c
    invoke-virtual {v7}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->length()J

    move-result-wide v8

    :goto_50
    move-wide/from16 v16, v8

    new-instance v18, Lus/shandian/giga/io/ChunkFileInputStream;

    iget-object v6, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v6, v6, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    aget-wide v8, v6, v10

    move-object/from16 v6, v18

    move/from16 v19, v10

    move-wide/from16 v10, v16

    move/from16 v16, v12

    move-object v12, v0

    invoke-direct/range {v6 .. v12}, Lus/shandian/giga/io/ChunkFileInputStream;-><init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;JJLus/shandian/giga/io/ProgressReport;)V

    aput-object v18, v15, v19

    add-int/lit8 v10, v19, 0x1

    add-int/lit8 v12, v16, 0x1

    goto :goto_39

    :cond_6d
    invoke-virtual {v1, v15}, Lus/shandian/giga/postprocessing/Postprocessing;->test([Lcom/gold/youtube/om7753/streams/io/SharpStream;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/4 v0, 0x0

    :goto_74
    if-ge v0, v2, :cond_7e

    aget-object v6, v15, v0

    invoke-virtual {v6}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->rewind()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    :cond_7e
    new-instance v0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda0;

    invoke-direct {v0, v15}, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda0;-><init>([Lus/shandian/giga/io/ChunkFileInputStream;)V

    new-instance v6, Lus/shandian/giga/io/CircularFileWriter;

    iget-object v7, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v7, v7, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v7}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getStream()Lcom/gold/youtube/om7753/streams/io/SharpStream;

    move-result-object v7

    iget-object v8, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    invoke-direct {v6, v7, v8, v0}, Lus/shandian/giga/io/CircularFileWriter;-><init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;Ljava/io/File;Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;)V
    :try_end_92
    .catchall {:try_start_3b .. :try_end_92} :catchall_da

    :try_start_92
    new-instance v0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda2;-><init>(Lus/shandian/giga/postprocessing/Postprocessing;)V

    iput-object v0, v6, Lus/shandian/giga/io/CircularFileWriter;->onProgress:Lus/shandian/giga/io/ProgressReport;

    new-instance v0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/postprocessing/Postprocessing;)V

    iput-object v0, v6, Lus/shandian/giga/io/CircularFileWriter;->onWriteError:Lus/shandian/giga/io/CircularFileWriter$WriteErrorHandle;

    invoke-virtual {v1, v6, v15}, Lus/shandian/giga/postprocessing/Postprocessing;->process(Lcom/gold/youtube/om7753/streams/io/SharpStream;[Lcom/gold/youtube/om7753/streams/io/SharpStream;)I

    move-result v0

    if-ne v0, v14, :cond_ab

    invoke-virtual {v6}, Lus/shandian/giga/io/CircularFileWriter;->finalizeFile()J

    move-result-wide v7
    :try_end_aa
    .catchall {:try_start_92 .. :try_end_aa} :catchall_b0

    goto :goto_ac

    :cond_ab
    move-wide v7, v3

    :goto_ac
    :try_start_ac
    invoke-virtual {v6}, Lus/shandian/giga/io/CircularFileWriter;->close()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_da

    goto :goto_be

    :catchall_b0
    move-exception v0

    move-object v3, v0

    :try_start_b2
    invoke-virtual {v6}, Lus/shandian/giga/io/CircularFileWriter;->close()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b6

    goto :goto_bb

    :catchall_b6
    move-exception v0

    move-object v4, v0

    :try_start_b8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_bb
    throw v3
    :try_end_bc
    .catchall {:try_start_b8 .. :try_end_bc} :catchall_da

    :cond_bc
    move-wide v7, v3

    const/4 v0, -0x1

    :goto_be
    if-ge v5, v2, :cond_d0

    aget-object v6, v15, v5

    if-eqz v6, :cond_cd

    invoke-virtual {v6}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->isClosed()Z

    move-result v9

    if-nez v9, :cond_cd

    invoke-virtual {v6}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    :cond_cd
    add-int/lit8 v5, v5, 0x1

    goto :goto_be

    :cond_d0
    iget-object v2, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    if-eqz v2, :cond_108

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iput-object v13, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    goto :goto_108

    :catchall_da
    move-exception v0

    :goto_db
    if-ge v5, v2, :cond_ed

    aget-object v3, v15, v5

    if-eqz v3, :cond_ea

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->isClosed()Z

    move-result v4

    if-nez v4, :cond_ea

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    :cond_ea
    add-int/lit8 v5, v5, 0x1

    goto :goto_db

    :cond_ed
    iget-object v2, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    if-eqz v2, :cond_f6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iput-object v13, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    :cond_f6
    throw v0

    :cond_f7
    new-array v0, v5, [Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v1, v0}, Lus/shandian/giga/postprocessing/Postprocessing;->test([Lcom/gold/youtube/om7753/streams/io/SharpStream;)Z

    move-result v0

    if-eqz v0, :cond_106

    new-array v0, v5, [Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v1, v13, v0}, Lus/shandian/giga/postprocessing/Postprocessing;->process(Lcom/gold/youtube/om7753/streams/io/SharpStream;[Lcom/gold/youtube/om7753/streams/io/SharpStream;)I

    move-result v0

    goto :goto_107

    :cond_106
    const/4 v0, -0x1

    :goto_107
    move-wide v7, v3

    :cond_108
    :goto_108
    if-ne v0, v14, :cond_113

    cmp-long v2, v7, v3

    if-eqz v2, :cond_131

    iget-object v2, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iput-wide v7, v2, Lus/shandian/giga/get/Mission;->length:J

    goto :goto_131

    :cond_113
    iget-object v2, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    const/16 v3, 0x3ef

    iput v3, v2, Lus/shandian/giga/get/DownloadMission;->errCode:I

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "post-processing algorithm returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    :cond_131
    :goto_131
    if-eq v0, v14, :cond_13e

    iget-boolean v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    if-eqz v0, :cond_13e

    iget-object v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->delete()Z

    :cond_13e
    iput-object v13, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    return-void
.end method

.method public setTemporalDir(Ljava/io/File;)V
    .registers 6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40f86a0000000000L  # 100000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".tmp"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    return-void
.end method

.method varargs test([Lcom/gold/youtube/om7753/streams/io/SharpStream;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->args:[Ljava/lang/String;

    if-eqz v1, :cond_2f

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v2, :cond_2b

    aget-object v5, v1, v4

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2b
    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2f
    const-string v1, "] }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
