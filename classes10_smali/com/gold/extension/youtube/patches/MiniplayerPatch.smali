.class public final Lcom/gold/extension/youtube/patches/MiniplayerPatch;
.super Ljava/lang/Object;
.source "MiniplayerPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;,
        Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerOverlayOpacityAvailability;,
        Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerAnyModernAvailability;,
        Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerHideOverlayButtonsAvailability;,
        Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerHorizontalDragPlaybackAvailability;,
        Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerHorizontalDragAvailability;
    }
.end annotation


# static fields
.field private static final CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

.field private static final DISABLE_RESUMING_MINIPLAYER:Z

.field private static final DOUBLE_TAP_ACTION_ENABLED:Z = true

.field private static final DRAG_AND_DROP_ENABLED:Z

.field private static final HIDE_OVERLAY_BUTTONS_ENABLED:Z

.field private static final MINIMAL_PLAYER_DRAWABLES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MINIPLAYER_HORIZONTAL_DRAG_ENABLED:Z

.field private static final MINIPLAYER_ROUNDED_CORNERS_ENABLED:Z

.field private static final MINIPLAYER_SIZE:I

.field private static final OPACITY_LEVEL:I


# direct methods
.method public static synthetic $r8$lambda$3xoscjD1mGXDfl8yCWiftnK0gWo(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown miniplayer overlay view: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Y5Ix_O7jzubpiJWEhVl-EVzilnw(II)Ljava/lang/String;
    .registers 4

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Screen dip width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " maxWidth: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 92
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 93
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    add-int/lit8 v1, v0, -0xf

    .line 100
    div-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x5

    const/16 v2, 0xaa

    if-gt v1, v2, :cond_1f

    const/16 v1, 0x154

    .line 107
    :cond_1f
    new-instance v3, Lcom/gold/extension/youtube/patches/MiniplayerPatch$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 109
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_WIDTH_DIP:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v2, :cond_35

    if-le v3, v1, :cond_59

    .line 113
    :cond_35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 112
    const-string v5, "youtube_miniplayer_width_dip_invalid_toast"

    invoke-static {v5, v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    .line 116
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/IntegerSetting;->save(Ljava/lang/Object;)V

    .line 120
    :cond_59
    sput v3, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->MINIPLAYER_SIZE:I

    .line 123
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_DISABLE_RESUMING:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 124
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->DISABLE_RESUMING_MINIPLAYER:Z

    .line 126
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    sput-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    .line 136
    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->isModern()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_87

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_DISABLE_DRAG_AND_DROP:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_87

    move v1, v3

    goto :goto_88

    :cond_87
    move v1, v2

    :goto_88
    sput-boolean v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->DRAG_AND_DROP_ENABLED:Z

    .line 138
    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_HIDE_OVERLAY_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 139
    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 140
    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/BooleanSetting;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_9e

    move v4, v3

    goto :goto_9f

    :cond_9e
    move v4, v2

    :goto_9f
    sput-boolean v4, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->HIDE_OVERLAY_BUTTONS_ENABLED:Z

    .line 143
    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->isModern()Z

    move-result v0

    if-eqz v0, :cond_b5

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_DISABLE_ROUNDED_CORNERS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b5

    move v0, v3

    goto :goto_b6

    :cond_b5
    move v0, v2

    :goto_b6
    sput-boolean v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->MINIPLAYER_ROUNDED_CORNERS_ENABLED:Z

    if-eqz v1, :cond_c7

    .line 145
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_DISABLE_HORIZONTAL_DRAG:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 146
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c7

    move v2, v3

    :cond_c7
    sput-boolean v2, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->MINIPLAYER_HORIZONTAL_DRAG_ENABLED:Z

    .line 148
    const-string v0, "accessibility_pause"

    .line 149
    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getStringIdentifier(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v0, "accessibility_play"

    .line 151
    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getStringIdentifier(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v0, "accessibility_replay"

    .line 153
    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getStringIdentifier(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "yt_outline_replay_arrow_vd_theme_24"

    .line 148
    const-string v2, "yt_fill_pause_vd_theme_24"

    const-string v4, "yt_fill_play_arrow_vd_theme_24"

    invoke-static/range {v1 .. v6}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->MINIMAL_PLAYER_DRAWABLES:Ljava/util/Map;

    .line 160
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_OPACITY:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-ltz v1, :cond_103

    if-le v1, v2, :cond_116

    .line 163
    :cond_103
    const-string v1, "youtube_miniplayer_opacity_invalid_toast"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->resetToDefault()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_116
    mul-int/lit16 v1, v1, 0xff

    .line 167
    div-int/2addr v1, v2

    sput v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->OPACITY_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustMiniplayerOpacity(Landroid/view/View;)V
    .registers 3

    .line 304
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    sget-object v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->MODERN_1:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne v0, v1, :cond_1a

    .line 305
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    check-cast p0, Landroid/widget/ImageView;

    .line 306
    sget v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->OPACITY_LEVEL:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void

    .line 308
    :cond_12
    new-instance v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_1a
    return-void
.end method

.method public static allowBoldIcons(Z)Z
    .registers 3

    .line 403
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    sget-object v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->MINIMAL:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne v0, v1, :cond_7

    const/4 p0, 0x0

    :cond_7
    return p0
.end method

.method public static disableResumingStartupMiniPlayer(Z)Z
    .registers 2

    .line 250
    sget-boolean v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->DISABLE_RESUMING_MINIPLAYER:Z

    if-nez v0, :cond_8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static fixMinimalMiniplayerFullscreenButtonTint(Landroid/view/View;)V
    .registers 3

    .line 420
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    sget-object v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->MINIMAL:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-eq v0, v1, :cond_7

    goto :goto_15

    .line 422
    :cond_7
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    check-cast p0, Landroid/widget/ImageView;

    const/4 v0, -0x1

    .line 423
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public static getHorizontalDrag(Z)Z
    .registers 3

    .line 361
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    sget-object v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->DEFAULT:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne v0, v1, :cond_7

    return p0

    .line 365
    :cond_7
    sget-boolean p0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->MINIPLAYER_HORIZONTAL_DRAG_ENABLED:Z

    return p0
.end method

.method public static getLegacyTabletMiniplayerOverride(Z)Z
    .registers 2

    .line 269
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    iget-object v0, v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->legacyTabletOverride:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    return p0

    .line 272
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static getMaximizeAnimation(Z)Z
    .registers 2

    .line 381
    sget-boolean v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->MINIPLAYER_HORIZONTAL_DRAG_ENABLED:Z

    if-eqz v0, :cond_5

    const/4 p0, 0x1

    :cond_5
    return p0
.end method

.method public static getMiniplayerDefaultSize(I)I
    .registers 2

    .line 392
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->isModern()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 393
    sget p0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->MINIPLAYER_SIZE:I

    :cond_a
    return p0
.end method

.method public static getMiniplayerDoubleTapAction(Z)Z
    .registers 3

    .line 328
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    sget-object v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->DEFAULT:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne v0, v1, :cond_7

    return p0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public static getMiniplayerDragAndDrop(Z)Z
    .registers 3

    .line 339
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    sget-object v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->DEFAULT:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne v0, v1, :cond_7

    return p0

    .line 343
    :cond_7
    sget-boolean p0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->DRAG_AND_DROP_ENABLED:Z

    return p0
.end method

.method public static getMiniplayerOnCloseHandler(Z)Z
    .registers 3

    .line 260
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    sget-object v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->DEFAULT:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne v0, v1, :cond_7

    return p0

    .line 262
    :cond_7
    sget-object p0, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->DISABLED:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne v0, p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static getModernFeatureFlagsActiveOverride(Z)Z
    .registers 3

    .line 317
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    sget-object v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->DEFAULT:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne v0, v1, :cond_7

    return p0

    .line 321
    :cond_7
    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->isModern()Z

    move-result p0

    return p0
.end method

.method public static getModernMiniplayerOverride(Z)Z
    .registers 3

    .line 279
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    sget-object v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->DEFAULT:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne v0, v1, :cond_7

    return p0

    .line 281
    :cond_7
    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->isModern()Z

    move-result p0

    return p0
.end method

.method public static getModernMiniplayerOverrideType(I)I
    .registers 3

    .line 288
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    sget-object v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->MINIMAL:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne v0, v1, :cond_12

    .line 291
    sget-object p0, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->MODERN_1:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->modernPlayerType:Ljava/lang/Integer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 294
    :cond_12
    iget-object v0, v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->modernPlayerType:Ljava/lang/Integer;

    if-nez v0, :cond_17

    return p0

    .line 297
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getRoundedCorners(Z)Z
    .registers 3

    .line 350
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    sget-object v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->DEFAULT:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne v0, v1, :cond_7

    return p0

    .line 354
    :cond_7
    sget-boolean p0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->MINIPLAYER_ROUNDED_CORNERS_ENABLED:Z

    return p0
.end method

.method public static hideMiniplayerActionButton(Landroid/view/View;)V
    .registers 3

    .line 438
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    sget-object v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->MODERN_4:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne v0, v1, :cond_b

    .line 439
    sget-boolean v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->HIDE_OVERLAY_BUTTONS_ENABLED:Z

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewByRemovingFromParentUnderCondition(ZLandroid/view/View;)Z

    :cond_b
    return-void
.end method

.method public static hideMiniplayerExpandClose(Landroid/view/View;)V
    .registers 2

    .line 431
    sget-boolean v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->HIDE_OVERLAY_BUTTONS_ENABLED:Z

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewByRemovingFromParentUnderCondition(ZLandroid/view/View;)Z

    return-void
.end method

.method public static overrideMiniplayerActionButtonDrawable(Landroid/widget/ImageView;I)V
    .registers 4

    .line 447
    sget-boolean v0, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_21_17_OR_GREATER:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->CURRENT_TYPE:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    sget-object v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->MINIMAL:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-eq v0, v1, :cond_b

    goto :goto_22

    .line 451
    :cond_b
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->MINIMAL_PLAYER_DRAWABLES:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_22

    .line 453
    invoke-static {p1}, Lcom/gold/extension/shared/ResourceUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 455
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public static pausePlaybackWithHorizontalDrag()Z
    .registers 1

    .line 372
    sget-boolean v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch;->MINIPLAYER_HORIZONTAL_DRAG_ENABLED:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_DISABLE_HORIZONTAL_DRAG_PLAYBACK:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method
