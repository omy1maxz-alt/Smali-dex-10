.class public Lus/shandian/giga/ui/common/Deleter;
.super Ljava/lang/Object;
.source "Deleter.java"


# instance fields
.field private items:Ljava/util/ArrayList;

.field private final mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadManager:Lus/shandian/giga/service/DownloadManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

.field private final mView:Landroid/view/View;

.field private final rCommit:Ljava/lang/Runnable;

.field private final rNext:Ljava/lang/Runnable;

.field private final rShow:Ljava/lang/Runnable;

.field private running:Z

.field private snackbar:Lauha;


# direct methods
.method public static synthetic $r8$lambda$715lPonag5RGTBcFPMkUPraFetU(Lus/shandian/giga/ui/common/Deleter;)V
    .registers 1

    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->commit()V

    return-void
.end method

.method public static synthetic $r8$lambda$B-Gi_zHjoCZ_wZjG8qf-dwFZmVE(Lus/shandian/giga/ui/common/Deleter;)V
    .registers 1

    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->next()V

    return-void
.end method

.method public static synthetic $r8$lambda$FyT5B8vsS7c-AsCzD15A2OfakOQ(Lus/shandian/giga/ui/common/Deleter;)V
    .registers 1

    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$aut2AZrZ1M-A1oipBntO_gRmUSM(Lus/shandian/giga/ui/common/Deleter;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/common/Deleter;->lambda$next$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/service/DownloadManager;Lus/shandian/giga/service/DownloadManager$MissionIterator;Landroid/os/Handler;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lus/shandian/giga/ui/common/Deleter;->running:Z

    iput-object p1, p0, Lus/shandian/giga/ui/common/Deleter;->mView:Landroid/view/View;

    iput-object p2, p0, Lus/shandian/giga/ui/common/Deleter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lus/shandian/giga/ui/common/Deleter;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    iput-object p4, p0, Lus/shandian/giga/ui/common/Deleter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    iput-object p5, p0, Lus/shandian/giga/ui/common/Deleter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    iput-object p6, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    new-instance p1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda3;-><init>(Lus/shandian/giga/ui/common/Deleter;)V

    iput-object p1, p0, Lus/shandian/giga/ui/common/Deleter;->rShow:Ljava/lang/Runnable;

    new-instance p1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda2;-><init>(Lus/shandian/giga/ui/common/Deleter;)V

    iput-object p1, p0, Lus/shandian/giga/ui/common/Deleter;->rNext:Ljava/lang/Runnable;

    new-instance p1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/ui/common/Deleter;)V

    iput-object p1, p0, Lus/shandian/giga/ui/common/Deleter;->rCommit:Ljava/lang/Runnable;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method private commit()V
    .registers 6

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    return-void

    :cond_a
    :goto_a
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_40

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/shandian/giga/get/Mission;

    iget-boolean v2, v0, Lus/shandian/giga/get/Mission;->deleted:Z

    if-eqz v2, :cond_20

    goto :goto_a

    :cond_20
    iget-object v2, p0, Lus/shandian/giga/ui/common/Deleter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v2, v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->unHide(Lus/shandian/giga/get/Mission;)V

    iget-object v2, p0, Lus/shandian/giga/ui/common/Deleter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2, v0}, Lus/shandian/giga/service/DownloadManager;->deleteMission(Lus/shandian/giga/get/Mission;)V

    instance-of v2, v0, Lus/shandian/giga/get/FinishedMission;

    if-eqz v2, :cond_40

    iget-object v2, p0, Lus/shandian/giga/ui/common/Deleter;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_40
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_4c

    invoke-virtual {p0}, Lus/shandian/giga/ui/common/Deleter;->pause()V

    return-void

    :cond_4c
    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->show()V

    return-void
.end method

.method private forget()V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/Mission;

    invoke-virtual {v0, v1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->unHide(Lus/shandian/giga/get/Mission;)V

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->show()V

    return-void
.end method

.method private synthetic lambda$next$0(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->forget()V

    return-void
.end method

.method private next()V
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mContext:Landroid/content/Context;

    const-string v1, "file_deleted"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/Mission;

    iget-object v1, v1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->mView:Landroid/view/View;

    const/4 v2, -0x2

    invoke-static {v1, v0, v2}, Lauha;->o(Landroid/view/View;Ljava/lang/CharSequence;I)Lauha;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->snackbar:Lauha;

    const-string v1, "undo"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/common/Deleter;)V

    invoke-virtual {v0, v1, v2}, Lauha;->s(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->snackbar:Lauha;

    const/16 v2, -0x100

    invoke-virtual {v0}, Lauha;->h()V

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->rCommit:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private show()V
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lus/shandian/giga/ui/common/Deleter;->pause()V

    iput-boolean v1, p0, Lus/shandian/giga/ui/common/Deleter;->running:Z

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->rNext:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public append(Lus/shandian/giga/get/Mission;)V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->rCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->commit()V

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0, p1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hide(Lus/shandian/giga/get/Mission;)V

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->show()V

    return-void
.end method

.method public dispose()V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lus/shandian/giga/ui/common/Deleter;->pause()V

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/Mission;

    iget-object v2, p0, Lus/shandian/giga/ui/common/Deleter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2, v1}, Lus/shandian/giga/service/DownloadManager;->deleteMission(Lus/shandian/giga/get/Mission;)V

    goto :goto_13

    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public pause()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lus/shandian/giga/ui/common/Deleter;->running:Z

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->rNext:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->rShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->rCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->snackbar:Lauha;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lauha;->d()V

    :cond_1f
    return-void
.end method

.method public resume()V
    .registers 5

    iget-boolean v0, p0, Lus/shandian/giga/ui/common/Deleter;->running:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->rShow:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
