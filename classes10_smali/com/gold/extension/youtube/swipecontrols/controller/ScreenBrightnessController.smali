.class public final Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;
.super Ljava/lang/Object;
.source "ScreenBrightnessController.kt"


# instance fields
.field private final host:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

.field private isBrightnessRestored:Z


# direct methods
.method public constructor <init>(Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->host:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    return-void
.end method

.method private final setRawScreenBrightness(F)V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->host:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 64
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 65
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->host:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final getHost()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->host:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    return-object p0
.end method

.method public final getRawScreenBrightness()F
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->host:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    return p0
.end method

.method public final getScreenBrightness()D
    .registers 5

    .line 20
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->getRawScreenBrightness()F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final restore()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->host:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getSavedScreenBrightnessValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->setRawScreenBrightness(F)V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->isBrightnessRestored:Z

    return-void
.end method

.method public final restoreDefaultBrightness()V
    .registers 2

    const/high16 v0, -0x40800000  # -1.0f

    .line 29
    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->setRawScreenBrightness(F)V

    return-void
.end method

.method public final save()V
    .registers 3

    .line 39
    iget-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->isBrightnessRestored:Z

    if-eqz v0, :cond_14

    .line 41
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->host:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->getConfig()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->getRawScreenBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->setSavedScreenBrightnessValue(F)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->isBrightnessRestored:Z

    :cond_14
    return-void
.end method

.method public final setScreenBrightness(D)V
    .registers 4

    double-to-float p1, p1

    const/high16 p2, 0x42c80000  # 100.0f

    div-float/2addr p1, p2

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000  # 1.0f

    .line 22
    invoke-static {p1, p2, v0}, Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsUtilsKt;->clamp(FFF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/controller/ScreenBrightnessController;->setRawScreenBrightness(F)V

    return-void
.end method
