.class Lcom/gold/youtube/om7753/download/DownloadDialog$1;
.super Ljava/lang/Object;
.source "DownloadDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/gold/youtube/om7753/download/DownloadDialog;


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$1;->this$0:Lcom/gold/youtube/om7753/download/DownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    check-cast p2, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$1;->this$0:Lcom/gold/youtube/om7753/download/DownloadDialog;

    invoke-virtual {p2}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->getMainStorageAudio()Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->-$$Nest$fputmainStorageAudio(Lcom/gold/youtube/om7753/download/DownloadDialog;Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;)V

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$1;->this$0:Lcom/gold/youtube/om7753/download/DownloadDialog;

    invoke-virtual {p2}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->getMainStorageVideo()Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->-$$Nest$fputmainStorageVideo(Lcom/gold/youtube/om7753/download/DownloadDialog;Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;)V

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$1;->this$0:Lcom/gold/youtube/om7753/download/DownloadDialog;

    invoke-virtual {p2}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->getDownloadManager()Lus/shandian/giga/service/DownloadManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->-$$Nest$fputdownloadManager(Lcom/gold/youtube/om7753/download/DownloadDialog;Lus/shandian/giga/service/DownloadManager;)V

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$1;->this$0:Lcom/gold/youtube/om7753/download/DownloadDialog;

    invoke-virtual {p2}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->askForSavePath()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/gold/youtube/om7753/download/DownloadDialog;->-$$Nest$fputaskForSavePath(Lcom/gold/youtube/om7753/download/DownloadDialog;Z)V

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$1;->this$0:Lcom/gold/youtube/om7753/download/DownloadDialog;

    invoke-static {p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->-$$Nest$fgetokButton(Lcom/gold/youtube/om7753/download/DownloadDialog;)Landroidx/appcompat/view/menu/ActionMenuItemView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$1;->this$0:Lcom/gold/youtube/om7753/download/DownloadDialog;

    invoke-static {p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->-$$Nest$fgetcontext(Lcom/gold/youtube/om7753/download/DownloadDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
