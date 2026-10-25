.class public Lus/shandian/giga/service/DownloadManagerService;
.super Landroid/app/Service;
.source "DownloadManagerService.java"


# static fields
.field private static final ACTION_CANCEL_DOWNLOAD:Ljava/lang/String; = "com.gold.android.youtube.cancel_download"

.field private static final ACTION_OPEN_DOWNLOADS_FINISHED:Ljava/lang/String; = "com.gold.android.youtube.open_downloads_finished"

.field private static final ACTION_PAUSE_DOWNLOAD:Ljava/lang/String; = "com.gold.android.youtube.pause_download"

.field private static final ACTION_RESET_DOWNLOAD_FINISHED:Ljava/lang/String; = "com.gold.android.youtube.reset_download_finished"

.field private static final ACTION_RESUME_DOWNLOAD:Ljava/lang/String; = "com.gold.android.youtube.resume_download"

.field private static final DOWNLOADS_NOTIFICATION_ID:I = 0x3e9

.field private static final EXTRA_KIND:Ljava/lang/String; = "DownloadManagerService.extra.kind"

.field private static final EXTRA_MISSION_TIMESTAMP:Ljava/lang/String; = "DownloadManagerService.extra.mission_timestamp"

.field private static final EXTRA_NEAR_LENGTH:Ljava/lang/String; = "DownloadManagerService.extra.nearLength"

.field private static final EXTRA_PARENT_PATH:Ljava/lang/String; = "DownloadManagerService.extra.storageParentPath"

.field private static final EXTRA_PATH:Ljava/lang/String; = "DownloadManagerService.extra.storagePath"

.field private static final EXTRA_POSTPROCESSING_ARGS:Ljava/lang/String; = "DownloadManagerService.extra.postprocessingArgs"

.field private static final EXTRA_POSTPROCESSING_NAME:Ljava/lang/String; = "DownloadManagerService.extra.postprocessingName"

.field private static final EXTRA_RECOVERY_INFO:Ljava/lang/String; = "DownloadManagerService.extra.recoveryInfo"

.field private static final EXTRA_STORAGE_TAG:Ljava/lang/String; = "DownloadManagerService.extra.storageTag"

.field private static final EXTRA_STREAM_INFO:Ljava/lang/String; = "DownloadManagerService.extra.streamInfo"

.field private static final EXTRA_THREADS:Ljava/lang/String; = "DownloadManagerService.extra.threads"

.field private static final EXTRA_URLS:Ljava/lang/String; = "DownloadManagerService.extra.urls"

.field private static final FOREGROUND_NOTIFICATION_ID:I = 0x3e8

.field public static final MESSAGE_DELETED:I = 0x4

.field public static final MESSAGE_ERROR:I = 0x3

.field public static final MESSAGE_FINISHED:I = 0x2

.field public static final MESSAGE_PAUSED:I = 0x1

.field public static final MESSAGE_RUNNING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DownloadManagerService"


# instance fields
.field private downloadDoneCount:I

.field private downloadDoneList:Ljava/lang/StringBuilder;

.field private downloadDoneNotification:Lcas;

.field private downloadFailedNotification:Lcas;

.field private downloadFailedNotificationID:I

.field private icDownloadDone:Landroid/graphics/Bitmap;

.field private icDownloadFailed:Landroid/graphics/Bitmap;

.field private icLauncher:Landroid/graphics/Bitmap;

.field private final mActiveNotificationIds:Ljava/util/List;

.field private mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentSpeed:J

.field private mDownloadNotificationEnable:Z

.field private final mEchoObservers:Ljava/util/List;

.field private final mFailedDownloads:Landroid/util/SparseArray;

.field private mForeground:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastDoneBytes:J

.field private mLastSpeedTime:J

.field private mLockAcquired:Z

.field private mManager:Lus/shandian/giga/service/DownloadManager;

.field private mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOpenDownloadList:Landroid/app/PendingIntent;

.field private final mPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private final mUpdateNotificationRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$FjTAV5EihEO85Zyy0xFxDrZa33A(Lus/shandian/giga/service/DownloadManagerService;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lus/shandian/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xhi0AfYJVdU-4EPCDsbTuPbHSr8(Lus/shandian/giga/service/DownloadManagerService;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManagerService;->lambda$onStartCommand$0(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dCDNdxiTSnv5hOdyl_hlq3IjkDw(Lus/shandian/giga/service/DownloadManagerService;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManagerService;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdownloadDoneList(Lus/shandian/giga/service/DownloadManagerService;)Ljava/lang/StringBuilder;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdownloadDoneNotification(Lus/shandian/giga/service/DownloadManagerService;)Lcas;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdownloadFailedNotification(Lus/shandian/giga/service/DownloadManagerService;)Lcas;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Lcas;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;)I
    .registers 1

    iget p0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEchoObservers(Lus/shandian/giga/service/DownloadManagerService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFailedDownloads(Lus/shandian/giga/service/DownloadManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mFailedDownloads:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lus/shandian/giga/service/DownloadManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmManager(Lus/shandian/giga/service/DownloadManagerService;)Lus/shandian/giga/service/DownloadManager;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationManager(Lus/shandian/giga/service/DownloadManagerService;)Landroid/app/NotificationManager;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefs(Lus/shandian/giga/service/DownloadManagerService;)Landroid/content/SharedPreferences;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdownloadDoneCount(Lus/shandian/giga/service/DownloadManagerService;I)V
    .registers 2

    iput p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;I)V
    .registers 2

    iput p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDownloadNotificationEnable(Lus/shandian/giga/service/DownloadManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleConnectivityState(Lus/shandian/giga/service/DownloadManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNotifications(Lus/shandian/giga/service/DownloadManagerService;)V
    .registers 1

    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManagerService;->updateNotifications()V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mActiveNotificationIds:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mForeground:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    iput v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/List;

    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Lus/shandian/giga/service/DownloadManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lus/shandian/giga/service/DownloadManagerService$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/service/DownloadManagerService;)V

    iput-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iput-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mLockAcquired:Z

    const/16 v0, 0x3ea

    iput v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Lcas;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mFailedDownloads:Landroid/util/SparseArray;

    new-instance v0, Lus/shandian/giga/service/DownloadManagerService$2;

    invoke-direct {v0, p0}, Lus/shandian/giga/service/DownloadManagerService$2;-><init>(Lus/shandian/giga/service/DownloadManagerService;)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mUpdateNotificationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private buildDownloadNotification(Lus/shandian/giga/get/DownloadMission;)Landroid/app/Notification;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lus/shandian/giga/service/DownloadManagerService;->compactFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v1, Lus/shandian/giga/get/DownloadMission;->done:J

    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->getLength()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v9, v1, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    if-eqz v9, :cond_20

    invoke-static {v3, v4}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x1

    goto :goto_97

    :cond_20
    sub-long v9, v5, v3

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-gez v13, :cond_2a

    const-wide/16 v9, 0x0

    :cond_2a
    cmp-long v11, v5, v11

    if-lez v11, :cond_93

    const-wide/16 v11, 0x64

    mul-long/2addr v11, v3

    div-long/2addr v11, v5

    long-to-int v8, v11

    iget-wide v9, v0, Lus/shandian/giga/service/DownloadManagerService;->mLastDoneBytes:J

    iget-wide v11, v0, Lus/shandian/giga/service/DownloadManagerService;->mLastSpeedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v15, v13, v11

    const-wide/16 v11, 0x3e8

    cmp-long v17, v15, v11

    if-ltz v17, :cond_59

    sub-long v9, v3, v9

    const-wide/16 v17, 0x0

    cmp-long v18, v9, v17

    if-ltz v18, :cond_51

    div-long v9, v9, v15

    const-wide/16 v15, 0x3e8

    mul-long/2addr v9, v15

    goto :goto_53

    :cond_51
    const-wide/16 v9, 0x0

    :goto_53
    iput-wide v9, v0, Lus/shandian/giga/service/DownloadManagerService;->mCurrentSpeed:J

    iput-wide v3, v0, Lus/shandian/giga/service/DownloadManagerService;->mLastDoneBytes:J

    iput-wide v13, v0, Lus/shandian/giga/service/DownloadManagerService;->mLastSpeedTime:J

    :cond_59
    iget-wide v9, v0, Lus/shandian/giga/service/DownloadManagerService;->mCurrentSpeed:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "% • "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9, v10}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/s • "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3, v4}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " / "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5, v6}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_97

    :cond_93
    invoke-static {v3, v4}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v9

    :goto_97
    const-string v10, ""

    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isRecovering()Z

    move-result v11

    const/4 v12, -0x1

    const-string v13, " - "

    if-eqz v11, :cond_be

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "recovering"

    invoke-static {v14}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v14}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_12a

    :cond_be
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v11

    if-eqz v11, :cond_e0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "post_processing"

    invoke-static {v14}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v14}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_12a

    :cond_e0
    iget v11, v1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-eq v11, v12, :cond_100

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "msg_error"

    invoke-static {v14}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v14}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_12a

    :cond_100
    iget-boolean v11, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v11, :cond_12a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v14, v1, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    if-eqz v14, :cond_114

    const-string v14, "queued"

    invoke-static {v14}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v14

    goto :goto_11a

    :cond_114
    const-string v14, "paused"

    invoke-static {v14}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v14

    :goto_11a
    invoke-virtual {v0, v14}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_12a
    :goto_12a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lcas;

    const-string v13, "notification_channel_id"

    invoke-static {v13}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v0, v13}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v0, v13}, Lcas;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v13, v0, Lus/shandian/giga/service/DownloadManagerService;->mOpenDownloadList:Landroid/app/PendingIntent;

    invoke-virtual {v11, v13}, Lcas;->y(Landroid/app/PendingIntent;)V

    const v13, 0x1080081

    invoke-virtual {v11, v13}, Lcas;->s(I)V

    iget-object v13, v0, Lus/shandian/giga/service/DownloadManagerService;->icLauncher:Landroid/graphics/Bitmap;

    invoke-virtual {v11, v13}, Lcas;->o(Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v2}, Lcas;->l(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v9}, Lcas;->k(Ljava/lang/CharSequence;)V

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcas;->p(Z)V

    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v14

    const/16 v15, 0x64

    const/4 v12, 0x0

    if-eqz v14, :cond_171

    invoke-virtual {v11, v15, v12, v13}, Lcas;->r(IIZ)V

    goto :goto_196

    :cond_171
    iget-boolean v13, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v13, :cond_181

    iget v13, v1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_181

    invoke-virtual {v11, v15, v8, v12}, Lcas;->r(IIZ)V

    invoke-virtual {v11, v12}, Lcas;->p(Z)V

    goto :goto_196

    :cond_181
    iget v13, v1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_193

    invoke-virtual {v11, v15, v8, v12}, Lcas;->r(IIZ)V

    invoke-virtual {v11, v12}, Lcas;->p(Z)V

    const v12, 0x108008a

    invoke-virtual {v11, v12}, Lcas;->s(I)V

    goto :goto_196

    :cond_193
    invoke-virtual {v11, v15, v8, v7}, Lcas;->r(IIZ)V

    :goto_196
    iget-boolean v12, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    const-string v13, "com.gold.android.youtube.cancel_download"

    if-eqz v12, :cond_1dc

    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v12

    if-nez v12, :cond_1dc

    const-string v12, "ic_pause"

    invoke-static {v12}, Lcom/gold/youtube/om7753/util/Utils;->getDWByName(Ljava/lang/String;)I

    move-result v12

    const-string v14, "pause"

    invoke-static {v14}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v14}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v15, v2

    move-wide/from16 v16, v3

    iget-wide v2, v1, Lus/shandian/giga/get/DownloadMission;->timestamp:J

    const-string v4, "com.gold.android.youtube.pause_download"

    invoke-direct {v0, v4, v2, v3}, Lus/shandian/giga/service/DownloadManagerService;->makePendingIntent(Ljava/lang/String;J)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v12, v14, v2}, Lcas;->e(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v2, "ic_close"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getDWByName(Ljava/lang/String;)I

    move-result v2

    const-string v3, "cancel"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v18, v5

    iget-wide v4, v1, Lus/shandian/giga/get/DownloadMission;->timestamp:J

    invoke-direct {v0, v13, v4, v5}, Lus/shandian/giga/service/DownloadManagerService;->makePendingIntent(Ljava/lang/String;J)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v11, v2, v3, v4}, Lcas;->e(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_239

    :cond_1dc
    move-object v15, v2

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    iget-boolean v2, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v2, :cond_21a

    const-string v2, "ic_play_arrow"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getDWByName(Ljava/lang/String;)I

    move-result v2

    const-string v3, "resume_offline"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v1, Lus/shandian/giga/get/DownloadMission;->timestamp:J

    const-string v6, "com.gold.android.youtube.resume_download"

    invoke-direct {v0, v6, v4, v5}, Lus/shandian/giga/service/DownloadManagerService;->makePendingIntent(Ljava/lang/String;J)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v11, v2, v3, v4}, Lcas;->e(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v2, "ic_close"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getDWByName(Ljava/lang/String;)I

    move-result v2

    const-string v3, "cancel"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v1, Lus/shandian/giga/get/DownloadMission;->timestamp:J

    invoke-direct {v0, v13, v4, v5}, Lus/shandian/giga/service/DownloadManagerService;->makePendingIntent(Ljava/lang/String;J)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v11, v2, v3, v4}, Lcas;->e(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_239

    :cond_21a
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v2

    if-eqz v2, :cond_239

    const-string v2, "ic_close"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getDWByName(Ljava/lang/String;)I

    move-result v2

    const-string v3, "cancel"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v1, Lus/shandian/giga/get/DownloadMission;->timestamp:J

    invoke-direct {v0, v13, v4, v5}, Lus/shandian/giga/service/DownloadManagerService;->makePendingIntent(Ljava/lang/String;J)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v11, v2, v3, v4}, Lcas;->e(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :cond_239
    :goto_239
    iget-wide v2, v1, Lus/shandian/giga/get/DownloadMission;->done:J

    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->getLength()J

    move-result-wide v4

    iget-wide v6, v0, Lus/shandian/giga/service/DownloadManagerService;->mCurrentSpeed:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_288

    sub-long v8, v4, v2

    cmp-long v10, v8, v6

    if-ltz v10, :cond_288

    div-long v8, v8, v6

    long-to-int v8, v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x3c

    if-ge v8, v10, :cond_264

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " secs left"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_281

    :cond_264
    const/16 v10, 0xe10

    if-ge v8, v10, :cond_275

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mins left"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_281

    :cond_275
    div-int/lit16 v8, v8, 0xe10

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hrs left"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    :goto_281
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcas;->u(Ljava/lang/CharSequence;)V

    :cond_288
    invoke-virtual {v11}, Lcas;->a()Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method

.method public static compactFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_36

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v1, 0x14

    if-le v4, v1, :cond_36

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_36
    return-object p0
.end method

.method private handleConnectivityState(Z)V
    .registers 9

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "DownloadManagerService"

    if-nez v0, :cond_12

    sget-object v2, Lus/shandian/giga/service/DownloadManager$NetworkState;->Unavailable:Lus/shandian/giga/service/DownloadManager$NetworkState;

    const-string v3, "Active network [connectivity is unavailable]"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    :cond_12
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v3

    if-eqz v2, :cond_26

    if-eqz v3, :cond_23

    sget-object v4, Lus/shandian/giga/service/DownloadManager$NetworkState;->MeteredOperating:Lus/shandian/giga/service/DownloadManager$NetworkState;

    goto :goto_25

    :cond_23
    sget-object v4, Lus/shandian/giga/service/DownloadManager$NetworkState;->Operating:Lus/shandian/giga/service/DownloadManager$NetworkState;

    :goto_25
    goto :goto_28

    :cond_26
    sget-object v4, Lus/shandian/giga/service/DownloadManager$NetworkState;->Unavailable:Lus/shandian/giga/service/DownloadManager$NetworkState;

    :goto_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active network [connected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " metered="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    :goto_57
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    if-nez v1, :cond_5c

    return-void

    :cond_5c
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v1, v2, p1}, Lus/shandian/giga/service/DownloadManager;->handleConnectivityState(Lus/shandian/giga/service/DownloadManager$NetworkState;Z)V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lus/shandian/giga/get/DownloadMission;

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_a0

    goto :goto_76

    :pswitch_11  #0x3
    invoke-virtual {p0, v0}, Lus/shandian/giga/service/DownloadManagerService;->notifyFailedDownload(Lus/shandian/giga/get/DownloadMission;)V

    invoke-direct {p0, v3}, Lus/shandian/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2}, Lus/shandian/giga/service/DownloadManager;->runMissions()Z

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2}, Lus/shandian/giga/service/DownloadManager;->getMissionsPending()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_29

    move v3, v1

    :cond_29
    invoke-virtual {p0, v3}, Lus/shandian/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    goto :goto_76

    :pswitch_2d  #0x2
    iget-object v2, v0, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->notifyMediaScanner(Landroid/net/Uri;)V

    iget-object v2, v0, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lus/shandian/giga/service/DownloadManagerService;->compactFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->notifyFinishedDownload(Ljava/lang/String;)V

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2, v0}, Lus/shandian/giga/service/DownloadManager;->setFinished(Lus/shandian/giga/get/DownloadMission;)V

    invoke-direct {p0, v3}, Lus/shandian/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2}, Lus/shandian/giga/service/DownloadManager;->runMissions()Z

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2}, Lus/shandian/giga/service/DownloadManager;->getMissionsPending()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5d

    move v3, v1

    :cond_5d
    invoke-virtual {p0, v3}, Lus/shandian/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    goto :goto_76

    :pswitch_61  #0x1
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2}, Lus/shandian/giga/service/DownloadManager;->getMissionsPending()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6e

    move v3, v1

    :cond_6e
    invoke-virtual {p0, v3}, Lus/shandian/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    goto :goto_76

    :pswitch_72  #0x0
    invoke-virtual {p0, v1}, Lus/shandian/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    nop

    :goto_76
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_86

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mFailedDownloads:Landroid/util/SparseArray;

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->mFailedDownloads:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_86
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler$Callback;

    invoke-interface {v3, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    goto :goto_8c

    :cond_9c
    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManagerService;->updateNotifications()V

    return v1

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_72  #00000000
        :pswitch_61  #00000001
        :pswitch_2d  #00000002
        :pswitch_11  #00000003
    .end packed-switch
.end method

.method private handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7

    const-string v0, "downloads_maximum_retry"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    :try_start_11
    const-string v0, "downloads_maximum_retry_default"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    if-nez v0, :cond_25

    move v3, v1

    goto :goto_29

    :cond_25
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_29
    iput v3, v2, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2b} :catch_2c

    goto :goto_31

    :catch_2c
    move-exception v0

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    iput v1, v2, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I

    :goto_31
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager;->updateMaximumAttempts()V

    goto :goto_9b

    :cond_37
    const-string v0, "downloads_cross_network"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lus/shandian/giga/service/DownloadManager;->mPrefMeteredDownloads:Z

    goto :goto_9b

    :cond_50
    const-string v0, "downloads_queue_limit"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    goto :goto_9b

    :cond_6a
    const-string v0, "download_path_video_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManagerService;->loadMainVideoStorage()Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    move-result-object v1

    iput-object v1, v0, Lus/shandian/giga/service/DownloadManager;->mMainStorageVideo:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    goto :goto_9b

    :cond_83
    const-string v0, "download_path_audio_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManagerService;->loadMainAudioStorage()Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    move-result-object v1

    iput-object v1, v0, Lus/shandian/giga/service/DownloadManager;->mMainStorageAudio:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    :cond_9b
    :goto_9b
    return-void
.end method

.method private synthetic lambda$onStartCommand$0(Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManagerService;->startMission(Landroid/content/Intent;)V

    return-void
.end method

.method private loadMainAudioStorage()Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;
    .registers 3

    const-string v0, "download_path_audio_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    const-string v1, "audio"

    invoke-direct {p0, v0, v1}, Lus/shandian/giga/service/DownloadManagerService;->loadMainStorage(ILjava/lang/String;)Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    move-result-object v0

    return-object v0
.end method

.method private loadMainStorage(ILjava/lang/String;)Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;
    .registers 9

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_84

    :cond_14
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v3, Ljava/io/File;->separatorChar:C

    const-string v4, "DownloadManagerService"

    if-ne v1, v3, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old save path style present: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p0, p1}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4a
    :try_start_4a
    new-instance v1, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, p0, v3, p2}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_53} :catch_54

    return-object v1

    :catch_54
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load the storage of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v3, "no_available_dir"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-object v2

    :cond_84
    :goto_84
    return-object v2
.end method

.method private loadMainVideoStorage()Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;
    .registers 3

    const-string v0, "download_path_video_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    const-string v1, "video"

    invoke-direct {p0, v0, v1}, Lus/shandian/giga/service/DownloadManagerService;->loadMainStorage(ILjava/lang/String;)Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    move-result-object v0

    return-object v0
.end method

.method private makePendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lus/shandian/giga/service/DownloadManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Landroidx/core/app/PendingIntentCompat;->getService(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private makePendingIntent(Ljava/lang/String;J)Landroid/app/PendingIntent;
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lus/shandian/giga/service/DownloadManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadManagerService.extra.mission_timestamp"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    xor-long/2addr v2, p2

    long-to-int v2, v2

    xor-int/2addr v1, v2

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Landroidx/core/app/PendingIntentCompat;->getService(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private manageLock(Z)V
    .registers 3

    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mLockAcquired:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mLockAcquired:Z

    return-void
.end method

.method private notifyMediaScanner(Landroid/net/Uri;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lus/shandian/giga/service/DownloadManagerService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static startMission(Landroid/content/Context;[Ljava/lang/String;Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;CILcom/gold/youtube/om7753/extractor/stream/StreamInfo;Ljava/lang/String;[Ljava/lang/String;JLjava/util/ArrayList;)V
    .registers 14

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lus/shandian/giga/service/DownloadManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.RUN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadManagerService.extra.urls"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadManagerService.extra.kind"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadManagerService.extra.threads"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadManagerService.extra.postprocessingName"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadManagerService.extra.postprocessingArgs"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadManagerService.extra.nearLength"

    invoke-virtual {v0, v1, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadManagerService.extra.recoveryInfo"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getParentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "DownloadManagerService.extra.storageParentPath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "DownloadManagerService.extra.storagePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadManagerService.extra.storageTag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadManagerService.extra.streamInfo"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private startMission(Landroid/content/Intent;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "DownloadManagerService.extra.urls"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v0, "DownloadManagerService.extra.storagePath"

    const-class v4, Landroid/net/Uri;

    invoke-static {v2, v0, v4}, Landroidx/core/content/IntentCompat;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    const-string v0, "DownloadManagerService.extra.storageParentPath"

    const-class v5, Landroid/net/Uri;

    invoke-static {v2, v0, v5}, Landroidx/core/content/IntentCompat;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/Uri;

    const-string v0, "DownloadManagerService.extra.threads"

    const/4 v6, 0x1

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "DownloadManagerService.extra.kind"

    const/16 v8, 0x3f

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v8

    const-string v0, "DownloadManagerService.extra.postprocessingName"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "DownloadManagerService.extra.postprocessingArgs"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v0, "DownloadManagerService.extra.nearLength"

    const-wide/16 v11, 0x0

    invoke-virtual {v2, v0, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v0, "DownloadManagerService.extra.storageTag"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v0, "DownloadManagerService.extra.streamInfo"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    const-string v0, "DownloadManagerService.extra.recoveryInfo"

    const-class v15, Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-static {v2, v0, v15}, Landroidx/core/content/IntentCompat;->getParcelableArrayListExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_5d
    new-instance v0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-direct {v0, v1, v5, v4, v13}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_62} :catch_9f

    nop

    if-nez v9, :cond_6a

    const/16 v16, 0x0

    move-object/from16 v6, v16

    goto :goto_70

    :cond_6a
    invoke-static {v9, v10}, Lus/shandian/giga/postprocessing/Postprocessing;->getAlgorithm(Ljava/lang/String;[Ljava/lang/String;)Lus/shandian/giga/postprocessing/Postprocessing;

    move-result-object v16

    move-object/from16 v6, v16

    :goto_70
    new-instance v2, Lus/shandian/giga/get/DownloadMission;

    invoke-direct {v2, v3, v0, v8, v6}, Lus/shandian/giga/get/DownloadMission;-><init>([Ljava/lang/String;Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;CLus/shandian/giga/postprocessing/Postprocessing;)V

    iput v7, v2, Lus/shandian/giga/get/DownloadMission;->threadCount:I

    move-object/from16 v16, v0

    invoke-virtual {v14}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lus/shandian/giga/get/DownloadMission;->source:Ljava/lang/String;

    iput-wide v11, v2, Lus/shandian/giga/get/DownloadMission;->nearLength:J

    const/4 v0, 0x0

    new-array v0, v0, [Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/shandian/giga/get/MissionRecoveryInfo;

    iput-object v0, v2, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    if-eqz v6, :cond_95

    invoke-static {v1}, Lus/shandian/giga/service/DownloadManager;->pickAvailableTemporalDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v6, v0}, Lus/shandian/giga/postprocessing/Postprocessing;->setTemporalDir(Ljava/io/File;)V

    :cond_95
    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lus/shandian/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    iget-object v0, v1, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v0, v2}, Lus/shandian/giga/service/DownloadManager;->startMission(Lus/shandian/giga/get/DownloadMission;)V

    return-void

    :catch_9f
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private declared-synchronized updateNotifications()V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_b

    goto/16 :goto_a7

    :cond_b
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager;->getMissionsPending()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_21

    invoke-virtual {p0, v3}, Lus/shandian/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    goto :goto_75

    :cond_21
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/shandian/giga/get/DownloadMission;

    invoke-direct {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->buildDownloadNotification(Lus/shandian/giga/get/DownloadMission;)Landroid/app/Notification;

    move-result-object v3

    iget-boolean v4, p0, Lus/shandian/giga/service/DownloadManagerService;->mForeground:Z

    const/16 v5, 0x3e8

    if-nez v4, :cond_3b

    invoke-virtual {p0, v5, v3}, Lus/shandian/giga/service/DownloadManagerService;->startForeground(ILandroid/app/Notification;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lus/shandian/giga/service/DownloadManagerService;->mForeground:Z

    invoke-direct {p0, v4}, Lus/shandian/giga/service/DownloadManagerService;->manageLock(Z)V

    goto :goto_40

    :cond_3b
    iget-object v4, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :goto_48
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_75

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lus/shandian/giga/get/DownloadMission;

    iget-wide v7, v6, Lus/shandian/giga/get/DownloadMission;->timestamp:J

    iget-wide v9, v6, Lus/shandian/giga/get/DownloadMission;->timestamp:J

    const/16 v11, 0x20

    ushr-long/2addr v9, v11

    xor-long/2addr v7, v9

    long-to-int v7, v7

    if-ne v7, v5, :cond_61

    add-int/lit8 v7, v7, 0x1

    :cond_61
    invoke-direct {p0, v6}, Lus/shandian/giga/service/DownloadManagerService;->buildDownloadNotification(Lus/shandian/giga/get/DownloadMission;)Landroid/app/Notification;

    move-result-object v8

    iget-object v9, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v9, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_75
    :goto_75
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mActiveNotificationIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9a

    iget-object v4, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_9a
    goto :goto_7b

    :cond_9b
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mActiveNotificationIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mActiveNotificationIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_a5
    .catchall {:try_start_1 .. :try_end_a5} :catchall_a9

    monitor-exit p0

    return-void

    :cond_a7
    :goto_a7
    monitor-exit p0

    return-void

    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v0
.end method


# virtual methods
.method public notifyFailedDownload(Lus/shandian/giga/get/DownloadMission;)V
    .registers 6

    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    if-eqz v0, :cond_88

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mFailedDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_d

    goto :goto_88

    :cond_d
    iget v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mFailedDownloads:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Lcas;

    if-nez v1, :cond_4b

    invoke-virtual {p0}, Lus/shandian/giga/service/DownloadManagerService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108008a

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadFailed:Landroid/graphics/Bitmap;

    new-instance v1, Lcas;

    const-string v3, "notification_channel_id"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcas;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcas;->h(Z)V

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadFailed:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcas;->o(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcas;->s(I)V

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mOpenDownloadList:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Lcas;->y(Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Lcas;

    :cond_4b
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Lcas;

    const-string v2, "download_failed"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcas;->l(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Lcas;

    iget-object v2, p1, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lus/shandian/giga/service/DownloadManagerService;->compactFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcas;->k(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Lcas;

    new-instance v2, Lcar;

    invoke-direct {v2}, Lcar;-><init>()V

    iget-object v3, p1, Lus/shandian/giga/get/DownloadMission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcar;->c(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lcas;->t(Lcbv;)V

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Lcas;

    invoke-virtual {v2}, Lcas;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_88
    :goto_88
    return-void
.end method

.method public notifyFinishedDownload(Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_a

    goto/16 :goto_c6

    :cond_a
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    const/4 v1, 0x1

    if-nez v0, :cond_55

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lus/shandian/giga/service/DownloadManagerService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1080082

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadDone:Landroid/graphics/Bitmap;

    new-instance v0, Lcas;

    const-string v3, "notification_channel_id"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcas;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcas;->h(Z)V

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadDone:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcas;->o(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Lcas;->s(I)V

    const-string v2, "com.gold.android.youtube.reset_download_finished"

    invoke-direct {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->makePendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcas;->n(Landroid/app/PendingIntent;)V

    const-string v2, "com.gold.android.youtube.open_downloads_finished"

    invoke-direct {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->makePendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcas;->y(Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    :cond_55
    iget v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    iget v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    if-ne v0, v1, :cond_8b

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcas;->l(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    iget v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    invoke-static {p0, v1}, Lcom/gold/youtube/om7753/util/Localization;->downloadCount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcas;->k(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    new-instance v1, Lcar;

    invoke-direct {v1}, Lcar;-><init>()V

    iget v2, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    invoke-static {p0, v2}, Lcom/gold/youtube/om7753/util/Localization;->downloadCount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcar;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lcar;->c(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcas;->t(Lcbv;)V

    goto :goto_b8

    :cond_8b
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    new-instance v1, Lcar;

    invoke-direct {v1}, Lcar;-><init>()V

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lcar;->c(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcas;->t(Lcbv;)V

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    iget v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    invoke-static {p0, v1}, Lcom/gold/youtube/om7753/util/Localization;->downloadCount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcas;->l(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcas;->k(Ljava/lang/CharSequence;)V

    :goto_b8
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    invoke-virtual {v1}, Lcas;->a()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_c6
    :goto_c6
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 6

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-boolean v0, Lcom/gold/youtube/om7753/settings/files/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "DownloadManagerService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance v0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    invoke-direct {v0, p0}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;-><init>(Lus/shandian/giga/service/DownloadManagerService;)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lus/shandian/giga/service/DownloadManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lus/shandian/giga/service/DownloadManagerService$$ExternalSyntheticLambda2;-><init>(Lus/shandian/giga/service/DownloadManagerService;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Lus/shandian/giga/service/DownloadManager;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManagerService;->loadMainVideoStorage()Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    move-result-object v2

    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManagerService;->loadMainAudioStorage()Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lus/shandian/giga/service/DownloadManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gold/youtube/om7753/download/DownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Landroidx/core/app/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mOpenDownloadList:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lus/shandian/giga/service/DownloadManagerService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ic_launcher"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getDWByName(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->icLauncher:Landroid/graphics/Bitmap;

    new-instance v1, Lcas;

    const-string v2, "notification_channel_id"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcas;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mOpenDownloadList:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Lcas;->y(Landroid/app/PendingIntent;)V

    const v2, 0x1080081

    invoke-virtual {v1, v2}, Lcas;->s(I)V

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->icLauncher:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcas;->o(Landroid/graphics/Bitmap;)V

    const-string v2, "msg_running"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcas;->l(Ljava/lang/CharSequence;)V

    const-string v2, "msg_running_detail"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcas;->k(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcas;->a()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotification:Landroid/app/Notification;

    const-class v2, Landroid/app/NotificationManager;

    invoke-static {p0, v2}, Landroidx/core/contents/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-static {p0, v2}, Landroidx/core/contents/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v2, Lus/shandian/giga/service/DownloadManagerService$1;

    invoke-direct {v2, p0}, Lus/shandian/giga/service/DownloadManagerService$1;-><init>(Lus/shandian/giga/service/DownloadManagerService;)V

    iput-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    iget-object v4, p0, Lus/shandian/giga/service/DownloadManagerService;->mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "downloads_cross_network"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lus/shandian/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "downloads_maximum_retry"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lus/shandian/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "downloads_queue_limit"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lus/shandian/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 6

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-boolean v0, Lcom/gold/youtube/om7753/settings/files/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "DownloadManagerService"

    const-string v1, "Destroying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/core/app/ServiceCompat;->stopForeground(Landroid/app/Service;I)V

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    invoke-virtual {v1, v2}, Lcas;->n(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    invoke-virtual {v3}, Lcas;->a()Landroid/app/Notification;

    move-result-object v3

    const/16 v4, 0x3e9

    invoke-virtual {v1, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2d
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lus/shandian/giga/service/DownloadManagerService;->manageLock(Z)V

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadDone:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadDone:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_48
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadFailed:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadFailed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_51
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->icLauncher:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->icLauncher:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5a
    iput-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v1, v0}, Lus/shandian/giga/service/DownloadManager;->pauseAllMissions(Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 14

    sget-boolean v0, Lcom/gold/youtube/om7753/settings/files/BuildConfig;->DEBUG:Z

    const-string v1, "DownloadManagerService"

    if-eqz v0, :cond_10

    if-nez p1, :cond_b

    const-string v0, "Restarting"

    goto :goto_d

    :cond_b
    const-string v0, "Starting"

    :goto_d
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v0, 0x2

    if-nez p1, :cond_14

    return v0

    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_133

    const-string v3, "android.intent.action.RUN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lus/shandian/giga/service/DownloadManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lus/shandian/giga/service/DownloadManagerService$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/service/DownloadManagerService;Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_133

    :cond_45
    const-string v3, "com.gold.android.youtube.pause_download"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "DownloadManagerService.extra.mission_timestamp"

    const-wide/16 v5, -0x1

    if-eqz v3, :cond_81

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager;->getMissionsPending()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/shandian/giga/get/DownloadMission;

    iget-wide v6, v5, Lus/shandian/giga/get/DownloadMission;->timestamp:J

    cmp-long v6, v6, v3

    if-nez v6, :cond_7e

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v0, v5}, Lus/shandian/giga/service/DownloadManager;->pauseMission(Lus/shandian/giga/get/DownloadMission;)V

    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManagerService;->updateNotifications()V

    goto :goto_7f

    :cond_7e
    goto :goto_63

    :cond_7f
    :goto_7f
    goto/16 :goto_133

    :cond_81
    const-string v3, "com.gold.android.youtube.resume_download"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager;->getMissionsPending()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/shandian/giga/get/DownloadMission;

    iget-wide v6, v5, Lus/shandian/giga/get/DownloadMission;->timestamp:J

    cmp-long v6, v6, v3

    if-nez v6, :cond_b6

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v0, v5}, Lus/shandian/giga/service/DownloadManager;->resumeMission(Lus/shandian/giga/get/DownloadMission;)V

    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManagerService;->updateNotifications()V

    goto :goto_b7

    :cond_b6
    goto :goto_9b

    :cond_b7
    :goto_b7
    goto/16 :goto_133

    :cond_b9
    const-string v3, "com.gold.android.youtube.cancel_download"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_fa

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-eqz v0, :cond_132

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager;->getMissionsPending()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_132

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/shandian/giga/get/DownloadMission;

    iget-wide v8, v5, Lus/shandian/giga/get/DownloadMission;->timestamp:J

    cmp-long v6, v8, v3

    if-nez v6, :cond_f9

    invoke-virtual {v5}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-virtual {v5, v7}, Lus/shandian/giga/get/DownloadMission;->psContinue(Z)V

    goto :goto_f5

    :cond_f0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v0, v5, v2}, Lus/shandian/giga/service/DownloadManager;->deleteMission(Lus/shandian/giga/get/Mission;Z)V

    :goto_f5
    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManagerService;->updateNotifications()V

    goto :goto_132

    :cond_f9
    goto :goto_d4

    :cond_fa
    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Lcas;

    if-eqz v3, :cond_132

    const-string v2, "com.gold.android.youtube.reset_download_finished"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "com.gold.android.youtube.open_downloads_finished"

    if-nez v2, :cond_10e

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    :cond_10e
    iput v7, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_115
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/gold/youtube/om7753/download/DownloadActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->startActivity(Landroid/content/Intent;)V

    :cond_131
    return v0

    :cond_132
    :goto_132
    nop

    :cond_133
    :goto_133
    return v2
.end method

.method public updateForegroundState(Z)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    iget-boolean v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mForeground:Z

    if-nez v1, :cond_c

    iput-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mForeground:Z

    invoke-direct {p0, v0}, Lus/shandian/giga/service/DownloadManagerService;->manageLock(Z)V

    :cond_c
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mUpdateNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mUpdateNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_50

    :cond_1b
    iget-boolean v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mForeground:Z

    if-eqz v1, :cond_28

    invoke-static {p0, v0}, Landroidx/core/app/ServiceCompat;->stopForeground(Landroid/app/Service;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mForeground:Z

    invoke-direct {p0, v0}, Lus/shandian/giga/service/DownloadManagerService;->manageLock(Z)V

    :cond_28
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mUpdateNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mActiveNotificationIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_35

    :cond_4b
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mActiveNotificationIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_50
    return-void
.end method
