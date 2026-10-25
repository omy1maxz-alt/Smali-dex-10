.class public final Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;
.super Ljava/lang/Object;
.source "VolumeAndBrightnessScroller.kt"

# interfaces
.implements Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScroller;


# instance fields
.field private final brightnessScroller:Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

.field private final enableSpeedGesture:Z

.field private final overlayController:Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsOverlay;

.field private final screenController:Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;

.field private final speedScroller:Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

.field private final volumeController:Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;

.field private final volumeScroller:Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

.field private final volumeSwipeSensitivity:I


# direct methods
.method public static $r8$lambda$-uaL4EGsUGuab6TJUI4Gw7Ty9JA(Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;DDI)Lkotlin/Unit;
    .registers 6

    .line 76
    iget-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->volumeController:Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;

    if-eqz p1, :cond_1c

    .line 77
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->getVolume()I

    move-result p2

    iget p3, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->volumeSwipeSensitivity:I

    mul-int/2addr p5, p3

    add-int/2addr p2, p5

    invoke-virtual {p1, p2}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->setVolume(I)V

    .line 78
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->overlayController:Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsOverlay;

    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->getVolume()I

    move-result p2

    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->getMaxVolume()I

    move-result p1

    invoke-interface {p0, p2, p1}, Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsOverlay;->onVolumeChanged(II)V

    .line 80
    :cond_1c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static $r8$lambda$BTlRsQ7YMzKADAl5V8erg32Kqrg(Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;DDI)Lkotlin/Unit;
    .registers 6

    .line 120
    iget-boolean p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->enableSpeedGesture:Z

    if-nez p1, :cond_7

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 121
    :cond_7
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlaybackSpeed()F

    move-result p1

    int-to-float p2, p5

    const/high16 p3, 0x3e800000  # 0.25f

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    const/high16 p2, 0x41000000  # 8.0f

    .line 122
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 123
    invoke-static {p1}, Lcom/gold/extension/youtube/patches/VideoInformation;->overridePlaybackSpeed(F)V

    .line 124
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->overlayController:Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsOverlay;

    invoke-interface {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsOverlay;->onSpeedChanged(F)V

    .line 125
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static $r8$lambda$VLg2ny90cMgcl63Y2EjA_lRNCHY(Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;DDI)Lkotlin/Unit;
    .registers 8

    .line 93
    iget-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->screenController:Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;

    if-eqz p1, :cond_40

    .line 94
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->getHost()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getShouldLowestValueEnableAutoBrightness()Z

    move-result p2

    const-wide/16 p3, 0x0

    if-eqz p2, :cond_1f

    .line 95
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->getScreenBrightness()D

    move-result-wide v0

    cmpl-double p2, v0, p3

    if-gtz p2, :cond_2e

    if-lez p5, :cond_2a

    goto :goto_2e

    .line 97
    :cond_1f
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->getScreenBrightness()D

    move-result-wide v0

    cmpl-double p2, v0, p3

    if-gez p2, :cond_2e

    if-ltz p5, :cond_2a

    goto :goto_2e

    .line 103
    :cond_2a
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->restoreDefaultBrightness()V

    goto :goto_37

    .line 101
    :cond_2e
    :goto_2e
    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->getScreenBrightness()D

    move-result-wide p2

    int-to-double p4, p5

    add-double/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->setScreenBrightness(D)V

    .line 105
    :goto_37
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->overlayController:Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsOverlay;

    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->getScreenBrightness()D

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsOverlay;->onBrightnessChanged(D)V

    .line 107
    :cond_40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsOverlay;IIIIZ)V
    .registers 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->volumeController:Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;

    .line 59
    iput-object p3, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->screenController:Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;

    .line 60
    iput-object p4, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->overlayController:Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsOverlay;

    .line 63
    iput p7, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->volumeSwipeSensitivity:I

    .line 65
    iput-boolean p9, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->enableSpeedGesture:Z

    .line 70
    new-instance p2, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

    const/4 p3, 0x1

    .line 71
    invoke-static {p5, p1, p3}, Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsUtilsKt;->applyDimension(ILandroid/content/Context;I)I

    move-result p4

    .line 75
    new-instance p5, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;)V

    .line 70
    invoke-direct {p2, p4, p5}, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;-><init>(ILkotlin/jvm/functions/Function3;)V

    iput-object p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->volumeScroller:Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

    .line 87
    new-instance p2, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

    .line 88
    invoke-static {p6, p1, p3}, Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsUtilsKt;->applyDimension(ILandroid/content/Context;I)I

    move-result p4

    .line 92
    new-instance p5, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl$$ExternalSyntheticLambda1;

    invoke-direct {p5, p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;)V

    .line 87
    invoke-direct {p2, p4, p5}, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;-><init>(ILkotlin/jvm/functions/Function3;)V

    iput-object p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->brightnessScroller:Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

    .line 114
    new-instance p2, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

    .line 115
    invoke-static {p8, p1, p3}, Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsUtilsKt;->applyDimension(ILandroid/content/Context;I)I

    move-result p1

    .line 119
    new-instance p3, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;)V

    .line 114
    invoke-direct {p2, p1, p3}, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;-><init>(ILkotlin/jvm/functions/Function3;)V

    iput-object p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->speedScroller:Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsOverlay;IIIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p11, p10, 0x10

    const/16 v0, 0xa

    if-eqz p11, :cond_7

    move p5, v0

    :cond_7
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_c

    const/4 p6, 0x1

    :cond_c
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_11

    move p8, v0

    :cond_11
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_16

    const/4 p9, 0x0

    .line 56
    :cond_16
    invoke-direct/range {p0 .. p9}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;-><init>(Landroid/content/Context;Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsOverlay;IIIIZ)V

    return-void
.end method


# virtual methods
.method public resetScroller()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->volumeScroller:Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->reset()V

    .line 132
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->brightnessScroller:Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->reset()V

    .line 133
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->speedScroller:Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->reset()V

    return-void
.end method

.method public scrollBrightness(D)V
    .registers 3

    .line 109
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->brightnessScroller:Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->add(D)V

    return-void
.end method

.method public scrollSpeed(D)V
    .registers 3

    .line 127
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->speedScroller:Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->add(D)V

    return-void
.end method

.method public scrollVolume(D)V
    .registers 3

    .line 82
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->volumeScroller:Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;

    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->add(D)V

    return-void
.end method
