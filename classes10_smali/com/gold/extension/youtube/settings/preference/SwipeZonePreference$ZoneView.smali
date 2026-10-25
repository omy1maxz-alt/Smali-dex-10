.class final Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;
.super Landroid/view/View;
.source "SwipeZonePreference.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZoneView"
.end annotation


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final clipPath:Landroid/graphics/Path;

.field private final dashPaint:Landroid/graphics/Paint;

.field private final dimTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final edgeBgColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final fgColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final fillPaint:Landroid/graphics/Paint;

.field private final labelBrightness:Ljava/lang/String;

.field private final labelNative:Ljava/lang/String;

.field private final labelSpeed:Ljava/lang/String;

.field private final labelVolume:Ljava/lang/String;

.field private final namePaint:Landroid/graphics/Paint;

.field private final percentPaint:Landroid/graphics/Paint;

.field private final screenBgColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final screenRect:Landroid/graphics/RectF;

.field private final separatorPaint:Landroid/graphics/Paint;

.field private final zoneRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    .line 188
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fillPaint:Landroid/graphics/Paint;

    .line 166
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->borderPaint:Landroid/graphics/Paint;

    .line 167
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->separatorPaint:Landroid/graphics/Paint;

    .line 168
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->dashPaint:Landroid/graphics/Paint;

    .line 169
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->namePaint:Landroid/graphics/Paint;

    .line 170
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->percentPaint:Landroid/graphics/Paint;

    .line 172
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->screenRect:Landroid/graphics/RectF;

    .line 173
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->zoneRect:Landroid/graphics/RectF;

    .line 174
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->clipPath:Landroid/graphics/Path;

    .line 182
    const-string v6, "youtube_swipe_zone_label_brightness"

    invoke-static {v6}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->labelBrightness:Ljava/lang/String;

    .line 183
    const-string v6, "youtube_swipe_zone_label_volume"

    invoke-static {v6}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->labelVolume:Ljava/lang/String;

    .line 184
    const-string v6, "youtube_swipe_zone_label_native"

    invoke-static {v6}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->labelNative:Ljava/lang/String;

    .line 185
    const-string v6, "youtube_swipe_zone_label_speed"

    invoke-static {v6}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->labelSpeed:Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v6

    iput v6, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fgColor:I

    const/16 v7, 0x33

    .line 191
    invoke-static {v6, v7}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->withAlpha(II)I

    move-result v7

    .line 193
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppBackgroundColor()I

    move-result v8

    .line 194
    iput v8, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->screenBgColor:I

    .line 195
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_7f

    const v9, 0x3f666666  # 0.9f

    goto :goto_82

    :cond_7f
    const v9, 0x3f7851ec  # 0.97f

    :goto_82
    invoke-static {v8, v9}, Lcom/gold/extension/shared/Utils;->adjustColorBrightness(IF)I

    move-result v8

    iput v8, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->edgeBgColor:I

    const/16 v8, 0x55

    .line 196
    invoke-static {v6, v8}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->withAlpha(II)I

    move-result v6

    iput v6, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->dimTextColor:I

    .line 198
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    sget p1, Lcom/gold/extension/shared/ui/Dim;->dp1:I

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x3f000000  # 0.5f

    .line 205
    invoke-static {p1}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    invoke-static {p1}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 210
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    new-instance p0, Landroid/graphics/DashPathEffect;

    const/high16 p1, 0x40800000  # 4.0f

    invoke-static {p1}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x40400000  # 3.0f

    invoke-static {v1}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v6, 0x0

    aput p1, v2, v6

    aput v1, v2, v0

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 213
    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 p1, 0x41300000  # 11.0f

    .line 214
    invoke-static {p1}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 216
    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 p0, 0x41200000  # 10.0f

    .line 217
    invoke-static {p0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private static parseColor(Ljava/lang/String;I)I
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 368
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    return p1
.end method

.method private static relativeLuminance(I)F
    .registers 4
    .param p0  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 387
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr v0, v1

    .line 388
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 389
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    const v1, 0x3e59b3d0  # 0.2126f

    mul-float/2addr v0, v1

    const v1, 0x3f371759  # 0.7152f

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    const v1, 0x3d93dd98  # 0.0722f

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method private toPreviewColor(II)I
    .registers 6
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 380
    invoke-static {p1}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->relativeLuminance(I)F

    move-result v0

    .line 381
    iget p0, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->screenBgColor:I

    invoke-static {p0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->relativeLuminance(I)F

    move-result p0

    .line 382
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x3d4ccccd  # 0.05f

    add-float/2addr v1, v2

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    add-float/2addr p0, v2

    div-float/2addr v1, p0

    const/high16 p0, 0x3fc00000  # 1.5f

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_22

    return p1

    :cond_22
    return p2
.end method

.method private static withAlpha(II)I
    .registers 3
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 0
    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 25
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 222
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 224
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 226
    sget v4, Lcom/gold/extension/shared/ui/Dim;->dp4:I

    int-to-float v4, v4

    .line 227
    sget v5, Lcom/gold/extension/shared/ui/Dim;->dp6:I

    int-to-float v5, v5

    sub-float/2addr v2, v4

    sub-float/2addr v3, v5

    sub-float v6, v2, v4

    sub-float v7, v3, v5

    const/high16 v8, 0x40a00000  # 5.0f

    .line 233
    invoke-static {v8}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v8

    int-to-float v8, v8

    .line 235
    iget-object v9, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {v9, v4, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 237
    sget-object v9, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_ZONE_WIDTH:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v9}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x32

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x5

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 238
    sget-object v11, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_SPEED_ZONE_HEIGHT:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v11}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0x4b

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 239
    sget-object v11, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_BRIGHTNESS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v11}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 240
    sget-object v12, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_VOLUME:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v12}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 241
    sget-object v13, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_SPEED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v13}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 243
    sget-object v14, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_BRIGHTNESS_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 244
    invoke-virtual {v14}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v14

    const v15, -0xb03c09

    .line 243
    invoke-static {v14, v15}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->parseColor(Ljava/lang/String;I)I

    move-result v14

    invoke-direct {v0, v14, v15}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->toPreviewColor(II)I

    move-result v14

    .line 245
    sget-object v15, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_VOLUME_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 246
    invoke-virtual {v15}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v6

    const v6, -0x7e387c

    .line 245
    invoke-static {v15, v6}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->parseColor(Ljava/lang/String;I)I

    move-result v15

    invoke-direct {v0, v15, v6}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->toPreviewColor(II)I

    move-result v6

    .line 247
    sget-object v15, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_SPEED_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 248
    invoke-virtual {v15}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v7

    const/16 v7, -0x6f00

    .line 247
    invoke-static {v15, v7}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->parseColor(Ljava/lang/String;I)I

    move-result v15

    invoke-direct {v0, v15, v7}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->toPreviewColor(II)I

    move-result v7

    const v15, 0x3d75c28f  # 0.06f

    mul-float v15, v15, v16

    const/high16 v18, 0x40000000  # 2.0f

    mul-float v19, v15, v18

    sub-float v16, v16, v19

    move/from16 v19, v11

    int-to-float v11, v9

    mul-float v11, v11, v16

    const/high16 v20, 0x42c80000  # 100.0f

    div-float v11, v11, v20

    mul-float v21, v11, v18

    sub-float v16, v16, v21

    move/from16 v21, v11

    int-to-float v11, v10

    mul-float v11, v11, v17

    div-float v11, v11, v20

    move/from16 v17, v11

    .line 258
    iget-object v11, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 259
    iget-object v11, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->clipPath:Landroid/graphics/Path;

    move/from16 v20, v12

    iget-object v12, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->screenRect:Landroid/graphics/RectF;

    move/from16 v22, v13

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v12, v8, v8, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 260
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 261
    iget-object v11, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 264
    iget-object v11, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fillPaint:Landroid/graphics/Paint;

    iget v12, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->screenBgColor:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    iget-object v11, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->screenRect:Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 268
    iget-object v11, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->zoneRect:Landroid/graphics/RectF;

    add-float v12, v4, v15

    invoke-virtual {v11, v4, v5, v12, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 269
    iget-object v4, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fillPaint:Landroid/graphics/Paint;

    iget v11, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->edgeBgColor:I

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v4, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->zoneRect:Landroid/graphics/RectF;

    iget-object v11, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 273
    iget-object v4, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->zoneRect:Landroid/graphics/RectF;

    sub-float v11, v2, v15

    invoke-virtual {v4, v11, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 274
    iget-object v2, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->zoneRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 277
    iget-object v2, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->zoneRect:Landroid/graphics/RectF;

    add-float v13, v12, v21

    invoke-virtual {v2, v12, v5, v13, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 278
    iget-object v2, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fillPaint:Landroid/graphics/Paint;

    const v4, 0x1affffff

    const/16 v15, 0x55

    if-eqz v19, :cond_127

    invoke-static {v14, v15}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->withAlpha(II)I

    move-result v14

    goto :goto_128

    :cond_127
    move v14, v4

    :goto_128
    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    iget-object v2, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->zoneRect:Landroid/graphics/RectF;

    iget-object v14, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 282
    iget-object v2, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->zoneRect:Landroid/graphics/RectF;

    sub-float v14, v11, v21

    invoke-virtual {v2, v14, v5, v11, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 283
    iget-object v2, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fillPaint:Landroid/graphics/Paint;

    if-eqz v20, :cond_142

    invoke-static {v6, v15}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->withAlpha(II)I

    move-result v6

    goto :goto_143

    :cond_142
    move v6, v4

    :goto_143
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    iget-object v2, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->zoneRect:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 288
    iget-object v2, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->zoneRect:Landroid/graphics/RectF;

    add-float v6, v5, v17

    invoke-virtual {v2, v12, v5, v11, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 289
    iget-object v2, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fillPaint:Landroid/graphics/Paint;

    if-eqz v22, :cond_15c

    invoke-static {v7, v15}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->withAlpha(II)I

    move-result v4

    :cond_15c
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v2, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->zoneRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move v2, v6

    .line 300
    iget-object v6, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->separatorPaint:Landroid/graphics/Paint;

    move v4, v12

    move v7, v5

    move v5, v3

    move v3, v7

    move v7, v2

    move v2, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 301
    iget-object v6, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->separatorPaint:Landroid/graphics/Paint;

    move v4, v11

    move-object/from16 v1, p1

    move v2, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v15, v2

    move v11, v5

    .line 304
    iget-object v6, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->dashPaint:Landroid/graphics/Paint;

    move v4, v13

    move v5, v7

    move v2, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v7, v3

    move v3, v5

    .line 305
    iget-object v6, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->separatorPaint:Landroid/graphics/Paint;

    move v4, v2

    move v5, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 306
    iget-object v6, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->dashPaint:Landroid/graphics/Paint;

    move v4, v14

    move v5, v3

    move v3, v7

    move v2, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v3, v5

    .line 307
    iget-object v6, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->separatorPaint:Landroid/graphics/Paint;

    move v4, v2

    move v5, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 311
    iget-object v6, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->dashPaint:Landroid/graphics/Paint;

    move v5, v3

    move v2, v12

    move v4, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v4

    .line 312
    iget-object v6, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->separatorPaint:Landroid/graphics/Paint;

    move v4, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v13, v2

    move v2, v4

    .line 313
    iget-object v6, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->dashPaint:Landroid/graphics/Paint;

    move v4, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v2, v11, v3

    div-float v2, v2, v18

    add-float v6, v3, v2

    const/high16 v2, 0x40400000  # 3.0f

    .line 318
    invoke-static {v2}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v6, v3

    const/high16 v3, 0x41500000  # 13.0f

    .line 319
    invoke-static {v3}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v6

    const/high16 v5, 0x41b00000  # 22.0f

    .line 320
    invoke-static {v5}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v17, v5

    if-ltz v5, :cond_1d9

    const/4 v5, 0x1

    goto :goto_1da

    :cond_1d9
    const/4 v5, 0x0

    :goto_1da
    if-eqz v5, :cond_1e6

    div-float v11, v17, v18

    add-float/2addr v7, v11

    .line 322
    invoke-static {v2}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v7, v2

    goto :goto_1f1

    :cond_1e6
    div-float v11, v17, v18

    add-float/2addr v7, v11

    .line 323
    iget-object v11, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->namePaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTextSize()F

    move-result v11

    div-float/2addr v11, v2

    add-float/2addr v7, v11

    .line 324
    :goto_1f1
    invoke-static {v3}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v7

    const/high16 v3, 0x41f00000  # 30.0f

    .line 326
    invoke-static {v3}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v21, v3

    const-string v11, "%"

    if-ltz v3, :cond_272

    .line 327
    iget-object v3, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->namePaint:Landroid/graphics/Paint;

    if-eqz v19, :cond_20b

    iget v14, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fgColor:I

    goto :goto_20d

    :cond_20b
    iget v14, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->dimTextColor:I

    :goto_20d
    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    iget-object v3, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->percentPaint:Landroid/graphics/Paint;

    if-eqz v19, :cond_217

    iget v14, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fgColor:I

    goto :goto_219

    :cond_217
    iget v14, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->dimTextColor:I

    :goto_219
    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object v3, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->labelBrightness:Ljava/lang/String;

    div-float v14, v21, v18

    add-float/2addr v12, v14

    move/from16 v17, v5

    iget-object v5, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->namePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v12, v6, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->percentPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v12, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 334
    iget-object v3, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->namePaint:Landroid/graphics/Paint;

    if-eqz v20, :cond_243

    iget v5, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fgColor:I

    goto :goto_245

    :cond_243
    iget v5, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->dimTextColor:I

    :goto_245
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    iget-object v3, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->percentPaint:Landroid/graphics/Paint;

    if-eqz v20, :cond_24f

    iget v5, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fgColor:I

    goto :goto_251

    :cond_24f
    iget v5, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->dimTextColor:I

    :goto_251
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    iget-object v3, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->labelVolume:Ljava/lang/String;

    sub-float v5, v15, v14

    iget-object v12, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->namePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v6, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v12, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->percentPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v4, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_274

    :cond_272
    move/from16 v17, v5

    :goto_274
    const/high16 v3, 0x425c0000  # 55.0f

    .line 342
    invoke-static {v3}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v16, v3

    if-ltz v3, :cond_2d0

    div-float v16, v16, v18

    add-float v13, v13, v16

    if-eqz v22, :cond_288

    .line 346
    iget v3, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->fgColor:I

    goto :goto_28a

    :cond_288
    iget v3, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->dimTextColor:I

    .line 347
    :goto_28a
    iget-object v5, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->namePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    iget-object v5, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->percentPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    iget-object v3, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->labelSpeed:Ljava/lang/String;

    iget-object v5, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->namePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v13, v7, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v17, :cond_2b1

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->percentPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v13, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 355
    :cond_2b1
    iget-object v2, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->labelNative:Ljava/lang/String;

    iget-object v3, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->namePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v13, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v9, v9, 0x2

    rsub-int/lit8 v3, v9, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->percentPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v13, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 359
    :cond_2d0
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 362
    iget-object v2, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->screenRect:Landroid/graphics/RectF;

    iget-object v0, v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v8, v8, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
