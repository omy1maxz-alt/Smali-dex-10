.class public final Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;
.super Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;
.source "ClassicSwipeController.kt"

# interfaces
.implements Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassicSwipeController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassicSwipeController.kt\napp/morphe/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,122:1\n1#2:123\n*E\n"
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;

.field private final controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

.field private lastOnDownEvent:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;-><init>(Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;)V

    .line 20
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;

    invoke-direct {v0, p1}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->$$delegate_0:Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;

    .line 18
    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    return-void
.end method


# virtual methods
.method public getArePlayerControlsVisible()Z
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->$$delegate_0:Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->getArePlayerControlsVisible()Z

    move-result p0

    return p0
.end method

.method public getPlayerControlsVisibility()I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->$$delegate_0:Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->getPlayerControlsVisibility()I

    move-result p0

    return p0
.end method

.method public getShouldForceInterceptEvents()Z
    .registers 4

    .line 28
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->getCurrentSwipe()Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;->VERTICAL:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_34

    .line 30
    iget-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getEnableSpeedGestureControl()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 31
    sget-object v1, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;->HORIZONTAL:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    if-ne v0, v1, :cond_32

    .line 32
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->lastOnDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_32

    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getZones()Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->getSpeed()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    move-result-object p0

    invoke-static {v0}, Lcom/gold/extension/youtube/swipecontrols/misc/PointKt;->toPoint(Landroid/view/MotionEvent;)Lcom/gold/extension/youtube/swipecontrols/misc/Point;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gold/extension/youtube/swipecontrols/misc/RectangleKt;->contains(Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;Lcom/gold/extension/youtube/swipecontrols/misc/Point;)Z

    move-result p0

    if-ne p0, v2, :cond_32

    goto :goto_34

    :cond_32
    const/4 p0, 0x0

    return p0

    :cond_34
    :goto_34
    return v2
.end method

.method public isInSwipeZone(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getEnableVolumeControls()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_27

    .line 37
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

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

    .line 38
    :goto_28
    iget-object v3, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v3}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getEnableBrightnessControl()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 39
    iget-object v3, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

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

    .line 40
    :goto_4b
    iget-object v4, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v4}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getEnableSpeedGestureControl()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 41
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

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

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->dispatchDownstreamTouchEvent(Landroid/view/MotionEvent;)Z

    .line 83
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 86
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->lastOnDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 64
    :cond_a
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->lastOnDownEvent:Landroid/view/MotionEvent;

    .line 67
    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->isInSwipeZone(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->dispatchDownstreamTouchEvent(Landroid/view/MotionEvent;)Z

    .line 92
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 95
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 73
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->dispatchDownstreamTouchEvent(Landroid/view/MotionEvent;)Z

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v0
.end method

.method public onSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;DD)Z
    .registers 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    iget-object p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->isFullscreenVideo()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_14

    return v0

    .line 107
    :cond_14
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->getShouldForceInterceptEvents()Z

    move-result p2

    if-nez p2, :cond_1b

    return v0

    .line 108
    :cond_1b
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->getCurrentSwipe()Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    move-result-object p2

    .line 109
    invoke-static {p1}, Lcom/gold/extension/youtube/swipecontrols/misc/PointKt;->toPoint(Landroid/view/MotionEvent;)Lcom/gold/extension/youtube/swipecontrols/misc/Point;

    move-result-object p1

    .line 110
    sget-object v1, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_48

    const/4 p5, 0x2

    if-eq p2, p5, :cond_32

    return v0

    .line 117
    :cond_32
    iget-object p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getZones()Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->getSpeed()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/gold/extension/youtube/swipecontrols/misc/RectangleKt;->contains(Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;Lcom/gold/extension/youtube/swipecontrols/misc/Point;)Z

    move-result p1

    if-eqz p1, :cond_47

    neg-double p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->scrollSpeed(D)V

    return v1

    :cond_47
    return v0

    .line 112
    :cond_48
    iget-object p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getZones()Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->getVolume()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/gold/extension/youtube/swipecontrols/misc/RectangleKt;->contains(Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;Lcom/gold/extension/youtube/swipecontrols/misc/Point;)Z

    move-result p2

    if-eqz p2, :cond_5c

    invoke-virtual {p0, p5, p6}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->scrollVolume(D)V

    return v1

    .line 113
    :cond_5c
    iget-object p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getZones()Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->getBrightness()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/gold/extension/youtube/swipecontrols/misc/RectangleKt;->contains(Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;Lcom/gold/extension/youtube/swipecontrols/misc/Point;)Z

    move-result p1

    if-eqz p1, :cond_70

    invoke-virtual {p0, p5, p6}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/BaseGestureController;->scrollBrightness(D)V

    return v1

    :cond_70
    return v0
.end method

.method public shouldDropMotion(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1a

    .line 49
    iget-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->lastOnDownEvent:Landroid/view/MotionEvent;

    if-eqz p1, :cond_16

    .line 50
    iget-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->controller:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v1, p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->dispatchDownstreamTouchEvent(Landroid/view/MotionEvent;)Z

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_16
    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->lastOnDownEvent:Landroid/view/MotionEvent;

    return v0

    .line 58
    :cond_1a
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;->getArePlayerControlsVisible()Z

    move-result p0

    return p0
.end method
