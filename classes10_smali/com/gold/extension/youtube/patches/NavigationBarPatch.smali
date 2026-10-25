.class public final Lcom/gold/extension/youtube/patches/NavigationBarPatch;
.super Ljava/lang/Object;
.source "NavigationBarPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/NavigationBarPatch$SettingsController;
    }
.end annotation


# static fields
.field private static final CHAT_BUTTON_ENUMS:Ljava/lang/String; = "MESSAGE_BUBBLE_OVERLAP"

.field private static final CREATE_BUTTON_ENUMS:[Ljava/lang/String;

.field private static final DISABLE_AUTO_HIDE_NAVIGATION_BAR:Z

.field private static final DISABLE_TRANSLUCENT_NAVIGATION_BAR_DARK:Z

.field private static final DISABLE_TRANSLUCENT_NAVIGATION_BAR_LIGHT:Z

.field private static final DISABLE_TRANSLUCENT_STATUS_BAR:Z

.field private static final HIDE_NAVIGATION_BAR:Z

.field private static final HIDE_TOOLBAR_CAST_BUTTON:Z

.field private static final HIDE_TOOLBAR_CHAT_BUTTON:Z

.field private static final HIDE_TOOLBAR_CREATE_BUTTON:Z

.field private static final HIDE_TOOLBAR_MICROPHONE_BUTTON:Z

.field private static final HIDE_TOOLBAR_NOTIFICATION_BUTTON:Z

.field private static final HIDE_TOOLBAR_SEARCH_BUTTON:Z

.field private static final NARROW_NAVIGATION_BUTTONS:Z

.field private static final NOTIFICATION_BUTTON_ENUMS:[Ljava/lang/String;

.field private static final SETTING_BUTTON_ENUM_NAME:Ljava/lang/String; = "SETTINGS_CAIRO"

.field private static final SHOW_SEARCH_BUTTON:Z

.field private static final SHOW_SEARCH_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

.field private static final SHOW_SETTINGS_BUTTON:Z

.field private static final SHOW_SETTINGS_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

.field private static final SHOW_SETTINGS_BUTTON_TYPE:Z

.field private static final SHOW_TOOLBAR_SETTINGS_BUTTON:Z

.field private static final SHOW_TOOLBAR_SETTINGS_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

.field private static final SHOW_TOOLBAR_SETTINGS_BUTTON_TYPE:Z

.field private static final SWAP_CREATE_WITH_NOTIFICATIONS_BUTTON:Z

.field private static final WIDE_SEARCHBAR_ENABLED:Z

.field private static openSearchBar:Landroid/view/View$OnClickListener;

.field private static final openSearchBarOnClickListener:Landroid/view/View$OnClickListener;

.field private static pivotBarRenderer:Ljava/lang/Object;

.field private static pivotBarSettingsRenderer:Ljava/lang/Object;

.field private static volatile searchQueryRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private static settingsControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gold/extension/youtube/patches/NavigationBarPatch$SettingsController;",
            ">;"
        }
    .end annotation
.end field

.field private static final shouldHideMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0761YSnmF2eZ3l5zklSKymq9BEw()Ljava/lang/String;
    .registers 1

    .line 294
    const-string v0, "Failed to parse PivotBarItemRenderer"

    return-object v0
.end method

.method public static synthetic $r8$lambda$170xA-uwpfNg2Ooh6lau2TMsfUc(Landroid/view/View;)V
    .registers 3

    .line 214
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar;->isSearchBarActive()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->searchQueryRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 216
    sget-object p0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->searchQueryRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void

    .line 217
    :cond_1a
    sget-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->openSearchBar:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_22

    .line 219
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    .line 222
    :cond_22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    const-string v1, "com.google.android.youtube.action.open.search"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->overrideSetPackage(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$38-nRMBJyh6F8dhWo1MWKwtEjPk()Ljava/lang/String;
    .registers 1

    .line 526
    const-string v0, "Failed to modify toolbar buttons"

    return-object v0
.end method

.method public static synthetic $r8$lambda$6BrvqbJczBnZjeITufrzwXB8jkw()Ljava/lang/String;
    .registers 1

    .line 677
    const-string v0, "setActionBar failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$7Xl9HJ_MtC1wMKyPraGderBS0GM(Landroid/view/View;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->openYouTubeSettings(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DhP13nmMeWPl-U2IX-_R6qQr6Qw(Landroid/view/View;)Z
    .registers 1

    .line 587
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->openYouTubeSettings(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$GEm0wtx4_gfBi_6pbq_4s3iy7Rg(Landroid/widget/ImageView;)V
    .registers 2

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    .line 582
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 584
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_TOOLBAR_SETTINGS_BUTTON_TYPE:Z

    if-eqz v0, :cond_1b

    .line 585
    new-instance v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    new-instance v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 591
    :cond_1b
    new-instance v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    new-instance v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2b
    return-void
.end method

.method public static synthetic $r8$lambda$NqVeKEbkQ1oA9jw_wlzBCH6rJcg(Landroid/view/View;)V
    .registers 2

    .line 102
    new-instance v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OQJMUEhyi4AE1YVXxwnn1z0y1MU(Landroid/view/View;)V
    .registers 2

    .line 97
    sget-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->openSearchBarOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oxm7q1DgCRkhzK3ZMfixI82PpJE()Ljava/lang/String;
    .registers 1

    .line 623
    const-string v0, "Failed to open YouTube settings"

    return-object v0
.end method

.method public static synthetic $r8$lambda$QqFnI2u_yKW38t2Nrk1MpAbkey4(Landroid/view/View;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->openMorpheSettings(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V6x3SEsvQzpLQesuMW35OW_q1qo(Landroid/view/View;)V
    .registers 2

    .line 103
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SETTINGS_BUTTON_TYPE:Z

    if-eqz v0, :cond_8

    .line 104
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->openMorpheSettings(Landroid/view/View;)V

    return-void

    .line 106
    :cond_8
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->openYouTubeSettings(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y-PUFn8tlRIVDOyZ7r_K2IqokVc()Ljava/lang/String;
    .registers 1

    .line 260
    const-string v0, "Failed to set search bar OnClickListener"

    return-object v0
.end method

.method public static synthetic $r8$lambda$lIlyHHRbC-fj17gvByS8Pc-o0-g()Ljava/lang/String;
    .registers 1

    .line 556
    const-string v0, "Failed to create toolbar settings button"

    return-object v0
.end method

.method public static synthetic $r8$lambda$oNPz-SemZ0Z4l4MNuCsEKnEL2d0()Ljava/lang/String;
    .registers 1

    .line 643
    const-string v0, "Failed to open Morphe settings"

    return-object v0
.end method

.method public static synthetic $r8$lambda$oVbreIqJnAyYctWpgegCzOEZMe8(Landroid/view/View;)Z
    .registers 1

    .line 593
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->openMorpheSettings(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$wXzTtrgPouTQr-_LnAAZyS7JC94()Ljava/lang/String;
    .registers 1

    .line 367
    const-string v0, "Failed to parse Settings PivotBarItemRenderer"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 59
    new-instance v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$1;

    const-class v1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    invoke-direct {v0, v1}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->shouldHideMap:Ljava/util/Map;

    .line 69
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWAP_CREATE_WITH_NOTIFICATIONS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SWAP_CREATE_WITH_NOTIFICATIONS_BUTTON:Z

    .line 71
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_TRANSLUCENT_STATUS_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->DISABLE_TRANSLUCENT_STATUS_BAR:Z

    .line 73
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_TRANSLUCENT_NAVIGATION_BAR_LIGHT:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->DISABLE_TRANSLUCENT_NAVIGATION_BAR_LIGHT:Z

    .line 75
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_TRANSLUCENT_NAVIGATION_BAR_DARK:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->DISABLE_TRANSLUCENT_NAVIGATION_BAR_DARK:Z

    .line 77
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->NARROW_NAVIGATION_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->NARROW_NAVIGATION_BUTTONS:Z

    .line 79
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_AUTO_HIDE_NAVIGATION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->DISABLE_AUTO_HIDE_NAVIGATION_BAR:Z

    .line 81
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_NAVIGATION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_NAVIGATION_BAR:Z

    .line 199
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SHOW_SEARCH_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SEARCH_BUTTON:Z

    .line 200
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SHOW_SEARCH_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

    sput-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SEARCH_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 202
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->searchQueryRef:Ljava/lang/ref/WeakReference;

    .line 204
    sput-object v1, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->pivotBarRenderer:Ljava/lang/Object;

    .line 205
    sput-object v1, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->openSearchBar:Landroid/view/View$OnClickListener;

    .line 207
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SHOW_SETTINGS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SETTINGS_BUTTON:Z

    .line 208
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SHOW_SETTINGS_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

    sput-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SETTINGS_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 209
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SHOW_SETTINGS_BUTTON_TYPE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SETTINGS_BUTTON_TYPE:Z

    .line 211
    sput-object v1, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->pivotBarSettingsRenderer:Ljava/lang/Object;

    .line 213
    new-instance v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->openSearchBarOnClickListener:Landroid/view/View$OnClickListener;

    .line 382
    const-string v0, "CREATION_ENTRY"

    const-string v2, "FAB_CAMERA"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->CREATE_BUTTON_ENUMS:[Ljava/lang/String;

    .line 387
    const-string v0, "TAB_ACTIVITY_CAIRO"

    const-string v2, "TAB_ACTIVITY"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->NOTIFICATION_BUTTON_ENUMS:[Ljava/lang/String;

    .line 394
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TOOLBAR_CAST_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_CAST_BUTTON:Z

    .line 396
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TOOLBAR_CHAT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_CHAT_BUTTON:Z

    .line 398
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TOOLBAR_CREATE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_CREATE_BUTTON:Z

    .line 400
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TOOLBAR_NOTIFICATION_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_NOTIFICATION_BUTTON:Z

    .line 402
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TOOLBAR_SEARCH_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_SEARCH_BUTTON:Z

    .line 404
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TOOLBAR_MICROPHONE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_MICROPHONE_BUTTON:Z

    .line 406
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SHOW_TOOLBAR_SETTINGS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_TOOLBAR_SETTINGS_BUTTON:Z

    .line 407
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SHOW_TOOLBAR_SETTINGS_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

    sput-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_TOOLBAR_SETTINGS_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 408
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SHOW_TOOLBAR_SETTINGS_BUTTON_TYPE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_TOOLBAR_SETTINGS_BUTTON_TYPE:Z

    .line 418
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->settingsControllerRef:Ljava/lang/ref/WeakReference;

    .line 648
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->WIDE_SEARCHBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->WIDE_SEARCHBAR_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowCollapsingToolbarLayout(Z)Z
    .registers 2

    .line 156
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->DISABLE_TRANSLUCENT_STATUS_BAR:Z

    if-eqz v0, :cond_5

    const/4 p0, 0x0

    :cond_5
    return p0
.end method

.method public static applyToolbarSettingsButtonIndex(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/MessageLite;",
            ">;)V"
        }
    .end annotation

    .line 565
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_TOOLBAR_SETTINGS_BUTTON:Z

    if-eqz v0, :cond_37

    if-eqz p0, :cond_37

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_37

    .line 567
    :cond_d
    sget-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_TOOLBAR_SETTINGS_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 569
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 571
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 572
    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public static createToolbarSettingsButton(Ljava/util/List;)[B
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/MessageLite;",
            ">;)[B"
        }
    .end annotation

    .line 535
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_TOOLBAR_SETTINGS_BUTTON:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_80

    if-eqz p0, :cond_80

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_80

    .line 537
    :cond_e
    :try_start_e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_12
    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_77

    .line 539
    :try_start_1e
    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->hasButtonRenderer()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->getButtonRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->hasIcon()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 542
    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->getButtonRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;

    .line 544
    invoke-virtual {v2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;->clearButtonRendererAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;

    .line 545
    invoke-virtual {v2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;->clearRendererAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;

    .line 547
    invoke-virtual {v2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;->clearIcon()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;

    .line 548
    invoke-static {}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->newBuilder()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    move-result-object v3

    sget-object v4, Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;->SETTINGS_CAIRO:Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;

    invoke-virtual {v3, v4}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;->setYtIconType(Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-virtual {v2, v3}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;->setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;

    .line 550
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {v0, v2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;->setButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p0
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_76} :catch_12

    return-object p0

    :catch_77
    move-exception p0

    .line 556
    new-instance v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_80
    :goto_80
    return-object v1
.end method

.method public static disableAutoHidingNavigationBar()Z
    .registers 1

    .line 142
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->DISABLE_AUTO_HIDE_NAVIGATION_BAR:Z

    return v0
.end method

.method public static enableNarrowNavigationButton(Z)Z
    .registers 2

    .line 135
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->NARROW_NAVIGATION_BUTTONS:Z

    if-nez v0, :cond_9

    if-eqz p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method public static enableWideSearchbar(Z)Z
    .registers 2

    .line 654
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->WIDE_SEARCHBAR_ENABLED:Z

    if-nez v0, :cond_9

    if-eqz p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method public static getPivotBarRendererList(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_65

    .line 320
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_65

    .line 322
    :cond_9
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SEARCH_BUTTON:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->pivotBarRenderer:Ljava/lang/Object;

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    .line 323
    :goto_16
    sget-boolean v3, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SETTINGS_BUTTON:Z

    if-eqz v3, :cond_1f

    sget-object v3, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->pivotBarSettingsRenderer:Ljava/lang/Object;

    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    if-nez v0, :cond_25

    if-nez v1, :cond_25

    return-object p0

    .line 327
    :cond_25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v0, :cond_47

    .line 330
    sget-object p0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SEARCH_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 331
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 333
    sget-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->pivotBarRenderer:Ljava/lang/Object;

    invoke-interface {v3, p0, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_47
    if-eqz v1, :cond_64

    .line 337
    sget-object p0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SETTINGS_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 338
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 340
    sget-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->pivotBarSettingsRenderer:Ljava/lang/Object;

    invoke-interface {v3, p0, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_64
    return-object v3

    :cond_65
    :goto_65
    return-object p0
.end method

.method public static hideCastButton(Landroid/view/MenuItem;)V
    .registers 2

    .line 431
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_CAST_BUTTON:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 432
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 433
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_b
    return-void
.end method

.method public static hideCastButton(Z)Z
    .registers 2

    .line 424
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_CAST_BUTTON:Z

    if-nez v0, :cond_8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static hideChatButton(Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;)V
    .registers 3

    .line 441
    sget-boolean p2, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_CHAT_BUTTON:Z

    if-eqz p2, :cond_12

    const-string p2, "MESSAGE_BUBBLE_OVERLAP"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/gold/extension/shared/Utils;->equalsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    .line 442
    :goto_13
    invoke-static {p0, p1}, Lcom/gold/extension/shared/Utils;->hideViewUnderCondition(ZLandroid/view/View;)Z

    return-void
.end method

.method public static hideCreateButton(Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;)V
    .registers 3

    .line 449
    sget-boolean p2, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_CREATE_BUTTON:Z

    if-eqz p2, :cond_e

    sget-object p2, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->CREATE_BUTTON_ENUMS:[Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/gold/extension/shared/Utils;->equalsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 450
    :goto_f
    invoke-static {p0, p1}, Lcom/gold/extension/shared/Utils;->hideViewUnderCondition(ZLandroid/view/View;)Z

    return-void
.end method

.method public static hideMicrophoneButton(Landroid/view/View;)V
    .registers 2

    .line 481
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_MICROPHONE_BUTTON:Z

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewUnderCondition(ZLandroid/view/View;)Z

    return-void
.end method

.method public static hideMicrophoneButton(Landroid/view/View;I)V
    .registers 3

    .line 488
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_MICROPHONE_BUTTON:Z

    if-eqz v0, :cond_6

    const/16 p1, 0x8

    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static hideNavigationBar(Landroid/view/View;)V
    .registers 2

    .line 149
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_NAVIGATION_BAR:Z

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewUnderCondition(ZLandroid/view/View;)Z

    return-void
.end method

.method public static hideNavigationButtonLabels(Landroid/widget/TextView;)V
    .registers 2

    .line 121
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_NAVIGATION_BUTTON_LABELS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewUnderCondition(Lcom/gold/extension/shared/settings/BooleanSetting;Landroid/view/View;)V

    return-void
.end method

.method public static hideNotificationButton(Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;)V
    .registers 3

    .line 457
    sget-boolean p2, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_NOTIFICATION_BUTTON:Z

    if-eqz p2, :cond_e

    sget-object p2, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->NOTIFICATION_BUTTON_ENUMS:[Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/gold/extension/shared/Utils;->equalsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 458
    :goto_f
    invoke-static {p0, p1}, Lcom/gold/extension/shared/Utils;->hideViewUnderCondition(ZLandroid/view/View;)Z

    return-void
.end method

.method public static hideOldSearchButton(Landroid/view/MenuItem;I)V
    .registers 3

    .line 473
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_SEARCH_BUTTON:Z

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    .line 474
    :cond_5
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public static hideSearchButton(Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;)V
    .registers 3

    .line 465
    sget-boolean p2, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_SEARCH_BUTTON:Z

    if-eqz p2, :cond_10

    sget-object p2, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SEARCH:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    iget-object p2, p2, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->ytEnumNames:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    .line 466
    :goto_11
    invoke-static {p0, p1}, Lcom/gold/extension/shared/Utils;->hideViewUnderCondition(ZLandroid/view/View;)Z

    return-void
.end method

.method public static modifyToolbarButtons(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/MessageLite;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_74

    .line 504
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_74

    .line 507
    :cond_9
    :try_start_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_74

    .line 508
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 509
    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    move-result-object v1

    .line 511
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->hasButtonRenderer()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->getButtonRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->hasIcon()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 512
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->getButtonRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->getIcon()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->getYtIconType()Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 514
    sget-object v2, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->CREATE_BUTTON_ENUMS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/gold/extension/shared/Utils;->equalsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .line 515
    sget-object v3, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->NOTIFICATION_BUTTON_ENUMS:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/gold/extension/shared/Utils;->equalsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    .line 516
    sget-object v4, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SEARCH:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    iget-object v4, v4, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->ytEnumNames:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 518
    sget-boolean v4, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_CREATE_BUTTON:Z

    if-eqz v4, :cond_59

    if-nez v2, :cond_65

    :cond_59
    sget-boolean v2, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_NOTIFICATION_BUTTON:Z

    if-eqz v2, :cond_5f

    if-nez v3, :cond_65

    :cond_5f
    sget-boolean v2, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->HIDE_TOOLBAR_SEARCH_BUTTON:Z

    if-eqz v2, :cond_68

    if-eqz v1, :cond_68

    .line 521
    :cond_65
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_68} :catch_6b

    :cond_68
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :catch_6b
    move-exception p0

    .line 526
    new-instance v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_74
    :goto_74
    return-void
.end method

.method public static navigationTabCreated(Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;Landroid/view/View;)V
    .registers 4

    .line 96
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SEARCH_BUTTON:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SEARCH:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    if-ne p0, v0, :cond_11

    .line 97
    new-instance p0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda7;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda7;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 101
    :cond_11
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SETTINGS_BUTTON:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SETTINGS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    if-ne p0, v0, :cond_22

    .line 102
    new-instance p0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda8;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda8;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 112
    :cond_22
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->shouldHideMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    const/16 p0, 0x8

    .line 113
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_35
    return-void
.end method

.method private static openMorpheSettings(Landroid/view/View;)V
    .registers 4

    .line 628
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object p0, v0

    goto :goto_c

    .line 629
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 632
    :goto_c
    :try_start_c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    const-string v2, "youtube_settings_intent"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->overrideSetData(Landroid/content/Intent;Landroid/net/Uri;)Landroid/content/Intent;

    .line 634
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->overrideSetPackage(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    const-class v2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-nez v0, :cond_2f

    const/high16 v0, 0x10000000

    .line 638
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 641
    :cond_2f
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception p0

    .line 643
    new-instance v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static openYouTubeSettings(Landroid/view/View;)V
    .registers 4

    .line 603
    sget-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->settingsControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$SettingsController;

    if-eqz v0, :cond_e

    .line 605
    invoke-interface {v0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$SettingsController;->patch_openYouTubeSettings()V

    return-void

    .line 609
    :cond_e
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    move-object p0, v0

    goto :goto_1a

    .line 610
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 613
    :goto_1a
    :try_start_1a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->overrideSetPackage(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const-class v2, Lcom/google/android/apps/youtube/app/application/Shell_SettingsActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-nez v0, :cond_34

    const/high16 v0, 0x10000000

    .line 618
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 621
    :cond_34
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p0

    .line 623
    new-instance v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static parsePivotBarItemRenderer(Lcom/google/protobuf/MessageLite;)[B
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 272
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SEARCH_BUTTON:Z

    if-eqz v0, :cond_83

    .line 274
    :try_start_4
    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    .line 275
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;->getIcon()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->getYtIconType()Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 279
    sget-object v1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->HOME:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    iget-object v1, v1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->ytEnumNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 281
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;

    move-result-object v0

    const-string v1, "menu_search"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;->setLabel(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    .line 282
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;->setAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    .line 283
    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result v1

    if-eqz v1, :cond_53

    sget-object v1, Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;->SEARCH_BOLD:Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;

    goto :goto_55

    :cond_53
    sget-object v1, Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;->SEARCH_CAIRO:Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;

    .line 284
    :goto_55
    invoke-static {}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->newBuilder()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;->setYtIconType(Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 286
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;->clearAccessibility()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    .line 287
    invoke-virtual {p0, v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;->setAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    .line 288
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;->clearIcon()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    .line 289
    invoke-virtual {p0, v1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;->setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    .line 291
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p0
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_79} :catch_7a

    return-object p0

    :catch_7a
    move-exception p0

    .line 294
    new-instance v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_83
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseSettingsPivotBarItemRenderer(Lcom/google/protobuf/MessageLite;)[B
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 348
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SETTINGS_BUTTON:Z

    if-eqz v0, :cond_7a

    .line 350
    :try_start_4
    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    .line 351
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;->getIcon()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->getYtIconType()Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 353
    sget-object v1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->HOME:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    iget-object v1, v1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->ytEnumNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 354
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;

    move-result-object v0

    const-string v1, "menu_settings"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;->setLabel(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    .line 355
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;->setAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    .line 357
    invoke-static {}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->newBuilder()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    move-result-object v1

    sget-object v2, Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;->SETTINGS_CAIRO:Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;

    invoke-virtual {v1, v2}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;->setYtIconType(Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 359
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;->clearAccessibility()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    .line 360
    invoke-virtual {p0, v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;->setAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    .line 361
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;->clearIcon()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    .line 362
    invoke-virtual {p0, v1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;->setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    .line 364
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p0
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_70} :catch_71

    return-object p0

    :catch_71
    move-exception p0

    .line 367
    new-instance v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_7a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static searchQueryViewLoaded(Landroid/widget/TextView;)V
    .registers 2

    .line 236
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SEARCH_BUTTON:Z

    if-eqz v0, :cond_b

    .line 237
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->searchQueryRef:Ljava/lang/ref/WeakReference;

    :cond_b
    return-void
.end method

.method public static setActionBar(Landroid/view/View;)V
    .registers 7

    .line 661
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->WIDE_SEARCHBAR_ENABLED:Z

    if-eqz v0, :cond_33

    .line 663
    :try_start_4
    const-string v0, "search_bar"

    invoke-static {p0, v0}, Lcom/gold/extension/shared/Utils;->getChildViewByResourceName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 665
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 666
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 667
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 668
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 669
    sget v4, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    .line 671
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isRightToLeftLocale()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 672
    invoke-virtual {p0, v0, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 674
    :cond_26
    invoke-virtual {p0, v4, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    .line 677
    new-instance v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_33
    return-void
.end method

.method public static setPivotBarRenderer(Ljava/lang/Object;)V
    .registers 2

    .line 308
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SEARCH_BUTTON:Z

    if-eqz v0, :cond_6

    .line 309
    sput-object p0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->pivotBarRenderer:Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public static setPivotBarSettingsRenderer(Ljava/lang/Object;)V
    .registers 2

    .line 374
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SETTINGS_BUTTON:Z

    if-eqz v0, :cond_6

    .line 375
    sput-object p0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->pivotBarSettingsRenderer:Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public static setSearchBarOnClickListener(Lcom/google/protobuf/MessageLite;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 248
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SEARCH_BUTTON:Z

    if-eqz v0, :cond_34

    .line 250
    :try_start_4
    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 252
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->getIcon()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->getYtIconType()Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    .line 255
    sget-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SEARCH:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    iget-object v0, v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->ytEnumNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 256
    sput-object p1, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->openSearchBar:Landroid/view/View$OnClickListener;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p0

    .line 260
    new-instance p1, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_34
    return-void
.end method

.method public static setSettingsController(Lcom/gold/extension/youtube/patches/NavigationBarPatch$SettingsController;)V
    .registers 2
    .param p0  # Lcom/gold/extension/youtube/patches/NavigationBarPatch$SettingsController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 495
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_TOOLBAR_SETTINGS_BUTTON:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_SETTINGS_BUTTON:Z

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    return-void

    .line 496
    :cond_a
    :goto_a
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->settingsControllerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static setToolbarSettingsOnClickListener(Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;)V
    .registers 3

    .line 579
    sget-boolean p1, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SHOW_TOOLBAR_SETTINGS_BUTTON:Z

    if-eqz p1, :cond_16

    const-string p1, "SETTINGS_CAIRO"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 580
    new-instance p0, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda4;

    invoke-direct {p0, p2}, Lcom/gold/extension/youtube/patches/NavigationBarPatch$$ExternalSyntheticLambda4;-><init>(Landroid/widget/ImageView;)V

    const-wide/16 p1, 0x64

    invoke-static {p0, p1, p2}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_16
    return-void
.end method

.method public static swapCreateWithNotificationButton(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 87
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->SWAP_CREATE_WITH_NOTIFICATIONS_BUTTON:Z

    if-eqz v0, :cond_6

    .line 88
    const-string p0, "Android Automotive"

    :cond_6
    return-object p0
.end method

.method public static useAnimatedNavigationButtons(Z)Z
    .registers 1

    .line 128
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->NAVIGATION_BAR_ANIMATIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static useTranslucentNavigationButtons(Z)Z
    .registers 4

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_7

    goto :goto_f

    .line 185
    :cond_7
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->DISABLE_TRANSLUCENT_NAVIGATION_BAR_DARK:Z

    if-nez v0, :cond_10

    sget-boolean v1, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->DISABLE_TRANSLUCENT_NAVIGATION_BAR_LIGHT:Z

    if-nez v1, :cond_10

    :goto_f
    return p0

    :cond_10
    const/4 p0, 0x0

    if-eqz v0, :cond_18

    .line 189
    sget-boolean v1, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->DISABLE_TRANSLUCENT_NAVIGATION_BAR_LIGHT:Z

    if-eqz v1, :cond_18

    return p0

    .line 193
    :cond_18
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    if-nez v0, :cond_22

    return v2

    :cond_22
    return p0

    .line 195
    :cond_23
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->DISABLE_TRANSLUCENT_NAVIGATION_BAR_LIGHT:Z

    if-nez v0, :cond_28

    return v2

    :cond_28
    return p0
.end method

.method public static useTranslucentNavigationStatusBar(Z)Z
    .registers 3

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_7

    goto :goto_c

    .line 169
    :cond_7
    sget-boolean v0, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->DISABLE_TRANSLUCENT_STATUS_BAR:Z

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    :cond_c
    :goto_c
    return p0
.end method
