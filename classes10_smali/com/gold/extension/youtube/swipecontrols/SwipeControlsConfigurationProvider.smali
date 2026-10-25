.class public final Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;
.super Ljava/lang/Object;
.source "SwipeControlsConfigurationProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;
    }
.end annotation


# instance fields
.field private final enableBrightnessControl:Z

.field private final enableSpeedGestureControl:Z

.field private final enableVolumeControls:Z

.field private final overlayFillBackgroundPaint:I

.field private final overlayShowTimeoutMillis:J

.field private final overlayStyle:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

.field private final overlayTextColor:I

.field private final shouldEnableHapticFeedback:Z

.field private final shouldEnablePressToSwipe:Z

.field private final shouldLowestValueEnableAutoBrightness:Z

.field private final shouldSaveAndRestoreBrightness:Z

.field private final swipeMagnitudeThreshold:I


# direct methods
.method public static $r8$lambda$OKHCE5hk4K1fFm-4S2lkYFhq9vo(Lcom/gold/extension/shared/settings/StringSetting;)Ljava/lang/String;
    .registers 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse color: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_VOLUME:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->enableVolumeControls:Z

    .line 36
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_BRIGHTNESS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->enableBrightnessControl:Z

    .line 75
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_PRESS_TO_ENGAGE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->shouldEnablePressToSwipe:Z

    .line 81
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_MAGNITUDE_THRESHOLD:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->swipeMagnitudeThreshold:I

    .line 116
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_SPEED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->enableSpeedGestureControl:Z

    .line 139
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_HAPTIC_FEEDBACK:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->shouldEnableHapticFeedback:Z

    .line 144
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_TIMEOUT:Lcom/gold/extension/shared/settings/LongSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/LongSetting;->get()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->overlayShowTimeoutMillis:J

    const v0, -0x7f2c2c2d

    .line 201
    iput v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->overlayFillBackgroundPaint:I

    const/4 v0, -0x1

    .line 206
    iput v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->overlayTextColor:I

    .line 276
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_STYLE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    iput-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->overlayStyle:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    .line 283
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_SAVE_AND_RESTORE_BRIGHTNESS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->shouldSaveAndRestoreBrightness:Z

    .line 288
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_LOWEST_VALUE_ENABLE_AUTO_BRIGHTNESS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->shouldLowestValueEnableAutoBrightness:Z

    return-void
.end method

.method private final getSettingColor(Lcom/gold/extension/shared/settings/StringSetting;)I
    .registers 4

    .line 179
    :try_start_0
    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception v0

    .line 185
    new-instance v1, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/settings/StringSetting;)V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 186
    const-string v0, "youtube_settings_color_invalid"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/StringSetting;->resetToDefault()Ljava/lang/Object;

    .line 188
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getSettingColor(Lcom/gold/extension/shared/settings/StringSetting;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getBrightnessSwipeSensitivity()I
    .registers 3

    .line 104
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_BRIGHTNESS_SENSITIVITY:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1e

    .line 107
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->resetToDefault()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1e
    return v0
.end method

.method public final getEnableBrightnessControl()Z
    .registers 1

    .line 36
    iget-boolean p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->enableBrightnessControl:Z

    return p0
.end method

.method public final getEnableSpeedGestureControl()Z
    .registers 1

    .line 116
    iget-boolean p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->enableSpeedGestureControl:Z

    return p0
.end method

.method public final getEnableSwipeControls()Z
    .registers 2

    .line 26
    iget-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->enableVolumeControls:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->enableBrightnessControl:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->enableSpeedGestureControl:Z

    if-eqz v0, :cond_19

    :cond_c
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->isFullscreenVideo()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->isVideoSliding()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public final getEnableVolumeControls()Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->enableVolumeControls:Z

    return p0
.end method

.method public final getOverlayBackgroundOpacity()I
    .registers 3

    .line 152
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_OPACITY:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ltz v0, :cond_14

    const/16 v1, 0x65

    if-ge v0, v1, :cond_14

    goto :goto_2a

    .line 155
    :cond_14
    const-string v0, "youtube_swipe_overlay_background_opacity_invalid_toast"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->resetToDefault()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_2a
    mul-int/lit16 v0, v0, 0xff

    .line 159
    div-int/lit8 v0, v0, 0x64

    const/4 p0, 0x0

    .line 160
    invoke-static {v0, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public final getOverlayBrightnessProgressColor()I
    .registers 2

    .line 168
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_BRIGHTNESS_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getSettingColor(Lcom/gold/extension/shared/settings/StringSetting;)I

    move-result p0

    return p0
.end method

.method public final getOverlayFillBackgroundPaint()I
    .registers 1

    .line 201
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->overlayFillBackgroundPaint:I

    return p0
.end method

.method public final getOverlayShowTimeoutMillis()J
    .registers 3

    .line 144
    iget-wide v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->overlayShowTimeoutMillis:J

    return-wide v0
.end method

.method public final getOverlaySpeedProgressColor()I
    .registers 2

    .line 196
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_SPEED_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getSettingColor(Lcom/gold/extension/shared/settings/StringSetting;)I

    move-result p0

    return p0
.end method

.method public final getOverlayStyle()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->overlayStyle:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    return-object p0
.end method

.method public final getOverlayTextColor()I
    .registers 1

    .line 206
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->overlayTextColor:I

    return p0
.end method

.method public final getOverlayTextSize()I
    .registers 3

    .line 214
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_TEXT_SIZE:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_15

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_15

    return v0

    .line 216
    :cond_15
    const-string v0, "youtube_swipe_text_overlay_size_invalid_toast"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->resetToDefault()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getOverlayVolumeProgressColor()I
    .registers 2

    .line 175
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_VOLUME_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getSettingColor(Lcom/gold/extension/shared/settings/StringSetting;)I

    move-result p0

    return p0
.end method

.method public final getOverwriteVolumeKeyControls()Z
    .registers 2

    .line 68
    iget-boolean v0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->enableVolumeControls:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->isFullscreenVideo()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final getSavedScreenBrightnessValue()F
    .registers 1

    .line 294
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_BRIGHTNESS_VALUE:Lcom/gold/extension/shared/settings/FloatSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/FloatSetting;->get()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getShouldEnableHapticFeedback()Z
    .registers 1

    .line 139
    iget-boolean p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->shouldEnableHapticFeedback:Z

    return p0
.end method

.method public final getShouldEnablePressToSwipe()Z
    .registers 1

    .line 75
    iget-boolean p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->shouldEnablePressToSwipe:Z

    return p0
.end method

.method public final getShouldLowestValueEnableAutoBrightness()Z
    .registers 1

    .line 288
    iget-boolean p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->shouldLowestValueEnableAutoBrightness:Z

    return p0
.end method

.method public final getShouldSaveAndRestoreBrightness()Z
    .registers 1

    .line 283
    iget-boolean p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->shouldSaveAndRestoreBrightness:Z

    return p0
.end method

.method public final getSpeedSwipeSensitivity()I
    .registers 3

    .line 124
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_SPEED_SENSITIVITY:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1e

    .line 127
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->resetToDefault()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1e
    return v0
.end method

.method public final getSwipeMagnitudeThreshold()I
    .registers 1

    .line 81
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->swipeMagnitudeThreshold:I

    return p0
.end method

.method public final getVolumeSwipeSensitivity()I
    .registers 3

    .line 89
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_VOLUME_SENSITIVITY:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1e

    .line 92
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->resetToDefault()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1e
    return v0
.end method

.method public final isFullscreenVideo()Z
    .registers 2

    .line 42
    sget-object p0, Lcom/gold/extension/youtube/shared/PlayerType;->Companion:Lcom/gold/extension/youtube/shared/PlayerType$Companion;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerType$Companion;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object p0

    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isVideoSliding()Z
    .registers 2

    .line 59
    sget-object p0, Lcom/gold/extension/youtube/shared/PlayerType;->Companion:Lcom/gold/extension/youtube/shared/PlayerType$Companion;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerType$Companion;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object p0

    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_SLIDING_MAXIMIZED_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final setSavedScreenBrightnessValue(F)V
    .registers 2

    .line 295
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_BRIGHTNESS_VALUE:Lcom/gold/extension/shared/settings/FloatSetting;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/FloatSetting;->save(Ljava/lang/Object;)V

    return-void
.end method
