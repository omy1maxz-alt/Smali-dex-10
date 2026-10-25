.class public final Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;
.super Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;
.source "PressToSwipeController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController$WhenMappings;
    }
.end annotation


# instance fields
.field private final controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

.field private isInSpeedSwipeSession:Z

.field private isInSwipeSession:Z


# direct methods
.method public constructor <init>(Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;-><init>(Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;)V

    .line 16
    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    return-void
.end method


# virtual methods
.method public getShouldForceInterceptEvents()Z
    .registers 3

    .line 30
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->getCurrentSwipe()Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;->VERTICAL:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    if-ne v0, v1, :cond_c

    iget-boolean v1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->isInSwipeSession:Z

    if-nez v1, :cond_14

    .line 32
    :cond_c
    sget-object v1, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;->HORIZONTAL:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    if-ne v0, v1, :cond_16

    iget-boolean p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->isInSpeedSwipeSession:Z

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isInSwipeZone(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getEnableVolumeControls()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_27

    .line 39
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getZones()Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->getVolume()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    move-result-object v0

    invoke-static {p1}, Lcom/gold/extension/youtube/swipecontrols/misc/PointKt;->toPoint(Landroid/view/MotionEvent;)Lcom/gold/extension/youtube/swipecontrols/misc/Point;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gold/extension/youtube/swipecontrols/misc/RectangleKt;->contains(Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;Lcom/gold/extension/youtube/swipecontrols/misc/Point;)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    move v0, v1

    .line 40
    :goto_28
    iget-object v3, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v3}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getEnableBrightnessControl()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 41
    iget-object v3, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v3}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getZones()Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->getBrightness()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    move-result-object v3

    invoke-static {p1}, Lcom/gold/extension/youtube/swipecontrols/misc/PointKt;->toPoint(Landroid/view/MotionEvent;)Lcom/gold/extension/youtube/swipecontrols/misc/Point;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gold/extension/youtube/swipecontrols/misc/RectangleKt;->contains(Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;Lcom/gold/extension/youtube/swipecontrols/misc/Point;)Z

    move-result v3

    if-eqz v3, :cond_4a

    move v3, v2

    goto :goto_4b

    :cond_4a
    move v3, v1

    .line 42
    :goto_4b
    iget-object v4, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v4}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getEnableSpeedGestureControl()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 43
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getZones()Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->getSpeed()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    move-result-object p0

    invoke-static {p1}, Lcom/gold/extension/youtube/swipecontrols/misc/PointKt;->toPoint(Landroid/view/MotionEvent;)Lcom/gold/extension/youtube/swipecontrols/misc/Point;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/misc/RectangleKt;->contains(Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;Lcom/gold/extension/youtube/swipecontrols/misc/Point;)Z

    move-result p0

    if-eqz p0, :cond_6d

    move p0, v2

    goto :goto_6e

    :cond_6d
    move p0, v1

    :goto_6e
    if-nez v0, :cond_76

    if-nez v3, :cond_76

    if-eqz p0, :cond_75

    goto :goto_76

    :cond_75
    return v1

    :cond_76
    :goto_76
    return v2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->isInSwipeSession:Z

    .line 56
    iget-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getEnableSpeedGestureControl()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 57
    iget-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getZones()Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->getSpeed()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    move-result-object v1

    invoke-static {p1}, Lcom/gold/extension/youtube/swipecontrols/misc/PointKt;->toPoint(Landroid/view/MotionEvent;)Lcom/gold/extension/youtube/swipecontrols/misc/Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gold/extension/youtube/swipecontrols/misc/RectangleKt;->contains(Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;Lcom/gold/extension/youtube/swipecontrols/misc/Point;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 56
    :goto_28
    iput-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->isInSpeedSwipeSession:Z

    .line 58
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getOverlay()Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->onEnterSwipeSession()V

    const/4 v0, 0x3

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 62
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->getDetector()Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;DD)Z
    .registers 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    iget-object p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->isFullscreenVideo()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_14

    return v0

    .line 74
    :cond_14
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->getShouldForceInterceptEvents()Z

    move-result p2

    if-nez p2, :cond_1b

    return v0

    .line 75
    :cond_1b
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->getCurrentSwipe()Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    move-result-object p2

    .line 76
    invoke-static {p1}, Lcom/gold/extension/youtube/swipecontrols/misc/PointKt;->toPoint(Landroid/view/MotionEvent;)Lcom/gold/extension/youtube/swipecontrols/misc/Point;

    move-result-object p1

    .line 77
    sget-object v1, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3c

    const/4 p1, 0x2

    if-eq p2, p1, :cond_32

    return v0

    .line 84
    :cond_32
    iget-boolean p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->isInSpeedSwipeSession:Z

    if-eqz p1, :cond_3b

    neg-double p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->scrollSpeed(D)V

    return v1

    :cond_3b
    return v0

    .line 79
    :cond_3c
    iget-object p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getZones()Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->getVolume()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/gold/extension/youtube/swipecontrols/misc/RectangleKt;->contains(Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;Lcom/gold/extension/youtube/swipecontrols/misc/Point;)Z

    move-result p2

    if-eqz p2, :cond_50

    invoke-virtual {p0, p5, p6}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->scrollVolume(D)V

    return v1

    .line 80
    :cond_50
    iget-object p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getZones()Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->getBrightness()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/gold/extension/youtube/swipecontrols/misc/RectangleKt;->contains(Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;Lcom/gold/extension/youtube/swipecontrols/misc/Point;)Z

    move-result p1

    if-eqz p1, :cond_64

    invoke-virtual {p0, p5, p6}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->scrollBrightness(D)V

    return v1

    :cond_64
    return v0
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-super {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->onUp(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->isInSwipeSession:Z

    .line 50
    iput-boolean p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/PressToSwipeController;->isInSpeedSwipeSession:Z

    return-void
.end method

.method public shouldDropMotion(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method
