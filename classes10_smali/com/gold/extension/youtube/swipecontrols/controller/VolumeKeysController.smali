.class public final Lcom/gold/extension/youtube/swipecontrols/controller/VolumeKeysController;
.super Ljava/lang/Object;
.source "VolumeKeysController.kt"


# instance fields
.field private final controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;


# direct methods
.method public constructor <init>(Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/VolumeKeysController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    return-void
.end method

.method private final handleVolumeKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 6

    .line 42
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_38

    .line 43
    iget-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/VolumeKeysController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getAudio()Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 44
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->getVolume()I

    move-result v1

    iget-object v2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/VolumeKeysController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getVolumeSwipeSensitivity()I

    move-result v2

    if-eqz p2, :cond_21

    move p2, v0

    goto :goto_22

    :cond_21
    const/4 p2, -0x1

    :goto_22
    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->setVolume(I)V

    .line 45
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/VolumeKeysController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getOverlay()Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;

    move-result-object p0

    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->getVolume()I

    move-result p2

    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->getMaxVolume()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->onVolumeChanged(II)V

    :cond_38
    return v0
.end method


# virtual methods
.method public final onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/VolumeKeysController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverwriteVolumeKeyControls()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    .line 25
    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x18

    if-eq v0, v2, :cond_23

    const/16 v2, 0x19

    if-eq v0, v2, :cond_1e

    return v1

    .line 27
    :cond_1e
    invoke-direct {p0, p1, v1}, Lcom/gold/extension/youtube/swipecontrols/controller/VolumeKeysController;->handleVolumeKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result p0

    return p0

    :cond_23
    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/gold/extension/youtube/swipecontrols/controller/VolumeKeysController;->handleVolumeKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result p0

    return p0
.end method
