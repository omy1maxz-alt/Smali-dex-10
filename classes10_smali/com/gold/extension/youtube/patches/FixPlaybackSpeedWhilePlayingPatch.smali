.class public Lcom/gold/extension/youtube/patches/FixPlaybackSpeedWhilePlayingPatch;
.super Ljava/lang/Object;
.source "FixPlaybackSpeedWhilePlayingPatch.java"


# static fields
.field private static final DEFAULT_YOUTUBE_PLAYBACK_SPEED:F = 1.0f


# direct methods
.method public static synthetic $r8$lambda$dAjGaTo3QhVwqp5BMAKyrEMiDiI()Ljava/lang/String;
    .registers 1

    .line 15
    const-string v0, "Blocking call to change playback speed to 1.0x"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static playbackSpeedChanged(F)Z
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1a

    .line 13
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerType;->isMaximizedOrFullscreen()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 15
    new-instance p0, Lcom/gold/extension/youtube/patches/FixPlaybackSpeedWhilePlayingPatch$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/FixPlaybackSpeedWhilePlayingPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method
