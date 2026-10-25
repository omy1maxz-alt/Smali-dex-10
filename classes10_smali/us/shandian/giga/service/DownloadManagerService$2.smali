.class Lus/shandian/giga/service/DownloadManagerService$2;
.super Ljava/lang/Object;
.source "DownloadManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lus/shandian/giga/service/DownloadManagerService;


# direct methods
.method constructor <init>(Lus/shandian/giga/service/DownloadManagerService;)V
    .registers 2

    iput-object p1, p0, Lus/shandian/giga/service/DownloadManagerService$2;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$2;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmHandler(Lus/shandian/giga/service/DownloadManagerService;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$2;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$mupdateNotifications(Lus/shandian/giga/service/DownloadManagerService;)V

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$2;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmManager(Lus/shandian/giga/service/DownloadManagerService;)Lus/shandian/giga/service/DownloadManager;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$2;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmManager(Lus/shandian/giga/service/DownloadManagerService;)Lus/shandian/giga/service/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager;->getRunningMissionsCount()I

    move-result v0

    if-lez v0, :cond_2d

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$2;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmHandler(Lus/shandian/giga/service/DownloadManagerService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2d
    return-void
.end method
