.class public Lcom/gold/extension/youtube/videoplayer/ReloadVideoButton;
.super Ljava/lang/Object;
.source "ReloadVideoButton.java"


# static fields
.field private static instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RH3WfkxODoFItnx2aUjfBC-X_e8(Landroid/view/View;)V
    .registers 1

    .line 44
    invoke-static {}, Lcom/gold/extension/youtube/patches/LoadVideoPatch;->initializeReloadVideo()V

    return-void
.end method

.method public static synthetic $r8$lambda$VvY9yOIdUrNgTF-iXgxQTpiMB4A()Ljava/lang/String;
    .registers 1

    .line 48
    const-string v0, "initialize failure"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 25
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->RELOAD_VIDEO_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 26
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->incrementUpperButtonCount()V

    :cond_f
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeLegacyButton(Landroid/view/View;)V
    .registers 9

    .line 38
    :try_start_0
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    const-string v2, "youtube_reload_video_button"

    const-string v4, "youtube_reload_video_button"

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->RELOAD_VIDEO_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 43
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;)V

    new-instance v6, Lcom/gold/extension/youtube/videoplayer/ReloadVideoButton$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/gold/extension/youtube/videoplayer/ReloadVideoButton$$ExternalSyntheticLambda0;-><init>()V

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/ReloadVideoButton;->instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception v0

    move-object p0, v0

    .line 48
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/ReloadVideoButton$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/ReloadVideoButton$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setVisibility(ZZ)V
    .registers 3

    .line 70
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/ReloadVideoButton;->instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibility(ZZ)V

    :cond_7
    return-void
.end method

.method public static setVisibilityImmediate(Z)V
    .registers 2

    .line 63
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/ReloadVideoButton;->instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityImmediate(Z)V

    :cond_7
    return-void
.end method

.method public static setVisibilityNegatedImmediate()V
    .registers 1

    .line 56
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/ReloadVideoButton;->instance:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityNegatedImmediate()V

    :cond_7
    return-void
.end method
