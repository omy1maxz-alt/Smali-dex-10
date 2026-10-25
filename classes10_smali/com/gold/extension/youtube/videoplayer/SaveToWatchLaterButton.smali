.class public Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton;
.super Ljava/lang/Object;
.source "SaveToWatchLaterButton.java"


# static fields
.field private static instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-7AGKpbajYpNFh2iOD3E9Gno2-E(Ljava/util/function/Function;ZLandroid/view/View;)V
    .registers 3

    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$RWCSyeaHzRULvfphKre6SJQzAX0(Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)Ljava/lang/Void;
    .registers 3

    .line 53
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    .line 54
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-nez p0, :cond_18

    .line 56
    new-instance p0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object v0

    .line 59
    :cond_18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->prepareDialogBuilder(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 61
    :cond_24
    invoke-static {}, Lcom/gold/extension/youtube/patches/SaveToWatchLaterPatch;->saveVideo()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$ZcXL9Fi_R5xU7TObXnWqI1Ll0pw()Ljava/lang/String;
    .registers 1

    .line 87
    const-string v0, "initialize failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$j4I4Xm1b5Xwx_Nn6AHbvq4g7Y_A()Ljava/lang/String;
    .registers 1

    .line 56
    const-string v0, "Context is null"

    return-object v0
.end method

.method public static synthetic $r8$lambda$xsqK93HKr11oSmqB1Q4NopydHLc(Ljava/util/function/Function;ZLandroid/view/View;)Z
    .registers 3

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    .line 74
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return p2
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 31
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SAVE_TO_WATCH_LATER_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 32
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->incrementUpperButtonCount()V

    :cond_f
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeLegacyButton(Landroid/view/View;)V
    .registers 12

    .line 46
    :try_start_0
    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->syncIfNeeded()V

    .line 48
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWAP_SAVE_AND_QUEUE_ACTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 50
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 52
    new-instance v2, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 66
    new-instance v3, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    const-string v5, "youtube_save_to_watch_later_button"

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    :goto_1e
    move-object v7, v1

    goto :goto_23

    .line 70
    :cond_20
    const-string v1, "youtube_save_to_watch_later_button"

    goto :goto_1e

    :goto_23
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->SAVE_TO_WATCH_LATER_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 71
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;

    invoke-direct {v8, v1}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;)V

    new-instance v9, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda1;

    invoke-direct {v9, v2, v0}, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;Z)V

    new-instance v10, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda2;

    invoke-direct {v10, v2, v0}, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Function;Z)V

    const/4 v6, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    sput-object v3, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton;->instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_52

    .line 80
    sget-object p0, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    .line 81
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-eqz v0, :cond_49

    .line 82
    const-string v0, "yt_outline_list_add_black_24"

    goto :goto_4b

    .line 83
    :cond_49
    const-string v0, "yt_outline_experimental_playlist_add_vd_theme_24"

    .line 80
    :goto_4b
    invoke-static {p0, v0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setIcon(I)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    :cond_52
    return-void

    :catch_53
    move-exception v0

    move-object p0, v0

    .line 87
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setVisibility(ZZ)V
    .registers 3

    .line 109
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton;->instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibility(ZZ)V

    :cond_7
    return-void
.end method

.method public static setVisibilityImmediate(Z)V
    .registers 2

    .line 102
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton;->instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityImmediate(Z)V

    :cond_7
    return-void
.end method

.method public static setVisibilityNegatedImmediate()V
    .registers 1

    .line 95
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton;->instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityNegatedImmediate()V

    :cond_7
    return-void
.end method
