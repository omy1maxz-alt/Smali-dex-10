.class public Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton;
.super Ljava/lang/Object;
.source "CreateSegmentButton.java"


# static fields
.field private static instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DieB1Iy8P2XE8HL4ucC3VJ2QNBM()Z
    .registers 1

    .line 0
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton;->isButtonEnabled()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$bwKaXIdCeodJO7D7qB4Q2Fv2JcQ(Landroid/view/View;)Z
    .registers 1

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->showChannelWhitelistDialog(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$h6YGmIoUbYZmlIVkWabv_jIBt1w()Ljava/lang/String;
    .registers 1

    .line 47
    const-string v0, "initializeButton failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$ogYUvWoVkXzMVY0GR-Wlt6jeZOY(Landroid/view/View;)V
    .registers 1

    .line 40
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->toggleNewSegmentLayoutVisibility()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 17
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_CREATE_NEW_SEGMENT:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 18
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->incrementUpperButtonCount()V

    :cond_1b
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideControls()V
    .registers 1

    .line 26
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton;->instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->hide()V

    :cond_7
    return-void
.end method

.method public static initializeLegacyButton(Landroid/view/View;)V
    .registers 9

    .line 34
    :try_start_0
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    const-string v2, "youtube_sb_create_segment_button"

    const-string v4, "youtube_sb_logo"

    new-instance v5, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton$$ExternalSyntheticLambda1;-><init>()V

    new-instance v7, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton$$ExternalSyntheticLambda2;-><init>()V

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton;->instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception v0

    move-object p0, v0

    .line 47
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static isButtonEnabled()Z
    .registers 1

    .line 73
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_CREATE_NEW_SEGMENT:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 74
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->isAdProgressTextVisible()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public static setVisibility(ZZ)V
    .registers 3

    .line 69
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton;->instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibility(ZZ)V

    :cond_7
    return-void
.end method

.method public static setVisibilityImmediate(Z)V
    .registers 2

    .line 62
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton;->instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityImmediate(Z)V

    :cond_7
    return-void
.end method

.method public static setVisibilityNegatedImmediate()V
    .registers 1

    .line 55
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/CreateSegmentButton;->instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityNegatedImmediate()V

    :cond_7
    return-void
.end method
