.class public Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;
.super Ljava/lang/Object;
.source "LegacyPlayerControlsPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$RestoreOldPlayerButtonsAvailability;
    }
.end annotation


# static fields
.field public static final RESTORE_OLD_PLAYER_BUTTONS:Z


# direct methods
.method public static synthetic $r8$lambda$0WZDVfr3qBbikuUboPK2uHxaK-g()Ljava/lang/String;
    .registers 1

    .line 63
    const-string v0, "Fullscreen button set"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Dm3zDL-tLvWvMMwpA2OKMGBTpHA(Landroid/widget/ImageView;)V
    .registers 2

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    const/16 v0, 0x8

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smfullscreenButtonVisibilityChanged(Z)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->fullscreenButtonVisibilityChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 26
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->RESTORE_OLD_PLAYER_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 27
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_15

    invoke-static {v1}, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->useBoldIcons(Z)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :cond_15
    :goto_15
    sput-boolean v1, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fullscreenButtonVisibilityCallbacksExist()Z
    .registers 1

    const/4 v0, 0x1

    return v0

    const/4 v0, 0x0

    return v0
.end method

.method private static fullscreenButtonVisibilityChanged(Z)V
    .registers 1

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->setVisibilityImmediate(Z)V

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton;->setVisibilityImmediate(Z)V

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->setVisibilityImmediate(Z)V

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/ReloadVideoButton;->setVisibilityImmediate(Z)V

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton;->setVisibilityImmediate(Z)V

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->setVisibilityImmediate(Z)V

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton;->setVisibilityImmediate(Z)V

    invoke-static {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton;->setVisibilityImmediate(Z)V

    invoke-static {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/VotingButton;->setVisibilityImmediate(Z)V

    invoke-static {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->setVisibilityImmediate(Z)V

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->setVisibilityImmediate(Z)V

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton;->setVisibilityImmediate(Z)V

    .line 0
    return-void
.end method

.method public static hideBottomGradientScrim(Landroid/widget/ImageView;)V
    .registers 2

    .line 44
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-nez v0, :cond_5

    goto :goto_f

    :cond_5
    if-eqz p0, :cond_f

    .line 48
    new-instance v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ImageView;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_f
    :goto_f
    return-void
.end method

.method public static setFullscreenCloseButton(Landroid/view/View;)V
    .registers 3

    .line 59
    invoke-static {}, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->fullscreenButtonVisibilityCallbacksExist()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 63
    :cond_7
    new-instance v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$1;

    invoke-direct {v1, p0}, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static useNullBottomGradient()Z
    .registers 1

    .line 37
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    return v0
.end method

.method public static usePlayerBottomControlsExploderLayout(Z)Z
    .registers 1

    .line 100
    sget-boolean p0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
