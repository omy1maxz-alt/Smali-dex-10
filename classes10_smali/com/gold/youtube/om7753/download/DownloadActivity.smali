.class public Lcom/gold/youtube/om7753/download/DownloadActivity;
.super Lfy;
.source "DownloadActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lfy;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/gold/youtube/om7753/download/DownloadActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadActivity;->updateFragments()V

    return-void
.end method

.method private updateFragments()V
    .registers 6

    new-instance v0, Lus/shandian/giga/ui/fragment/MissionsFragment;

    invoke-direct {v0}, Lus/shandian/giga/ui/fragment/MissionsFragment;-><init>()V

    invoke-virtual {p0}, Lcc;->getSupportFragmentManager()Lcv;

    move-result-object v1

    new-instance v4, Lat;

    invoke-direct {v4, v1}, Lat;-><init>(Lcv;)V

    const-string v2, "frame"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v2

    const-string v3, "fragment_tag"

    invoke-virtual {v4, v2, v0, v3}, Ldf;->s(ILbz;Ljava/lang/String;)V

    const/16 v0, 0x1003

    iput v0, v4, Ldf;->i:I

    invoke-virtual {v4}, Ldf;->e()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lus/shandian/giga/service/DownloadManagerService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Localization;->assureCorrectAppLanguage(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lfy;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ThemeHelper;->getDownTheme(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfy;->setContentView(Landroid/view/View;)V

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;->toolbarLayout:Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lfy;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lfy;->getSupportActionBar()Lfm;

    move-result-object p1

    if-eqz p1, :cond_46

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lfm;->l(Z)V

    const-string v1, "downloads"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lfm;->o(I)V

    invoke-virtual {p1, v0}, Lfm;->j(Z)V

    :cond_46
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/gold/youtube/om7753/download/DownloadActivity$1;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/download/DownloadActivity$1;-><init>(Lcom/gold/youtube/om7753/download/DownloadActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lfy;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const-string v1, "download_menu"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getMenuByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_e
    invoke-virtual {p0}, Lfy;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
