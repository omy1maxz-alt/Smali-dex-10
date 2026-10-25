.class public Lus/shandian/giga/service/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static final DOWNLOADS_METADATA_FOLDER:Ljava/lang/String; = "pending_downloads"

.field public static final SPECIAL_FINISHED:I = 0x2

.field public static final SPECIAL_NOTHING:I = 0x0

.field public static final SPECIAL_PENDING:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final TAG_AUDIO:Ljava/lang/String; = "audio"

.field public static final TAG_VIDEO:Ljava/lang/String; = "video"


# instance fields
.field private final mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

.field private final mHandler:Landroid/os/Handler;

.field private mLastNetworkStatus:Lus/shandian/giga/service/DownloadManager$NetworkState;

.field mMainStorageAudio:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

.field mMainStorageVideo:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

.field private final mMissionsFinished:Ljava/util/ArrayList;

.field private final mMissionsPending:Ljava/util/ArrayList;

.field private final mPendingMissionsDir:Ljava/io/File;

.field mPrefMaxRetry:I

.field mPrefMeteredDownloads:Z

.field mPrefQueueLimit:Z

.field private mSelfMissionsControl:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmMissionsFinished(Lus/shandian/giga/service/DownloadManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMissionsPending(Lus/shandian/giga/service/DownloadManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    sget-object v0, Lus/shandian/giga/service/DownloadManager$NetworkState;->Unavailable:Lus/shandian/giga/service/DownloadManager$NetworkState;

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:Lus/shandian/giga/service/DownloadManager$NetworkState;

    sget-boolean v0, Lcom/gold/youtube/om7753/settings/files/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_32

    sget-object v0, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new DownloadManager instance. 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    new-instance v0, Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-direct {v0, p1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    iput-object p2, p0, Lus/shandian/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lus/shandian/giga/service/DownloadManager;->mMainStorageAudio:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    iput-object p3, p0, Lus/shandian/giga/service/DownloadManager;->mMainStorageVideo:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManager;->loadFinishedMissions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-static {p1}, Lus/shandian/giga/service/DownloadManager;->getPendingDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mPendingMissionsDir:Ljava/io/File;

    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManager;->loadPendingMissions(Landroid/content/Context;)V

    return-void
.end method

.method private canDownloadInCurrentNetwork()Z
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:Lus/shandian/giga/service/DownloadManager$NetworkState;

    sget-object v1, Lus/shandian/giga/service/DownloadManager$NetworkState;->Unavailable:Lus/shandian/giga/service/DownloadManager$NetworkState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    return v2

    :cond_8
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManager;->mPrefMeteredDownloads:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:Lus/shandian/giga/service/DownloadManager$NetworkState;

    sget-object v1, Lus/shandian/giga/service/DownloadManager$NetworkState;->MeteredOperating:Lus/shandian/giga/service/DownloadManager$NetworkState;

    if-eq v0, v1, :cond_13

    :cond_12
    const/4 v2, 0x1

    :cond_13
    return v2
.end method

.method private getAnyMission(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)Lus/shandian/giga/get/Mission;
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManager;->getPendingMission(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)Lus/shandian/giga/get/DownloadMission;

    move-result-object v0

    if-eqz v0, :cond_9

    monitor-exit p0

    return-object v0

    :cond_9
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManager;->getFinishedMissionIndex(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)I

    move-result v1

    if-ltz v1, :cond_19

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/shandian/giga/get/Mission;

    monitor-exit p0

    return-object v2

    :cond_19
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private getFinishedMissionIndex(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)I
    .registers 9

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_62

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/FinishedMission;

    iget-object v1, v1, Lus/shandian/giga/get/FinishedMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v1, p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->equals(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2b

    goto :goto_2c

    :cond_2b
    return v0

    :cond_2c
    :goto_2c
    sget-boolean v1, Lcom/gold/youtube/om7753/settings/files/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_4c

    sget-object v1, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "matched downloaded file removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/shandian/giga/get/Mission;

    invoke-virtual {v1, v3}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v2

    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_62
    return v2
.end method

.method private getMainStorage(Ljava/lang/String;)Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;
    .registers 5

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMainStorageAudio:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    return-object v0

    :cond_b
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMainStorageVideo:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    return-object v0

    :cond_16
    sget-object v0, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown download category, not [audio video]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getPendingDir(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    const-string v0, "pending_downloads"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lus/shandian/giga/service/DownloadManager;->testDir(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-object v1

    :cond_d
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lus/shandian/giga/service/DownloadManager;->testDir(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-object v2

    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "path to pending downloads are not accessible"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPendingMission(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)Lus/shandian/giga/get/DownloadMission;
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/DownloadMission;

    iget-object v2, v1, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v2, p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->equals(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-object v1

    :cond_1b
    goto :goto_6

    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isDirectoryAvailable(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private loadFinishedMissions()Ljava/util/ArrayList;
    .registers 7

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v0}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->loadFinishedMissions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/shandian/giga/get/FinishedMission;

    iget-object v3, v2, Lus/shandian/giga/get/FinishedMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result v3

    if-nez v3, :cond_46

    sget-boolean v3, Lcom/gold/youtube/om7753/settings/files/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_3e

    sget-object v3, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloaded file removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lus/shandian/giga/get/FinishedMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v5}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    iget-object v3, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v3, v2}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_49
    return-object v0
.end method

.method private loadPendingMissions(Landroid/content/Context;)V
    .registers 15

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mPendingMissionsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_10

    sget-object v1, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    const-string v2, "listFiles() returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_15

    return-void

    :cond_15
    sget-boolean v1, Lcom/gold/youtube/om7753/settings/files/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_37

    sget-object v1, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading pending downloads from directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lus/shandian/giga/service/DownloadManager;->mPendingMissionsDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    invoke-static {p1}, Lus/shandian/giga/service/DownloadManager;->pickAvailableTemporalDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    sget-object v3, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "using \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' as temporal directory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_5c
    if-ge v5, v3, :cond_15c

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_68

    goto/16 :goto_158

    :cond_68
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    goto/16 :goto_158

    :cond_76
    invoke-static {v6}, Lus/shandian/giga/util/Utility;->readFromFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lus/shandian/giga/get/DownloadMission;

    if-nez v7, :cond_83

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto/16 :goto_158

    :cond_83
    invoke-virtual {v7}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_91

    invoke-virtual {p0, v7}, Lus/shandian/giga/service/DownloadManager;->setFinished(Lus/shandian/giga/get/DownloadMission;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto/16 :goto_158

    :cond_91
    invoke-virtual {v7}, Lus/shandian/giga/get/DownloadMission;->hasInvalidStorage()Z

    move-result v8

    const/16 v9, 0x3f3

    if-eqz v8, :cond_a6

    iget v8, v7, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-eq v8, v9, :cond_a6

    iget-object v8, v7, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    if-nez v8, :cond_a6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto/16 :goto_158

    :cond_a6
    new-array v8, v4, [Ljava/lang/Thread;

    iput-object v8, v7, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    :try_start_aa
    iget-object v8, v7, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-static {v8, p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->deserialize(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;Landroid/content/Context;)Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    move-result-object v8

    iput-object v8, v7, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    iget-object v8, v7, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v8}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->isInvalid()Z

    move-result v8

    if-nez v8, :cond_c4

    iget-object v8, v7, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v8}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result v8
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c0} :catch_c6

    if-eqz v8, :cond_c4

    move v8, v2

    goto :goto_c5

    :cond_c4
    move v8, v4

    :goto_c5
    goto :goto_e7

    :catch_c6
    move-exception v8

    sget-object v10, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to load the file source of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v12}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    move v8, v10

    :goto_e7
    invoke-virtual {v7}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v10

    if-eqz v10, :cond_128

    iget-object v9, v7, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    iget-boolean v9, v9, Lus/shandian/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    if-eqz v9, :cond_121

    if-eqz v8, :cond_121

    iget-object v9, v7, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v9}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->isDirect()Z

    move-result v9

    if-eqz v9, :cond_121

    iget-object v9, v7, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v9}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->delete()Z

    move-result v9

    if-nez v9, :cond_121

    sget-object v9, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to delete incomplete download file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_121
    iput v4, v7, Lus/shandian/giga/get/DownloadMission;->psState:I

    const/16 v9, 0x3f0

    iput v9, v7, Lus/shandian/giga/get/DownloadMission;->errCode:I

    goto :goto_13b

    :cond_128
    if-nez v8, :cond_13b

    invoke-virtual {p0, v7}, Lus/shandian/giga/service/DownloadManager;->tryRecover(Lus/shandian/giga/get/DownloadMission;)V

    invoke-virtual {v7}, Lus/shandian/giga/get/DownloadMission;->isInitialized()Z

    move-result v10

    if-eqz v10, :cond_13b

    iget v10, v7, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_13b

    invoke-virtual {v7, v2, v2, v9}, Lus/shandian/giga/get/DownloadMission;->resetState(ZZI)V

    :cond_13b
    :goto_13b
    iget-object v9, v7, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    if-eqz v9, :cond_149

    iget-object v9, v7, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    invoke-virtual {v9}, Lus/shandian/giga/postprocessing/Postprocessing;->cleanupTemporalDir()V

    iget-object v9, v7, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    invoke-virtual {v9, v1}, Lus/shandian/giga/postprocessing/Postprocessing;->setTemporalDir(Ljava/io/File;)V

    :cond_149
    iput-object v6, v7, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    iget v9, p0, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I

    iput v9, v7, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    iget-object v9, p0, Lus/shandian/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    iput-object v9, v7, Lus/shandian/giga/get/DownloadMission;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_158
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5c

    :cond_15c
    iget-object v3, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_172

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    new-instance v3, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_172
    return-void
.end method

.method static pickAvailableTemporalDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManager;->isDirectoryAvailable(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManager;->isDirectoryAvailable(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_17

    return-object v0

    :cond_17
    const-string v1, "muxing_tmp"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManager;->isDirectoryAvailable(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_25

    return-object v0

    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManager;->isDirectoryAvailable(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_30

    return-object v0

    :cond_30
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not temporal directories are available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static testDir(Ljava/io/File;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-static {p0, v0}, Lus/shandian/giga/util/Utility;->mkdir(Ljava/io/File;Z)Z

    move-result v1

    if-nez v1, :cond_27

    sget-object v1, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testDir() cannot create the directory in path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_27
    new-instance v1, Ljava/io/File;

    const-string v2, ".tmp"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_35

    return v0

    :cond_35
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_3a

    return v0

    :catch_3a
    move-exception v1

    sget-object v2, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testDir() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public canRecoverMission(Lus/shandian/giga/get/DownloadMission;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget v1, p1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/16 v2, 0x3f3

    if-eq v1, v2, :cond_16

    iget-object v1, p1, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    if-eqz v1, :cond_16

    iget-object v1, p1, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result v1

    if-nez v1, :cond_17

    :cond_16
    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public checkForExistingMission(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)Lus/shandian/giga/service/MissionState;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManager;->getPendingMission(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)Lus/shandian/giga/get/DownloadMission;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManager;->getFinishedMissionIndex(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)I

    move-result v1

    if-ltz v1, :cond_11

    sget-object v1, Lus/shandian/giga/service/MissionState;->Finished:Lus/shandian/giga/service/MissionState;

    monitor-exit p0

    return-object v1

    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2a

    sget-object v0, Lus/shandian/giga/service/MissionState;->None:Lus/shandian/giga/service/MissionState;

    return-object v0

    :cond_15
    :try_start_15
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lus/shandian/giga/service/MissionState;->Finished:Lus/shandian/giga/service/MissionState;

    monitor-exit p0

    return-object v1

    :cond_1f
    iget-boolean v1, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v1, :cond_26

    sget-object v1, Lus/shandian/giga/service/MissionState;->PendingRunning:Lus/shandian/giga/service/MissionState;

    goto :goto_28

    :cond_26
    sget-object v1, Lus/shandian/giga/service/MissionState;->Pending:Lus/shandian/giga/service/MissionState;

    :goto_28
    monitor-exit p0

    return-object v1

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public deleteMission(Lus/shandian/giga/get/Mission;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    instance-of v0, p1, Lus/shandian/giga/get/DownloadMission;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_b
    instance-of v0, p1, Lus/shandian/giga/get/FinishedMission;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v0, p1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    :cond_19
    :goto_19
    invoke-virtual {p1}, Lus/shandian/giga/get/Mission;->delete()Z

    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public deleteMission(Lus/shandian/giga/get/Mission;Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    instance-of v0, p1, Lus/shandian/giga/get/DownloadMission;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_b
    instance-of v0, p1, Lus/shandian/giga/get/FinishedMission;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v0, p1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    :cond_19
    :goto_19
    if-eqz p2, :cond_1e

    invoke-virtual {p1}, Lus/shandian/giga/get/Mission;->delete()Z

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public forgetFinishedDownloads()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/FinishedMission;

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v2, v1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    goto :goto_7

    :cond_19
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public forgetMission(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManager;->getAnyMission(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)Lus/shandian/giga/get/Mission;

    move-result-object v0

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    instance-of v1, v0, Lus/shandian/giga/get/DownloadMission;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_13
    instance-of v1, v0, Lus/shandian/giga/get/FinishedMission;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v1, v0}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    :cond_21
    :goto_21
    const/4 v1, 0x0

    iput-object v1, v0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lus/shandian/giga/get/Mission;->delete()Z

    nop

    monitor-exit p0

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public getIterator()Lus/shandian/giga/service/DownloadManager$MissionIterator;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lus/shandian/giga/service/DownloadManager;->mSelfMissionsControl:Z

    new-instance v0, Lus/shandian/giga/service/DownloadManager$MissionIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;-><init>(Lus/shandian/giga/service/DownloadManager;Lus/shandian/giga/service/DownloadManager-IA;)V

    return-object v0
.end method

.method public getMissionsPending()Ljava/util/List;
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method getRunningMissionsCount()I
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/shandian/giga/get/DownloadMission;

    iget-boolean v3, v2, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v3, :cond_26

    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isPsFailed()Z

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v3

    if-nez v3, :cond_26

    add-int/lit8 v0, v0, 0x1

    :cond_26
    goto :goto_8

    :cond_27
    monitor-exit p0

    return v0

    :catchall_29
    move-exception v1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method handleConnectivityState(Lus/shandian/giga/service/DownloadManager$NetworkState;Z)V
    .registers 7

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:Lus/shandian/giga/service/DownloadManager$NetworkState;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:Lus/shandian/giga/service/DownloadManager$NetworkState;

    sget-object v0, Lus/shandian/giga/service/DownloadManager$NetworkState;->Unavailable:Lus/shandian/giga/service/DownloadManager$NetworkState;

    if-ne p1, v0, :cond_c

    return-void

    :cond_c
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManager;->mSelfMissionsControl:Z

    if-eqz v0, :cond_62

    if-eqz p2, :cond_13

    goto :goto_62

    :cond_13
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManager;->mPrefMeteredDownloads:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:Lus/shandian/giga/service/DownloadManager$NetworkState;

    sget-object v1, Lus/shandian/giga/service/DownloadManager$NetworkState;->MeteredOperating:Lus/shandian/giga/service/DownloadManager$NetworkState;

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    monitor-enter p0

    :try_start_21
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isCorrupt()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_27

    :cond_40
    iget-boolean v3, v2, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v3, :cond_4a

    if-eqz v0, :cond_4a

    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->pause()V

    goto :goto_5c

    :cond_4a
    iget-boolean v3, v2, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v3, :cond_5c

    if-nez v0, :cond_5c

    iget-boolean v3, v2, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    if-eqz v3, :cond_5c

    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->start()V

    iget-boolean v3, p0, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    if-eqz v3, :cond_5c

    goto :goto_5d

    :cond_5c
    :goto_5c
    goto :goto_27

    :cond_5d
    :goto_5d
    monitor-exit p0

    return-void

    :catchall_5f
    move-exception v1

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_21 .. :try_end_61} :catchall_5f

    throw v1

    :cond_62
    :goto_62
    return-void
.end method

.method public pauseAllMissions(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/DownloadMission;

    iget-boolean v2, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_7

    :cond_24
    if-eqz p1, :cond_2e

    const/4 v2, 0x0

    iput-object v2, v1, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Thread;

    iput-object v2, v1, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    :cond_2e
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->pause()V

    goto :goto_7

    :cond_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public pauseMission(Lus/shandian/giga/get/DownloadMission;)V
    .registers 3

    iget-boolean v0, p1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/shandian/giga/get/DownloadMission;->setEnqueued(Z)V

    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->pause()V

    :cond_b
    return-void
.end method

.method public resumeMission(Lus/shandian/giga/get/DownloadMission;)V
    .registers 3

    iget-boolean v0, p1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->start()V

    :cond_7
    return-void
.end method

.method runMissions()Z
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_d

    monitor-exit p0

    return v1

    :cond_d
    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManager;->canDownloadInCurrentNetwork()Z

    move-result v0

    if-nez v0, :cond_15

    monitor-exit p0

    return v1

    :cond_15
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1f

    iget-boolean v3, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v3, :cond_1f

    monitor-exit p0

    return v2

    :cond_37
    const/4 v0, 0x0

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/shandian/giga/get/DownloadMission;

    iget-boolean v4, v3, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v4, :cond_3e

    iget-boolean v4, v3, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    if-eqz v4, :cond_3e

    invoke-virtual {v3}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_59

    goto :goto_3e

    :cond_59
    invoke-virtual {p0, v3}, Lus/shandian/giga/service/DownloadManager;->resumeMission(Lus/shandian/giga/get/DownloadMission;)V

    iget v4, v3, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_62

    goto :goto_3e

    :cond_62
    iget-boolean v4, p0, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    if-eqz v4, :cond_68

    monitor-exit p0

    return v2

    :cond_68
    const/4 v0, 0x1

    goto :goto_3e

    :cond_6a
    monitor-exit p0

    return v0

    :catchall_6c
    move-exception v0

    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method setFinished(Lus/shandian/giga/get/DownloadMission;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    new-instance v1, Lus/shandian/giga/get/FinishedMission;

    invoke-direct {v1, p1}, Lus/shandian/giga/get/FinishedMission;-><init>(Lus/shandian/giga/get/DownloadMission;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v0, p1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->addFinishedMission(Lus/shandian/giga/get/DownloadMission;)V

    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public startAllMissions()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/DownloadMission;

    iget-boolean v2, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isCorrupt()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_7

    :cond_1e
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->start()V

    goto :goto_7

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw v0
.end method

.method startMission(Lus/shandian/giga/get/DownloadMission;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lus/shandian/giga/get/DownloadMission;->timestamp:J

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    iput-object v0, p1, Lus/shandian/giga/get/DownloadMission;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I

    iput v0, p1, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    :goto_f
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mPendingMissionsDir:Ljava/io/File;

    iget-wide v2, p1, Lus/shandian/giga/get/DownloadMission;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p1, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_83

    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_8a

    if-nez v0, :cond_83

    :try_start_2e
    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_7c
    .catchall {:try_start_2e .. :try_end_34} :catchall_8a

    if-eqz v0, :cond_74

    nop

    const/4 v0, 0x1

    :try_start_38
    iput-boolean v0, p0, Lus/shandian/giga/service/DownloadManager;->mSelfMissionsControl:Z

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-static {v1, p1}, Lus/shandian/giga/util/Utility;->writeToFile(Ljava/io/File;Ljava/io/Serializable;)V

    iget-object v1, p1, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    if-nez v1, :cond_5b

    const/16 v0, 0x3e9

    iput v0, p1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    if-eqz v0, :cond_59

    new-instance v0, Ljava/io/IOException;

    const-string v1, "DownloadMission.storage == NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    :cond_59
    monitor-exit p0

    return-void

    :cond_5b
    iget-boolean v1, p0, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    if-eqz v1, :cond_67

    invoke-virtual {p0}, Lus/shandian/giga/service/DownloadManager;->getRunningMissionsCount()I

    move-result v1

    if-ge v1, v0, :cond_66

    goto :goto_67

    :cond_66
    const/4 v0, 0x0

    :cond_67
    :goto_67
    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManager;->canDownloadInCurrentNetwork()Z

    move-result v1

    if-eqz v1, :cond_72

    if-eqz v0, :cond_72

    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->start()V

    :cond_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_38 .. :try_end_73} :catchall_8a

    return-void

    :cond_74
    :try_start_74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cant create download metadata file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7c} :catch_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_8a

    :catch_7c
    move-exception v0

    :try_start_7d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lus/shandian/giga/get/DownloadMission;->timestamp:J

    goto :goto_f

    :catchall_8a
    move-exception v0

    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_7d .. :try_end_8c} :catchall_8a

    throw v0
.end method

.method public tryRecover(Lus/shandian/giga/get/DownloadMission;)V
    .registers 5

    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/shandian/giga/service/DownloadManager;->getMainStorage(Ljava/lang/String;)Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    move-result-object v0

    iget-object v1, p1, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p1, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->create()Z

    move-result v1

    if-eqz v1, :cond_1b

    return-void

    :cond_1b
    iget-object v1, p1, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->invalidate()V

    if-nez v0, :cond_23

    return-void

    :cond_23
    iget-object v1, p1, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    move-result-object v1

    if-eqz v1, :cond_37

    iput-object v1, p1, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    :cond_37
    return-void
.end method

.method updateMaximumAttempts()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/DownloadMission;

    iget v2, p0, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I

    iput v2, v1, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    goto :goto_7

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method
