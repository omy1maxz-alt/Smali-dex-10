.class public Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;
.super Landroid/os/Binder;
.source "DownloadManagerService.java"


# instance fields
.field final synthetic this$0:Lus/shandian/giga/service/DownloadManagerService;


# direct methods
.method public constructor <init>(Lus/shandian/giga/service/DownloadManagerService;)V
    .registers 2

    iput-object p1, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public addMissionEventListener(Landroid/os/Handler$Callback;)V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmEchoObservers(Lus/shandian/giga/service/DownloadManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public askForSavePath()Z
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmPrefs(Lus/shandian/giga/service/DownloadManagerService;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    const-string v2, "downloads_storage_ask"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lus/shandian/giga/service/DownloadManagerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public clearDownloadNotifications()V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmNotificationManager(Lus/shandian/giga/service/DownloadManagerService;)Landroid/app/NotificationManager;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetdownloadDoneNotification(Lus/shandian/giga/service/DownloadManagerService;)Lcas;

    move-result-object v0

    const/16 v1, 0x3e9

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmNotificationManager(Lus/shandian/giga/service/DownloadManagerService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetdownloadDoneList(Lus/shandian/giga/service/DownloadManagerService;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0, v2}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fputdownloadDoneCount(Lus/shandian/giga/service/DownloadManagerService;I)V

    :cond_2b
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetdownloadFailedNotification(Lus/shandian/giga/service/DownloadManagerService;)Lcas;

    move-result-object v0

    if-eqz v0, :cond_6a

    :goto_33
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;)I

    move-result v0

    if-le v0, v1, :cond_56

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmNotificationManager(Lus/shandian/giga/service/DownloadManagerService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v2}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fputdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;I)V

    goto :goto_33

    :cond_56
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmFailedDownloads(Lus/shandian/giga/service/DownloadManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fputdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;I)V

    :cond_6a
    return-void
.end method

.method public enableNotifications(Z)V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0, p1}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fputmDownloadNotificationEnable(Lus/shandian/giga/service/DownloadManagerService;Z)V

    return-void
.end method

.method public getDownloadManager()Lus/shandian/giga/service/DownloadManager;
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmManager(Lus/shandian/giga/service/DownloadManagerService;)Lus/shandian/giga/service/DownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public getMainStorageAudio()Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmManager(Lus/shandian/giga/service/DownloadManagerService;)Lus/shandian/giga/service/DownloadManager;

    move-result-object v0

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager;->mMainStorageAudio:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    return-object v0
.end method

.method public getMainStorageVideo()Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmManager(Lus/shandian/giga/service/DownloadManagerService;)Lus/shandian/giga/service/DownloadManager;

    move-result-object v0

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager;->mMainStorageVideo:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    return-object v0
.end method

.method public removeMissionEventListener(Landroid/os/Handler$Callback;)V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmEchoObservers(Lus/shandian/giga/service/DownloadManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
