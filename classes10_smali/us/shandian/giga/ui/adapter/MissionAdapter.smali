.class public Lus/shandian/giga/ui/adapter/MissionAdapter;
.super Lnr;
.source "MissionAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final ALGORITHMS:Landroid/util/SparseArray;


# instance fields
.field private final compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private mClear:Landroid/view/MenuItem;

.field private final mContext:Landroid/content/Context;

.field private final mDeleter:Lus/shandian/giga/ui/common/Deleter;

.field private final mDownloadManager:Lus/shandian/giga/service/DownloadManager;

.field private final mEmptyMessage:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mHidden:Ljava/util/ArrayList;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

.field private mLayout:I

.field private mPauseButton:Landroid/view/MenuItem;

.field private final mPendingDownloadsItems:Ljava/util/ArrayList;

.field private mRecover:Lus/shandian/giga/ui/adapter/MissionAdapter$RecoverHelper;

.field private mSnackbar:Lauha;

.field private mStartButton:Landroid/view/MenuItem;

.field private final mView:Landroid/view/View;

.field private final rDelete:Ljava/lang/Runnable;

.field private final rUpdater:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$ROW5ueWAb5GyK8IjYfZn1w7OxBs(Lus/shandian/giga/ui/adapter/MissionAdapter;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->lambda$clearFinishedDownloads$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$USBbUOv34Nff_J7my6twYsR3syY(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/get/DownloadMission;ILandroid/content/DialogInterface;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lus/shandian/giga/ui/adapter/MissionAdapter;->lambda$showError$0(Lus/shandian/giga/get/DownloadMission;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dGamGol-Xq-Kua1ogof-YXHNe2M(Lus/shandian/giga/ui/adapter/MissionAdapter;)V
    .registers 1

    invoke-direct {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->deleteFinishedDownloads()V

    return-void
.end method

.method public static synthetic $r8$lambda$lXKyFSsGnO_1oiaAn3toWpqBKZ4(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->lambda$showError$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$y3CGvJZQshObATJeJmxwaj6Qh4I(Lus/shandian/giga/ui/adapter/MissionAdapter;)V
    .registers 1

    invoke-direct {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updater()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lus/shandian/giga/service/DownloadManager;Landroid/view/View;Landroid/view/View;)V
    .registers 13

    invoke-direct {p0}, Lnr;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    new-instance v0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda3;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;)V

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->rUpdater:Ljava/lang/Runnable;

    new-instance v0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda4;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;)V

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->rDelete:Ljava/lang/Runnable;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const-string v0, "za_mission_item"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getLayoutByName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mLayout:I

    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mEmptyMessage:Landroid/view/View;

    invoke-virtual {p2}, Lus/shandian/giga/service/DownloadManager;->getIterator()Lus/shandian/giga/service/DownloadManager$MissionIterator;

    move-result-object v6

    iput-object v6, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    new-instance p3, Lus/shandian/giga/ui/common/Deleter;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lus/shandian/giga/ui/common/Deleter;-><init>(Landroid/view/View;Landroid/content/Context;Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/service/DownloadManager;Lus/shandian/giga/service/DownloadManager$MissionIterator;Landroid/os/Handler;)V

    iput-object p3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    iput-object p4, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mView:Landroid/view/View;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    invoke-direct {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkEmptyMessageVisibility()V

    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->onResume()V

    return-void
.end method

.method static synthetic access$100(Lus/shandian/giga/ui/adapter/MissionAdapter;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/MenuItem;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->handlePopupItem(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/get/Mission;)V
    .registers 2

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->viewWithFileProvider(Lus/shandian/giga/get/Mission;)V

    return-void
.end method

.method private checkEmptyMessageVisibility()V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->b()I

    move-result v0

    if-lez v0, :cond_b

    const/16 v0, 0x8

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mEmptyMessage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_19

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mEmptyMessage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    return-void
.end method

.method private checkInvalidFile(Lus/shandian/giga/get/Mission;)Z
    .registers 4

    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    return v0

    :cond_a
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const-string v1, "missing_file"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method private deleteFinishedDownloads()V
    .registers 6

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mSnackbar:Lauha;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lauha;->d()V

    :cond_7
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/Mission;

    if-eqz v1, :cond_32

    iget-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2, v1}, Lus/shandian/giga/service/DownloadManager;->deleteMission(Lus/shandian/giga/get/Mission;)V

    iget-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v1, v1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_32
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :cond_36
    return-void
.end method

.method private getViewHolder(Ljava/lang/Object;)Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v2, v2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    if-ne v2, p1, :cond_6

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method private handlePopupItem(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/MenuItem;)Z
    .registers 10

    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    instance-of v2, v0, Lus/shandian/giga/get/DownloadMission;

    if-eqz v2, :cond_16

    move-object v2, v0

    check-cast v2, Lus/shandian/giga/get/DownloadMission;

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    const/4 v3, 0x0

    if-eqz v2, :cond_9a

    const-string v6, "start"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v6

    if-eq p2, v6, :cond_4b

    const-string v6, "retry"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v6

    if-eq p2, v6, :cond_58

    const-string v6, "queue"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v6

    if-eq p2, v6, :cond_79

    const-string v6, "pause"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v6

    if-eq p2, v6, :cond_8c

    const-string v6, "error_message_view"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v6

    if-eq p2, v6, :cond_92

    const-string v6, "cancel"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v6

    if-eq p2, v6, :cond_96

    goto :goto_9a

    :cond_4b
    iget-object p1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const-string p2, "--.-%"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {p1, v2}, Lus/shandian/giga/service/DownloadManager;->resumeMission(Lus/shandian/giga/get/DownloadMission;)V

    return v1

    :cond_58
    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result p1

    if-eqz p1, :cond_62

    invoke-virtual {v2, v1}, Lus/shandian/giga/get/DownloadMission;->psContinue(Z)V

    goto :goto_78

    :cond_62
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {p1, v2}, Lus/shandian/giga/service/DownloadManager;->tryRecover(Lus/shandian/giga/get/DownloadMission;)V

    iget-object p1, v2, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->isInvalid()Z

    move-result p1

    if-eqz p1, :cond_75

    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mRecover:Lus/shandian/giga/ui/adapter/MissionAdapter$RecoverHelper;

    invoke-interface {p1, v2}, Lus/shandian/giga/ui/adapter/MissionAdapter$RecoverHelper;->tryRecover(Lus/shandian/giga/get/DownloadMission;)V

    goto :goto_78

    :cond_75
    invoke-virtual {p0, v2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->recoverMission(Lus/shandian/giga/get/DownloadMission;)V

    :goto_78
    return v1

    :cond_79
    iget-object p2, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result p2

    xor-int/2addr p2, v1

    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-virtual {v2, p2}, Lus/shandian/giga/get/DownloadMission;->setEnqueued(Z)V

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    return v1

    :cond_8c
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {p1, v2}, Lus/shandian/giga/service/DownloadManager;->pauseMission(Lus/shandian/giga/get/DownloadMission;)V

    return v1

    :cond_92
    invoke-direct {p0, v2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->showError(Lus/shandian/giga/get/DownloadMission;)V

    return v1

    :cond_96
    invoke-virtual {v2, v3}, Lus/shandian/giga/get/DownloadMission;->psContinue(Z)V

    return v3

    :cond_9a
    :goto_9a
    const-string v6, "menu_item_share"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v6

    if-eq p2, v6, :cond_ab

    const-string v6, "delete"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v6

    if-eq p2, v6, :cond_af

    return v3

    :cond_ab
    invoke-direct {p0, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->shareFile(Lus/shandian/giga/get/Mission;)V

    return v1

    :cond_af
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    invoke-virtual {p1, v0}, Lus/shandian/giga/ui/common/Deleter;->append(Lus/shandian/giga/get/Mission;)V

    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    return v1
.end method

.method private isNotFinite(D)Z
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private synthetic lambda$clearFinishedDownloads$2(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/Mission;

    invoke-virtual {v0, v1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->unHide(Lus/shandian/giga/get/Mission;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1b
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->rDelete:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showError$0(Lus/shandian/giga/get/DownloadMission;ILandroid/content/DialogInterface;I)V
    .registers 5

    sget-object p3, Lcom/gold/youtube/om7753/error/UserAction;->DOWNLOAD_FAILED:Lcom/gold/youtube/om7753/error/UserAction;

    invoke-direct {p0, p1, p3, p2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->showError(Lus/shandian/giga/get/DownloadMission;Lcom/gold/youtube/om7753/error/UserAction;I)V

    return-void
.end method

.method private static synthetic lambda$showError$1(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private static resolveMimeType(Lus/shandian/giga/get/Mission;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1f

    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return-object v0

    :cond_1f
    iget-object p0, p0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lus/shandian/giga/util/Utility;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "*/*"

    if-nez p0, :cond_2e

    return-object v0

    :cond_2e
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object v0, p0

    :goto_3f
    return-object v0
.end method

.method private resolveShareableUri(Lus/shandian/giga/get/Mission;)Landroid/net/Uri;
    .registers 4

    iget-object v0, p1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    const-string p0, "com.gold.android.youtube.fileprovider"

    invoke-static {v0, p0, v1}, Layd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_24
    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private static setButtonVisible(Landroid/view/MenuItem;Z)V
    .registers 3

    if-eqz p0, :cond_b

    invoke-interface {p0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_b

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    return-void
.end method

.method private shareFile(Lus/shandian/giga/get/Mission;)V
    .registers 5

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkInvalidFile(Lus/shandian/giga/get/Mission;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->resolveMimeType(Lus/shandian/giga/get/Mission;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->resolveShareableUri(Lus/shandian/giga/get/Mission;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const-string v1, "share_dialog_title"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_44
    const-string v0, "android"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_44 .. :try_end_4e} :catch_4f

    goto :goto_58

    :catch_4f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_58
    return-void
.end method

.method private showError(Lus/shandian/giga/get/DownloadMission;)V
    .registers 8

    iget v0, p1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d3

    const/16 v1, 0xcc

    const/16 v2, 0x258

    const/16 v3, 0x64

    const-string v4, "general_error"

    const/4 v5, 0x0

    if-eq v0, v1, :cond_88

    const/16 v1, 0x194

    if-eq v0, v1, :cond_85

    const/16 v1, 0x1a0

    if-eq v0, v1, :cond_82

    packed-switch v0, :pswitch_data_d4

    if-lt v0, v3, :cond_33

    if-ge v0, v2, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8a

    :cond_33
    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    if-nez v0, :cond_3a

    const-string v5, "(not_decelerated_error_code)"

    goto :goto_8a

    :cond_3a
    sget-object v0, Lcom/gold/youtube/om7753/error/UserAction;->DOWNLOAD_FAILED:Lcom/gold/youtube/om7753/error/UserAction;

    invoke-static {v4}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, p1, v0, v4}, Lus/shandian/giga/ui/adapter/MissionAdapter;->showError(Lus/shandian/giga/get/DownloadMission;Lcom/gold/youtube/om7753/error/UserAction;I)V

    return-void

    :pswitch_44  #0x3f5
    const-string v4, "error_download_resource_gone"

    goto :goto_8a

    :pswitch_47  #0x3f4
    const-string v4, "error_timeout"

    goto :goto_8a

    :pswitch_4a  #0x3f3
    const-string v4, "error_progress_lost"

    goto :goto_8a

    :pswitch_4d  #0x3f2
    const-string v4, "error_insufficient_storage"

    goto :goto_8a

    :pswitch_50  #0x3f0
    const-string v4, "error_postprocessing_stopped"

    goto :goto_8a

    :pswitch_53  #0x3ef, 0x3f1
    sget-object v0, Lcom/gold/youtube/om7753/error/UserAction;->DOWNLOAD_POSTPROCESSING:Lcom/gold/youtube/om7753/error/UserAction;

    const-string v1, "error_postprocessing_failed"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->showError(Lus/shandian/giga/get/DownloadMission;Lcom/gold/youtube/om7753/error/UserAction;I)V

    return-void

    :pswitch_5f  #0x3ee
    const-string v4, "error_connect_host"

    goto :goto_8a

    :pswitch_62  #0x3ed
    const-string v4, "error_unknown_host"

    goto :goto_8a

    :pswitch_65  #0x3ec
    const-string v4, "error_ssl_exception"

    goto :goto_8a

    :pswitch_68  #0x3eb
    const-string v4, "permission_denied"

    goto :goto_8a

    :pswitch_6b  #0x3ea
    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    if-eqz v0, :cond_79

    sget-object v0, Lcom/gold/youtube/om7753/error/UserAction;->DOWNLOAD_FAILED:Lcom/gold/youtube/om7753/error/UserAction;

    invoke-static {v4}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, p1, v0, v4}, Lus/shandian/giga/ui/adapter/MissionAdapter;->showError(Lus/shandian/giga/get/DownloadMission;Lcom/gold/youtube/om7753/error/UserAction;I)V

    return-void

    :cond_79
    const-string v4, "msg_error"

    goto :goto_8a

    :pswitch_7c  #0x3e9
    const-string v4, "error_file_creation"

    goto :goto_8a

    :pswitch_7f  #0x3e8
    const-string v4, "error_path_creation"

    goto :goto_8a

    :cond_82
    const-string v4, "error_http_unsupported_range"

    goto :goto_8a

    :cond_85
    const-string v4, "error_http_not_found"

    goto :goto_8a

    :cond_88
    const-string v4, "error_http_no_content"

    :goto_8a
    invoke-static {v4}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v5, :cond_9b

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_9e

    :cond_9b
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_9e
    iget-object v1, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    if-eqz v1, :cond_b6

    iget v1, p1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-lt v1, v3, :cond_a8

    if-lt v1, v2, :cond_b6

    :cond_a8
    const-string v1, "error_report_title"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v4}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/get/DownloadMission;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_b6
    const-string v1, "finish"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;->INSTANCE:Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_d3
    return-void

    :pswitch_data_d4
    .packed-switch 0x3e8
        :pswitch_7f  #000003e8
        :pswitch_7c  #000003e9
        :pswitch_6b  #000003ea
        :pswitch_68  #000003eb
        :pswitch_65  #000003ec
        :pswitch_62  #000003ed
        :pswitch_5f  #000003ee
        :pswitch_53  #000003ef
        :pswitch_50  #000003f0
        :pswitch_53  #000003f1
        :pswitch_4d  #000003f2
        :pswitch_4a  #000003f3
        :pswitch_47  #000003f4
        :pswitch_44  #000003f5
    .end packed-switch
.end method

.method private showError(Lus/shandian/giga/get/DownloadMission;Lcom/gold/youtube/om7753/error/UserAction;I)V
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p1, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    if-eqz v1, :cond_2d

    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_2d

    aget-object v4, v1, v3

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2d
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_32
    iget-object v1, p1, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getServiceByUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/StreamingService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getServiceInfo()Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_41

    goto :goto_43

    :catch_41
    const-string v1, "none"

    :goto_43
    move-object v5, v1

    iget-object p1, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_1c8

    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    if-eqz v2, :cond_1c8

    iget-object v2, v2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    instance-of v3, v2, Lus/shandian/giga/get/FinishedMission;

    if-eqz v3, :cond_12

    goto/16 :goto_1c8

    :cond_12
    check-cast v2, Lus/shandian/giga/get/DownloadMission;

    iget-wide v3, v2, Lus/shandian/giga/get/DownloadMission;->done:J

    long-to-double v3, v3

    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->getLength()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget v9, v2, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v9, v10, :cond_28

    const/4 v9, 0x1

    goto :goto_29

    :cond_28
    const/4 v9, 0x0

    :goto_29
    iget-object v10, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isRecovering()Z

    move-result v13

    if-nez v13, :cond_40

    if-nez v9, :cond_3e

    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isInitialized()Z

    move-result v13

    if-eqz v13, :cond_40

    iget-boolean v13, v2, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    if-eqz v13, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v13, 0x0

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v13, 0x1

    :goto_41
    invoke-virtual {v10, v13}, Lus/shandian/giga/ui/common/ProgressDrawable;->setMarquee(Z)V

    iget-boolean v10, v2, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    const-wide/16 v13, 0x0

    if-eqz v10, :cond_53

    const-wide/high16 v15, 0x7ff8000000000000L  # Double.NaN

    iget-object v10, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-virtual {v10, v13, v14}, Lus/shandian/giga/ui/common/ProgressDrawable;->setProgress(D)V

    move-wide v13, v15

    goto :goto_5c

    :cond_53
    long-to-double v13, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double v13, v3, v13

    :goto_5c
    if-eqz v9, :cond_77

    iget-object v9, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-direct {v0, v13, v14}, Lus/shandian/giga/ui/adapter/MissionAdapter;->isNotFinite(D)Z

    move-result v10

    if-eqz v10, :cond_68

    const-wide/high16 v13, 0x3ff0000000000000L  # 1.0

    :cond_68
    invoke-virtual {v9, v13, v14}, Lus/shandian/giga/ui/common/ProgressDrawable;->setProgress(D)V

    iget-object v9, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const-string v10, "msg_error"

    invoke-static {v10}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a1

    :cond_77
    invoke-direct {v0, v13, v14}, Lus/shandian/giga/ui/adapter/MissionAdapter;->isNotFinite(D)Z

    move-result v9

    if-eqz v9, :cond_85

    iget-object v9, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const-string v10, "--.-%"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a1

    :cond_85
    iget-object v9, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    new-array v10, v11, [Ljava/lang/Object;

    const-wide/high16 v17, 0x4059000000000000L  # 100.0

    mul-double v17, v17, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v12

    const-string v11, "%.2f%%"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-virtual {v9, v13, v14}, Lus/shandian/giga/ui/common/ProgressDrawable;->setProgress(D)V

    :goto_a1
    invoke-static {v5, v6}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isPsFailed()Z

    move-result v11

    if-nez v11, :cond_1c3

    iget v11, v2, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/16 v13, 0x3f1

    if-ne v11, v13, :cond_b9

    goto/16 :goto_1c3

    :cond_b9
    iget-boolean v11, v2, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v11, :cond_c7

    iget-boolean v11, v2, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    if-eqz v11, :cond_c4

    const-string v11, "queued"

    goto :goto_da

    :cond_c4
    const-string v11, "paused"

    goto :goto_da

    :cond_c7
    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v11

    if-eqz v11, :cond_d0

    const-string v11, "post_processing"

    goto :goto_da

    :cond_d0
    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isRecovering()Z

    move-result v11

    if-eqz v11, :cond_d9

    const-string v11, "recovering"

    goto :goto_da

    :cond_d9
    const/4 v11, 0x0

    :goto_da
    if-eqz v11, :cond_ff

    invoke-static {v11}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v11

    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    const-string v3, "("

    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static/range {p1 .. p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->access$000(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    return-void

    :cond_ff
    iget-wide v13, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    const-wide/16 v17, 0x0

    cmp-long v11, v13, v17

    if-gez v11, :cond_111

    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-wide v7, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    iput-wide v3, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:D

    return-void

    :cond_111
    sub-long v13, v7, v13

    move-wide/from16 v19, v13

    iget-wide v12, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v21, v3, v12

    cmpl-double v14, v12, v3

    if-lez v14, :cond_128

    iput-wide v3, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:D

    iget-object v1, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_128
    const-wide/16 v12, 0x0

    cmpl-double v14, v21, v12

    if-lez v14, :cond_1c2

    cmp-long v12, v19, v17

    if-lez v12, :cond_1c2

    const-wide v12, 0x408f400000000000L  # 1000.0

    mul-double v21, v21, v12

    move-wide/from16 v12, v19

    long-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v12, v21, v12

    double-to-float v12, v12

    iget v13, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    if-gez v13, :cond_150

    iget-object v13, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeed:[F

    invoke-static {v13, v12}, Ljava/util/Arrays;->fill([FF)V

    const/4 v11, 0x0

    iput v11, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    move v14, v12

    goto :goto_163

    :cond_150
    move v14, v12

    const/4 v13, 0x0

    :goto_152
    iget-object v15, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeed:[F

    array-length v11, v15

    if-ge v13, v11, :cond_15d

    aget v11, v15, v13

    add-float/2addr v14, v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_152

    :cond_15d
    array-length v11, v15

    int-to-float v11, v11

    const/high16 v13, 0x3f800000  # 1.0f

    add-float/2addr v11, v13

    div-float/2addr v14, v11

    :goto_163
    float-to-double v13, v14

    invoke-static {v13, v14}, Lus/shandian/giga/util/Utility;->formatSpeed(D)Ljava/lang/String;

    move-result-object v11

    iget-boolean v2, v2, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    if-eqz v2, :cond_16f

    const-string v2, ""

    goto :goto_1a1

    :cond_16f
    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v3

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-long v5, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    double-to-long v13, v3

    invoke-static {v13, v14}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v5, v5

    invoke-static {v5, v6}, Lus/shandian/giga/util/Utility;->stringifySeconds(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1a1
    iget-object v5, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-wide v7, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    iput-wide v3, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:D

    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeed:[F

    iget v3, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    aput v12, v2, v3

    array-length v2, v2

    if-lt v4, v2, :cond_1c2

    const/4 v2, 0x0

    iput v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    :cond_1c2
    return-void

    :cond_1c3
    :goto_1c3
    iget-object v1, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c8
    :goto_1c8
    return-void
.end method

.method private updater()V
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v2, v2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    check-cast v2, Lus/shandian/giga/get/DownloadMission;

    iget-boolean v2, v2, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v2, :cond_1d

    goto :goto_6

    :cond_1d
    invoke-direct {p0, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    goto :goto_6

    :cond_21
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->rUpdater:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private viewWithFileProvider(Lus/shandian/giga/get/Mission;)V
    .registers 5

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkInvalidFile(Lus/shandian/giga/get/Mission;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->resolveMimeType(Lus/shandian/giga/get/Mission;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->resolveShareableUri(Lus/shandian/giga/get/Mission;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_28

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_28
    const/16 v2, 0x17

    if-gt v0, v2, :cond_31

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_31
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils;->openIntentInApp(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_52

    :cond_43
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const-string v1, "toast_no_player"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_52
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->b()I

    move-result v0

    return v0
.end method

.method public applyChanges()V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->start()V

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {p0, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->dispatchUpdatesTo(Lhq;)V

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->end()V

    invoke-direct {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkEmptyMessageVisibility()V

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinishedMissions()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1d
    return-void
.end method

.method public checkMasterButtonsVisibility()V
    .registers 6

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasValidPendingMissions()[Z

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMasterButtonsVisibility() running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-boolean v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " paused="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-boolean v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MissionAdapter"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    aget-boolean v2, v0, v2

    invoke-static {v1, v2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->setButtonVisible(Landroid/view/MenuItem;Z)V

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    aget-boolean v0, v0, v3

    invoke-static {v1, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->setButtonVisible(Landroid/view/MenuItem;Z)V

    return-void
.end method

.method public clearFinishedDownloads(Z)V
    .registers 5

    if-eqz p1, :cond_79

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinishedMissions()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_79

    const/4 p1, 0x0

    :goto_13
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->b()I

    move-result v0

    if-ge p1, v0, :cond_42

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0, p1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getItem(I)Lus/shandian/giga/service/DownloadManager$MissionItem;

    move-result-object v0

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    instance-of v0, v0, Lus/shandian/giga/get/FinishedMission;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0, p1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getItem(I)Lus/shandian/giga/service/DownloadManager$MissionItem;

    move-result-object v0

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    check-cast v0, Lus/shandian/giga/get/FinishedMission;

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    if-eqz v0, :cond_3f

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v1, v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hide(Lus/shandian/giga/get/Mission;)V

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_42
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/gold/youtube/om7753/util/Localization;->deletedDownloadCount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mView:Landroid/view/View;

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lauha;->o(Landroid/view/View;Ljava/lang/CharSequence;I)Lauha;

    move-result-object p1

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mSnackbar:Lauha;

    const-string v0, "undo"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda2;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;)V

    invoke-virtual {p1, v0, v1}, Lauha;->s(ILandroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mSnackbar:Lauha;

    const/16 v1, -0x100

    invoke-virtual {p1}, Lauha;->h()V

    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->rDelete:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_83

    :cond_79
    if-nez p1, :cond_83

    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {p1}, Lus/shandian/giga/service/DownloadManager;->forgetFinishedDownloads()V

    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    :cond_83
    :goto_83
    return-void
.end method

.method public d(I)I
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0, p1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getSpecialAtItem(I)I

    move-result p1

    return p1
.end method

.method public dispatchUpdatesTo(Lhq;)V
    .registers 4

    invoke-static {p1}, Lhv;->a(Lhq;)Lhr;

    move-result-object v0

    new-instance v1, Lhj;

    invoke-direct {v1, p0}, Lhj;-><init>(Lnr;)V

    invoke-virtual {v0, v1}, Lhr;->a(Lhw;)V

    return-void
.end method

.method public forceUpdate()V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->start()V

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->end()V

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    invoke-static {v1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->access$000(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    goto :goto_10

    :cond_20
    invoke-virtual {p0}, Lnr;->ql()V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Los;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_15

    const/4 v0, 0x2

    if-eq p2, v0, :cond_15

    new-instance p2, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mLayout:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;Landroid/view/View;)V

    return-object p2

    :cond_15
    new-instance p2, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const-string v2, "za_missions_header"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getLayoutByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1b

    if-eq v0, v3, :cond_1b

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1b

    if-eq v0, v2, :cond_1b

    return v1

    :cond_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->getViewHolder(Ljava/lang/Object;)Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    move-result-object v0

    if-nez v0, :cond_24

    return v1

    :cond_24
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v3, :cond_2e

    if-eq p1, v2, :cond_2e

    invoke-direct {p0, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    return v4

    :cond_2e
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    return v4
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/common/Deleter;->dispose()V

    return-void
.end method

.method public onPaused()V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/common/Deleter;->pause()V

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->rUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/common/Deleter;->resume()V

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->rUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recoverMission(Lus/shandian/giga/get/DownloadMission;)V
    .registers 8

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->getViewHolder(Ljava/lang/Object;)Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    iput-object v1, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1, v2}, Lus/shandian/giga/get/DownloadMission;->resetState(ZZI)V

    iget-object v1, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const-string v2, "--.-%"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->getLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-virtual {v0, v3}, Lus/shandian/giga/ui/common/ProgressDrawable;->setMarquee(Z)V

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v0, p1}, Lus/shandian/giga/service/DownloadManager;->resumeMission(Lus/shandian/giga/get/DownloadMission;)V

    return-void
.end method

.method public refreshMissionItems()V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v2, v2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    check-cast v2, Lus/shandian/giga/get/DownloadMission;

    iget-boolean v2, v2, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v2, :cond_1d

    goto :goto_6

    :cond_1d
    invoke-direct {p0, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    invoke-static {v1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->access$000(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    goto :goto_6

    :cond_24
    return-void
.end method

.method public s(Los;I)V
    .registers 7

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0, p2}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getItem(I)Lus/shandian/giga/service/DownloadManager$MissionItem;

    move-result-object p2

    instance-of v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    if-eqz v0, :cond_2a

    iget p2, p2, Lus/shandian/giga/service/DownloadManager$MissionItem;->special:I

    if-nez p2, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x1

    if-ne p2, v0, :cond_15

    const-string p2, "missions_header_pending"

    goto :goto_1e

    :cond_15
    const-string p2, "missions_header_finished"

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    if-eqz v1, :cond_1e

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1e
    :goto_1e
    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result p2

    check-cast p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    iget-object p1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;->header:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_2a
    check-cast p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    iput-object p2, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v0, p2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    iget-char v1, v0, Lus/shandian/giga/get/Mission;->kind:C

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lus/shandian/giga/util/Utility;->getFileType(CLjava/lang/String;)Lus/shandian/giga/util/Utility$FileType;

    move-result-object v0

    iget-object v1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->icon:Landroid/widget/ImageView;

    invoke-static {v0}, Lus/shandian/giga/util/Utility;->getIconForFileType(Lus/shandian/giga/util/Utility$FileType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->name:Landroid/widget/TextView;

    iget-object v2, p2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    iget-object v2, v2, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    iget-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lus/shandian/giga/util/Utility;->getBackgroundForFileType(Landroid/content/Context;Lus/shandian/giga/util/Utility$FileType;)I

    move-result v2

    iget-object v3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lus/shandian/giga/util/Utility;->getForegroundForFileType(Landroid/content/Context;Lus/shandian/giga/util/Utility$FileType;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lus/shandian/giga/ui/common/ProgressDrawable;->setColors(II)V

    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    instance-of v0, v0, Lus/shandian/giga/get/DownloadMission;

    if-eqz v0, :cond_b2

    iget-object p2, p2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    check-cast p2, Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {p2}, Lus/shandian/giga/get/DownloadMission;->getLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p2, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v1, :cond_92

    invoke-virtual {p2}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v1

    if-nez v1, :cond_92

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --.- kB/s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_92
    iget-object v1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    iget-boolean p2, p2, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    if-eqz p2, :cond_a0

    const-string p2, "start"

    goto :goto_a2

    :cond_a0
    const-string p2, "pause"

    :goto_a2
    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    iget-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    :cond_b2
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/shandian/giga/ui/common/ProgressDrawable;->setMarquee(Z)V

    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    invoke-virtual {v0, v1, v2}, Lus/shandian/giga/ui/common/ProgressDrawable;->setProgress(D)V

    iget-object p1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    iget-object p2, p2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    iget-wide v0, p2, Lus/shandian/giga/get/Mission;->length:J

    invoke-static {v0, v1}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d3
    return-void
.end method

.method public setClearButton(Landroid/view/MenuItem;)V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    if-nez v0, :cond_d

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinishedMissions()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_d
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    return-void
.end method

.method public setLinear(Z)V
    .registers 2

    if-eqz p1, :cond_5

    const-string p1, "za_mission_item"

    goto :goto_7

    :cond_5
    const-string p1, "za_mission_item_linear"

    :goto_7
    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getLayoutByName(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mLayout:I

    return-void
.end method

.method public setMasterButtons(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    :cond_15
    return-void
.end method

.method public setRecover(Lus/shandian/giga/ui/adapter/MissionAdapter$RecoverHelper;)V
    .registers 2

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mRecover:Lus/shandian/giga/ui/adapter/MissionAdapter$RecoverHelper;

    return-void
.end method

.method public w(Los;)V
    .registers 4

    invoke-super {p0, p1}, Lnr;->w(Los;)V

    instance-of v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    if-eqz v0, :cond_8

    return-void

    :cond_8
    check-cast p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    instance-of v0, v0, Lus/shandian/giga/get/DownloadMission;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_23

    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    :cond_23
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    invoke-static {p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->access$000(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    return-void
.end method
