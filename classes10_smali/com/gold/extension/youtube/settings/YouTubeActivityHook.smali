.class public Lcom/gold/extension/youtube/settings/YouTubeActivityHook;
.super Lcom/gold/extension/shared/settings/BaseActivityHook;
.source "YouTubeActivityHook.java"


# static fields
.field public static final USE_BOLD_ICONS:Z

.field private static currentThemeValueOrdinal:I

.field public static searchViewController:Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$lSc6yCcrGvmfFtet0iqlJi1aW9U(Landroid/app/Activity;Landroid/view/View;)V
    .registers 2

    .line 103
    sget-object p1, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->searchViewController:Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isSearchActive()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 104
    sget-object p0, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->searchViewController:Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->handleBackPress()Z

    return-void

    .line 106
    :cond_10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 38
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SETTINGS_INITIALIZED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    sget-boolean v0, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_20_31_OR_GREATER:Z

    if-eqz v0, :cond_26

    const-string v0, "20.31.00"

    .line 40
    invoke-static {v0}, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->isSpoofingToLessThan(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->RESTORE_OLD_SETTINGS_MENUS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 41
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    sput-boolean v0, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->USE_BOLD_ICONS:Z

    .line 44
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->setAppIsUsingBoldIcons(Z)V

    const/4 v0, -0x1

    .line 47
    sput v0, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->currentThemeValueOrdinal:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/BaseActivityHook;-><init>()V

    return-void
.end method

.method public static handleBackPress()Z
    .registers 1

    .line 178
    sget-object v0, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->searchViewController:Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isSearchActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 179
    sget-object v0, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->searchViewController:Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->handleBackPress()Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public static initialize(Landroid/app/Activity;)V
    .registers 2

    .line 60
    new-instance v0, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;

    invoke-direct {v0}, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/BaseActivityHook;->initialize(Lcom/gold/extension/shared/settings/BaseActivityHook;Landroid/app/Activity;)V

    return-void
.end method

.method public static updateLightDarkModeStatus(Ljava/lang/Enum;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    .line 163
    sget v0, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->currentThemeValueOrdinal:I

    if-eq v0, p0, :cond_12

    .line 164
    sput p0, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->currentThemeValueOrdinal:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 165
    :goto_f
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->setIsDarkModeEnabled(Z)V

    :cond_12
    return-void
.end method

.method public static useBoldIcons(Z)Z
    .registers 1

    .line 189
    sget-boolean p0, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->USE_BOLD_ICONS:Z

    return p0
.end method

.method public static useCairoSettingsFragment(Z)Z
    .registers 3

    .line 139
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->RESTORE_OLD_SETTINGS_MENUS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 143
    :cond_e
    const-string v0, "19.35.36"

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->isSpoofingToLessThan(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    :cond_17
    return p0
.end method


# virtual methods
.method public createPreferenceFragment()Landroid/preference/PreferenceFragment;
    .registers 1

    .line 131
    new-instance p0, Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment;

    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment;-><init>()V

    return-object p0
.end method

.method public customizeActivityTheme(Landroid/app/Activity;)V
    .registers 3

    .line 68
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 69
    const-string p0, "Theme.YouTube.Settings.Dark"

    goto :goto_b

    .line 70
    :cond_9
    const-string p0, "Theme.YouTube.Settings"

    .line 71
    :goto_b
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->STYLE:Lcom/gold/extension/shared/ResourceType;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method public getNavigationClickListener(Landroid/app/Activity;)Landroid/view/View$OnClickListener;
    .registers 2

    .line 102
    new-instance p0, Lcom/gold/extension/youtube/settings/YouTubeActivityHook$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/settings/YouTubeActivityHook$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    return-object p0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 94
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;->getBackButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getToolbarBackgroundColor()I
    .registers 2

    .line 79
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 81
    const-string v0, "yt_black3"

    goto :goto_b

    .line 82
    :cond_9
    const-string v0, "yt_white1"

    :goto_b
    if-eqz p0, :cond_11

    const p0, 0xffffff

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    .line 86
    :goto_12
    invoke-static {v0, p0}, Lcom/gold/extension/shared/ResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public onPostToolbarSetup(Landroid/app/Activity;Landroid/widget/Toolbar;Landroid/preference/PreferenceFragment;)V
    .registers 4

    .line 120
    instance-of p0, p3, Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment;

    if-eqz p0, :cond_c

    .line 121
    check-cast p3, Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment;

    invoke-static {p1, p2, p3}, Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;->addSearchViewComponents(Landroid/app/Activity;Landroid/widget/Toolbar;Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment;)Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;

    move-result-object p0

    sput-object p0, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->searchViewController:Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;

    :cond_c
    return-void
.end method
