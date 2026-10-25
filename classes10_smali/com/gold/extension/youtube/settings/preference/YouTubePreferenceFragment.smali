.class public Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment;
.super Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;
.source "YouTubePreferenceFragment.java"


# instance fields
.field private preferenceScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public static synthetic $r8$lambda$-R9X6BH6Wvg69svNKdhnula8SK0()Ljava/lang/String;
    .registers 1

    .line 46
    const-string v0, "initialize failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Q8rSNJll3PbHc-3HNcbBzjuSReI()Ljava/lang/String;
    .registers 1

    .line 63
    const-string v0, "onStart failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$jNkmxdcL4GUCI_ojKL8fjtqvVCc()V
    .registers 1

    .line 82
    sget-object v0, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->searchViewController:Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->closeSearch()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeToolbar(Landroid/widget/Toolbar;)V
    .registers 2

    .line 72
    invoke-static {p1}, Lcom/gold/extension/shared/settings/BaseActivityHook;->setToolbarLayoutParams(Landroid/widget/Toolbar;)V

    return-void
.end method

.method public getPreferenceScreenForSearch()Landroid/preference/PreferenceScreen;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment;->preferenceScreen:Landroid/preference/PreferenceScreen;

    return-object p0
.end method

.method public initialize()V
    .registers 3

    .line 28
    invoke-super {p0}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;->initialize()V

    .line 31
    :try_start_3
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment;->preferenceScreen:Landroid/preference/PreferenceScreen;

    .line 32
    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;->sortPreferenceGroups(Landroid/preference/PreferenceGroup;)V

    .line 33
    iget-object v0, p0, Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment;->preferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;->setPreferenceScreenToolbar(Landroid/preference/PreferenceScreen;)V

    .line 40
    invoke-static {}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->isPackageNameOriginal()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 41
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CUSTOM_BRANDING_ICON:Lcom/gold/extension/shared/settings/EnumSetting;

    iget-object v0, v0, Lcom/gold/extension/shared/settings/EnumSetting;->key:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CUSTOM_BRANDING_NAME:Lcom/gold/extension/shared/settings/IntegerSetting;

    iget-object v1, v1, Lcom/gold/extension/shared/settings/IntegerSetting;->key:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;->removePreferences([Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_27

    :cond_26
    return-void

    :catch_27
    move-exception p0

    .line 46
    new-instance v0, Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPostToolbarSetup(Landroid/widget/Toolbar;Landroid/app/Dialog;)V
    .registers 3

    .line 80
    sget-object p0, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->searchViewController:Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;

    if-eqz p0, :cond_12

    .line 81
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isSearchActive()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 82
    new-instance p0, Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 55
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 58
    :try_start_3
    sget-object p0, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->searchViewController:Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;

    if-eqz p0, :cond_a

    .line 60
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->initializeSearchData()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    :cond_a
    return-void

    :catch_b
    move-exception p0

    .line 63
    new-instance v0, Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
