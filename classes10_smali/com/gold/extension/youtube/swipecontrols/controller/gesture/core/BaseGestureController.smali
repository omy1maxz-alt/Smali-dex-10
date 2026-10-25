.class public abstract Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BaseGestureController.kt"

# interfaces
.implements Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/GestureController;
.implements Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector;
.implements Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScroller;


# instance fields
.field private final synthetic $$delegate_0:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;

.field private final synthetic $$delegate_1:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;

.field private final controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

.field private final detector:Landroid/view/GestureDetector;

.field private didCancelDownstream:Z


# direct methods
.method public constructor <init>(Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;)V
    .registers 15

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 17
    new-instance v0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;

    .line 18
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getSwipeMagnitudeThreshold()I

    move-result v1

    int-to-double v1, v1

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;-><init>(D)V

    iput-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->$$delegate_0:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;

    .line 20
    new-instance v3, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;

    .line 22
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getAudio()Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;

    move-result-object v5

    .line 23
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getScreen()Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;

    move-result-object v6

    .line 24
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getOverlay()Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;

    move-result-object v7

    .line 26
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getBrightnessSwipeSensitivity()I

    move-result v9

    .line 27
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getVolumeSwipeSensitivity()I

    move-result v10

    .line 28
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getSpeedSwipeSensitivity()I

    move-result v11

    .line 29
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getEnableSpeedGestureControl()Z

    move-result v12

    const/16 v8, 0xa

    move-object v4, p1

    .line 20
    invoke-direct/range {v3 .. v12}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;-><init>(Landroid/content/Context;Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsOverlay;IIIIZ)V

    iput-object v3, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->$$delegate_1:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;

    .line 14
    iput-object v4, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    .line 36
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, v4, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->detector:Landroid/view/GestureDetector;

    return-void
.end method

.method public static synthetic getDetector$annotations()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public getCurrentSwipe()Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->$$delegate_0:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;->getCurrentSwipe()Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    move-result-object p0

    return-object p0
.end method

.method public final getDetector()Landroid/view/GestureDetector;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->detector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method public abstract getShouldForceInterceptEvents()Z
.end method

.method public abstract isInSwipeZone(Landroid/view/MotionEvent;)Z
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 15

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p1, :cond_7

    return v0

    .line 103
    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->submitForSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 106
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->getCurrentSwipe()Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    move-result-object v1

    sget-object v2, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;->NONE:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    if-eq v1, v2, :cond_35

    float-to-double v6, p3

    float-to-double v8, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 107
    invoke-virtual/range {v3 .. v9}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->onSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;DD)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 115
    iget-boolean p1, v3, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->didCancelDownstream:Z

    if-nez p1, :cond_34

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, v3, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->didCancelDownstream:Z

    .line 117
    invoke-static {v4}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 p2, 0x3

    .line 118
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 119
    iget-object p2, v3, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p2, p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->dispatchDownstreamTouchEvent(Landroid/view/MotionEvent;)Z

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_34
    return p0

    :cond_35
    return v0
.end method

.method public abstract onSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;DD)Z
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->didCancelDownstream:Z

    .line 88
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->resetSwipe()V

    .line 89
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->resetScroller()V

    return-void
.end method

.method public resetScroller()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->$$delegate_1:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->resetScroller()V

    return-void
.end method

.method public resetSwipe()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->$$delegate_0:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;->resetSwipe()V

    return-void
.end method

.method public scrollBrightness(D)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->$$delegate_1:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->scrollBrightness(D)V

    return-void
.end method

.method public scrollSpeed(D)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->$$delegate_1:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->scrollSpeed(D)V

    return-void
.end method

.method public scrollVolume(D)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->$$delegate_1:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->scrollVolume(D)V

    return-void
.end method

.method public abstract shouldDropMotion(Landroid/view/MotionEvent;)Z
.end method

.method public submitForSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 5

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->$$delegate_0:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;->submitForSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method public submitTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getEnableSwipeControls()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    .line 50
    :cond_11
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getStatusBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    .line 56
    :cond_1a
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->shouldDropMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_2b

    .line 61
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 66
    :cond_2b
    iget-object v3, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3d

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->getShouldForceInterceptEvents()Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_3d

    :cond_3b
    move v3, v1

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v3, v4

    .line 69
    :goto_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v4, :cond_4a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v2, :cond_4d

    .line 70
    :cond_4a
    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->onUp(Landroid/view/MotionEvent;)V

    .line 74
    :cond_4d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    if-nez v0, :cond_5b

    if-eqz v3, :cond_5b

    .line 78
    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->isInSwipeZone(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_5b

    return v4

    :cond_5b
    return v1
.end method
