.class Lus/shandian/giga/service/DownloadManagerService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DownloadManagerService.java"


# instance fields
.field final synthetic this$0:Lus/shandian/giga/service/DownloadManagerService;


# direct methods
.method constructor <init>(Lus/shandian/giga/service/DownloadManagerService;)V
    .registers 2

    iput-object p1, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$mhandleConnectivityState(Lus/shandian/giga/service/DownloadManagerService;Z)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$mhandleConnectivityState(Lus/shandian/giga/service/DownloadManagerService;Z)V

    return-void
.end method
