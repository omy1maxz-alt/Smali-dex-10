.class Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;
.super Los;
.source "MissionAdapter.java"


# instance fields
.field cancel:Landroid/view/MenuItem;

.field delete:Landroid/view/MenuItem;

.field icon:Landroid/widget/ImageView;

.field item:Lus/shandian/giga/service/DownloadManager$MissionItem;

.field lastDone:D

.field lastSpeed:[F

.field lastSpeedIdx:I

.field lastTimestamp:J

.field name:Landroid/widget/TextView;

.field open:Landroid/view/MenuItem;

.field pause:Landroid/view/MenuItem;

.field popupMenu:Landroid/widget/PopupMenu;

.field progress:Lus/shandian/giga/ui/common/ProgressDrawable;

.field queue:Landroid/view/MenuItem;

.field retry:Landroid/view/MenuItem;

.field showError:Landroid/view/MenuItem;

.field size:Landroid/widget/TextView;

.field source:Landroid/view/MenuItem;

.field start:Landroid/view/MenuItem;

.field status:Landroid/widget/TextView;

.field final synthetic this$0:Lus/shandian/giga/ui/adapter/MissionAdapter;


# direct methods
.method public static synthetic $r8$lambda$Fv4x5Ywh3OVz1xS_GUwtNjf59Rw(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lambda$new$2(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PAQE6UWV_7gFHr9RCCIksMCusOo(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ex7GwifKpxwkEskd_AZoMYjkGQ4(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hg7W3r5xFWp1V_F6bnnpaG-5PII(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/MenuItem;)Z
    .registers 2

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lambda$buildPopup$3(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lus/shandian/giga/ui/adapter/MissionAdapter;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->this$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-direct {p0, p2}, Los;-><init>(Landroid/view/View;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeed:[F

    new-instance p1, Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-direct {p1}, Lus/shandian/giga/ui/common/ProgressDrawable;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    iget-object p1, p0, Los;->a:Landroid/view/View;

    const-string p2, "item_bkg"

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-static {p1, p2}, Lalnh;->U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Los;->a:Landroid/view/View;

    const-string p2, "item_status"

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    iget-object p1, p0, Los;->a:Landroid/view/View;

    const-string p2, "item_name"

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->name:Landroid/widget/TextView;

    iget-object p1, p0, Los;->a:Landroid/view/View;

    const-string p2, "item_icon"

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->icon:Landroid/widget/ImageView;

    iget-object p1, p0, Los;->a:Landroid/view/View;

    const-string p2, "item_size"

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->name:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Los;->a:Landroid/view/View;

    const-string v0, "item_more"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->buildPopup(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    new-instance v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const-string v0, "retry"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    const-string v0, "cancel"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->cancel:Landroid/view/MenuItem;

    const-string v0, "start"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->start:Landroid/view/MenuItem;

    const-string v0, "pause"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    const-string v0, "menu_item_share"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->open:Landroid/view/MenuItem;

    const-string v0, "queue"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    const-string v0, "error_message_view"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    const-string v0, "delete"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    iget-object p1, p0, Los;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object p1, p0, Los;->a:Landroid/view/View;

    new-instance p2, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Los;->a:Landroid/view/View;

    new-instance p2, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda2;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V
    .registers 1

    invoke-direct {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->resetSpeedMeasure()V

    return-void
.end method

.method private buildPopup(Landroid/view/View;)Landroid/widget/PopupMenu;
    .registers 4

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->this$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-static {v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->access$100(Lus/shandian/giga/ui/adapter/MissionAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const-string p1, "mission"

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getMenuByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    new-instance p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda3;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-object v0
.end method

.method private synthetic lambda$buildPopup$3(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->this$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-static {v0, p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->access$200(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showPopupMenu()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object p1, p1, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    instance-of v0, p1, Lus/shandian/giga/get/FinishedMission;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->this$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-static {v0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->access$300(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/get/Mission;)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-direct {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showPopupMenu()V

    const/4 p1, 0x1

    return p1
.end method

.method private resetSpeedMeasure()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    const/4 v0, -0x1

    iput v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    return-void
.end method

.method private showPopupMenu()V
    .registers 6

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->cancel:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->start:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->open:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    instance-of v2, v0, Lus/shandian/giga/get/DownloadMission;

    if-eqz v2, :cond_34

    check-cast v0, Lus/shandian/giga/get/DownloadMission;

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    const/4 v2, 0x1

    if-eqz v0, :cond_a6

    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->hasInvalidStorage()Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_b0

    :cond_4e
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v3

    if-eqz v3, :cond_6f

    iget v0, v0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/16 v1, 0x3f1

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x3f2

    if-eq v0, v1, :cond_5f

    goto :goto_b0

    :cond_5f
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->cancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_b0

    :cond_6f
    iget-boolean v3, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v3, :cond_79

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_b0

    :cond_79
    iget v3, v0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_83

    iget-object v3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_83
    iget-object v3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    iget-boolean v4, v0, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->isPsFailed()Z

    move-result v3

    if-nez v3, :cond_9b

    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_9b

    const/4 v1, 0x1

    :cond_9b
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->start:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_b0

    :cond_a6
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->open:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_b0
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
