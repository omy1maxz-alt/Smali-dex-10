.class public Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity;
.super Lfy;


# instance fields
.field mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lfy;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lfy;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ThemeHelper;->setActivityTheme(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lfy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "settings_with_toolbar"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getLayoutByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity;->setContentView(I)V

    const-string v0, "youtube_toolbar"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lfy;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity$1;-><init>(Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->t(Landroid/view/View$OnClickListener;)V

    const-string v1, "settings_downloads_title"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->A(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result v2

    const-string v3, "quantum_ic_arrow_back_white_24"

    if-nez v2, :cond_3d

    const-string v3, "quantum_ic_arrow_back_grey600_24"

    :cond_3d
    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getDWByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->s(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcc;->getSupportFragmentManager()Lcv;

    move-result-object v1

    new-instance v0, Lat;

    invoke-direct {v0, v1}, Lat;-><init>(Lcv;)V

    const-string v1, "youtube_settings_fragments"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;-><init>()V

    const-string v3, "downloads_fragments"

    invoke-virtual {v0, v1, v2, v3}, Ldf;->s(ILbz;Ljava/lang/String;)V

    invoke-virtual {v0}, Ldf;->a()I

    return-void
.end method
