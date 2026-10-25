.class Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$4;
.super Ljava/lang/Object;
.source "YouTubeSponsorBlockConfig.java"

# interfaces
.implements Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInlineMinimal()Z
    .registers 2

    .line 235
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object p0

    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->INLINE_MINIMAL:Lcom/gold/extension/youtube/shared/PlayerType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isPaused()Z
    .registers 2

    .line 233
    invoke-static {}, Lcom/gold/extension/youtube/shared/VideoState;->getCurrent()Lcom/gold/extension/youtube/shared/VideoState;

    move-result-object p0

    sget-object v0, Lcom/gold/extension/youtube/shared/VideoState;->PAUSED:Lcom/gold/extension/youtube/shared/VideoState;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isPictureInPicture()Z
    .registers 2

    .line 234
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object p0

    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_PICTURE_IN_PICTURE:Lcom/gold/extension/youtube/shared/PlayerType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isPlayerTypeNoneOrHidden()Z
    .registers 1

    .line 236
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerType;->isNoneOrHidden()Z

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .registers 2

    .line 232
    invoke-static {}, Lcom/gold/extension/youtube/shared/VideoState;->getCurrent()Lcom/gold/extension/youtube/shared/VideoState;

    move-result-object p0

    sget-object v0, Lcom/gold/extension/youtube/shared/VideoState;->PLAYING:Lcom/gold/extension/youtube/shared/VideoState;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isShortsOpen()Z
    .registers 1

    .line 237
    invoke-static {}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->isOpen()Z

    move-result p0

    return p0
.end method

.method public playerControlsVisible()Z
    .registers 2

    .line 239
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    move-result-object p0

    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->PLAYER_CONTROLS_VISIBILITY_HIDDEN:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
