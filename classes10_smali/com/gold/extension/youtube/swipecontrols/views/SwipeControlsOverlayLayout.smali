.class public final Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;
.super Landroid/widget/RelativeLayout;
.source "SwipeControlsOverlayLayout.kt"

# interfaces
.implements Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsOverlay;


# instance fields
.field private final autoBrightnessIcon:Landroid/graphics/drawable/Drawable;

.field private final circularProgressView:Lcom/gold/extension/youtube/swipecontrols/views/CircularProgressView;

.field private final config:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

.field private final feedbackHideCallback:Ljava/lang/Runnable;

.field private final feedbackHideHandler:Landroid/os/Handler;

.field private final fullBrightnessIcon:Landroid/graphics/drawable/Drawable;

.field private final fullVolumeIcon:Landroid/graphics/drawable/Drawable;

.field private final highBrightnessIcon:Landroid/graphics/drawable/Drawable;

.field private final horizontalProgressView:Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;

.field private final lowBrightnessIcon:Landroid/graphics/drawable/Drawable;

.field private final lowVolumeIcon:Landroid/graphics/drawable/Drawable;

.field private final mediumBrightnessIcon:Landroid/graphics/drawable/Drawable;

.field private final mutedVolumeIcon:Landroid/graphics/drawable/Drawable;

.field private final normalVolumeIcon:Landroid/graphics/drawable/Drawable;

.field private final speedFormatter:Ljava/text/DecimalFormat;

.field private final speedIcon:Landroid/graphics/drawable/Drawable;

.field private final verticalBrightnessProgressView:Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;

.field private final verticalVolumeProgressView:Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;


# direct methods
.method public static $r8$lambda$ufwmL4Uu8g34h8VFOISCUfDQDm0(Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;)V
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->circularProgressView:Lcom/gold/extension/youtube/swipecontrols/views/CircularProgressView;

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->fadeOut(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->horizontalProgressView:Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->fadeOut(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->verticalBrightnessProgressView:Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->fadeOut(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->verticalVolumeProgressView:Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->fadeOut(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    new-instance v0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    invoke-direct {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;-><init>(Landroid/content/Context;Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;)V
    .registers 30

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-direct/range {p0 .. p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v1, p2

    .line 44
    iput-object v1, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->config:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    .line 49
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2}, Ljava/text/DecimalFormat;-><init>()V

    .line 50
    new-instance v3, Ljava/text/DecimalFormatSymbols;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    const/4 v3, 0x1

    .line 51
    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    const/4 v3, 0x2

    .line 52
    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 49
    iput-object v2, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->speedFormatter:Ljava/text/DecimalFormat;

    .line 56
    const-string v2, "youtube_ic_sc_brightness_auto"

    invoke-direct {v0, v2}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->autoBrightnessIcon:Landroid/graphics/drawable/Drawable;

    .line 57
    const-string v2, "youtube_ic_sc_brightness_low"

    invoke-direct {v0, v2}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->lowBrightnessIcon:Landroid/graphics/drawable/Drawable;

    .line 58
    const-string v2, "youtube_ic_sc_brightness_medium"

    invoke-direct {v0, v2}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->mediumBrightnessIcon:Landroid/graphics/drawable/Drawable;

    .line 59
    const-string v2, "youtube_ic_sc_brightness_high"

    invoke-direct {v0, v2}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->highBrightnessIcon:Landroid/graphics/drawable/Drawable;

    .line 60
    const-string v2, "youtube_ic_sc_brightness_full"

    invoke-direct {v0, v2}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->fullBrightnessIcon:Landroid/graphics/drawable/Drawable;

    .line 61
    const-string v2, "youtube_ic_sc_volume_mute"

    invoke-direct {v0, v2}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->mutedVolumeIcon:Landroid/graphics/drawable/Drawable;

    .line 62
    const-string v2, "youtube_ic_sc_volume_low"

    invoke-direct {v0, v2}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->lowVolumeIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    const-string v2, "youtube_ic_sc_volume_normal"

    invoke-direct {v0, v2}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->normalVolumeIcon:Landroid/graphics/drawable/Drawable;

    .line 64
    const-string v2, "youtube_ic_sc_volume_high"

    invoke-direct {v0, v2}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->fullVolumeIcon:Landroid/graphics/drawable/Drawable;

    .line 65
    const-string v2, "youtube_ic_sc_speed"

    invoke-direct {v0, v2}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->speedIcon:Landroid/graphics/drawable/Drawable;

    .line 86
    new-instance v3, Lcom/gold/extension/youtube/swipecontrols/views/CircularProgressView;

    .line 88
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayBackgroundOpacity()I

    move-result v5

    .line 89
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayStyle()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isMinimal()Z

    move-result v6

    .line 90
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayBrightnessProgressColor()I

    move-result v7

    .line 91
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayFillBackgroundPaint()I

    move-result v8

    .line 92
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayTextColor()I

    move-result v9

    .line 93
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayTextSize()I

    move-result v10

    const/16 v13, 0x180

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p1

    .line 86
    invoke-direct/range {v3 .. v14}, Lcom/gold/extension/youtube/swipecontrols/views/CircularProgressView;-><init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x42c80000  # 100.0f

    invoke-static {v4}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    const/4 v5, -0x1

    .line 96
    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 95
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    .line 98
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iput-object v3, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->circularProgressView:Lcom/gold/extension/youtube/swipecontrols/views/CircularProgressView;

    .line 100
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x4

    .line 104
    div-int/lit8 v3, v3, 0x5

    .line 105
    new-instance v15, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;

    .line 107
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayBackgroundOpacity()I

    move-result v17

    .line 108
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayStyle()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isMinimal()Z

    move-result v18

    .line 109
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayBrightnessProgressColor()I

    move-result v19

    .line 110
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayFillBackgroundPaint()I

    move-result v20

    .line 111
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayTextColor()I

    move-result v21

    .line 112
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayTextSize()I

    move-result v22

    const/16 v25, 0x180

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, p1

    .line 105
    invoke-direct/range {v15 .. v26}, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;-><init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x42000000  # 32.0f

    invoke-static {v5}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    .line 115
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayStyle()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isHorizontalMinimalCenter()Z

    move-result v3

    const/16 v5, 0xf

    if-eqz v3, :cond_11e

    .line 117
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_127

    :cond_11e
    const/high16 v3, 0x41a00000  # 20.0f

    .line 119
    invoke-static {v3}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 114
    :goto_127
    invoke-virtual {v15, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iput-object v15, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->horizontalProgressView:Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;

    .line 124
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    new-instance v15, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;

    .line 129
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayBackgroundOpacity()I

    move-result v17

    .line 130
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayStyle()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isMinimal()Z

    move-result v18

    .line 131
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayBrightnessProgressColor()I

    move-result v19

    .line 132
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayFillBackgroundPaint()I

    move-result v20

    .line 133
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayTextColor()I

    move-result v21

    .line 134
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayTextSize()I

    move-result v22

    const/16 v25, 0x180

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, p1

    .line 127
    invoke-direct/range {v15 .. v26}, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;-><init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 136
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x42200000  # 40.0f

    invoke-static {v4}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result v6

    float-to-int v6, v6

    const/high16 v7, 0x43160000  # 150.0f

    invoke-static {v7}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v3, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xb

    .line 137
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 138
    invoke-static {v4}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result v6

    float-to-int v6, v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 139
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    invoke-virtual {v15, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iput-object v15, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->verticalBrightnessProgressView:Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;

    .line 143
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    new-instance v15, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;

    .line 148
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayBackgroundOpacity()I

    move-result v17

    .line 149
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayStyle()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isMinimal()Z

    move-result v18

    .line 150
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayVolumeProgressColor()I

    move-result v19

    .line 151
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayFillBackgroundPaint()I

    move-result v20

    .line 152
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayTextColor()I

    move-result v21

    .line 153
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayTextSize()I

    move-result v22

    .line 146
    invoke-direct/range {v15 .. v26}, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;-><init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 155
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v4}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v7}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v1, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    .line 156
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    invoke-static {v4}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 158
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    invoke-virtual {v15, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iput-object v15, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->verticalVolumeProgressView:Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;

    .line 162
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->feedbackHideHandler:Landroid/os/Handler;

    .line 170
    new-instance v1, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->feedbackHideCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private final fadeIn(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final fadeOut(Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0x64

    .line 166
    invoke-static {p1, v0, v1}, Lcom/gold/extension/shared/ui/ViewAnimations;->fadeOut(Landroid/view/View;J)V

    return-void
.end method

.method private static synthetic getCircularProgressView$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method private final getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    invoke-static {v1, v2, p1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Landroid/content/Context;Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p1

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 69
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 73
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->config:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayTextColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object p1
.end method

.method private final showFeedbackView(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Z)V
    .registers 10

    .line 181
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->feedbackHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->feedbackHideCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->feedbackHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->feedbackHideCallback:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->config:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    invoke-virtual {v2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayShowTimeoutMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->config:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayStyle()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isCircular()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->circularProgressView:Lcom/gold/extension/youtube/swipecontrols/views/CircularProgressView;

    goto :goto_39

    .line 186
    :cond_23
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->config:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayStyle()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_37

    if-eqz p5, :cond_34

    .line 188
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->verticalBrightnessProgressView:Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;

    goto :goto_39

    .line 190
    :cond_34
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->verticalVolumeProgressView:Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;

    goto :goto_39

    .line 191
    :cond_37
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->horizontalProgressView:Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;

    .line 195
    :goto_39
    instance-of v1, v0, Lcom/gold/extension/youtube/swipecontrols/views/CircularProgressView;

    if-nez v1, :cond_41

    instance-of v1, v0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;

    if-eqz v1, :cond_51

    .line 200
    :cond_41
    iget-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->config:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    if-eqz p5, :cond_4a

    .line 198
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayBrightnessProgressColor()I

    move-result v1

    goto :goto_4e

    .line 200
    :cond_4a
    invoke-virtual {v1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayVolumeProgressColor()I

    move-result v1

    .line 196
    :goto_4e
    invoke-virtual {v0, v1}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->setProgressColor(I)V

    .line 203
    :cond_51
    invoke-virtual {v0, p2, p3, p1, p5}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->setProgress(IILjava/lang/String;Z)V

    .line 204
    invoke-virtual {v0, p4}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->fadeIn(Landroid/view/View;)V

    return-void
.end method

.method private final showSpeedFeedbackView(F)V
    .registers 7

    .line 214
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->feedbackHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->feedbackHideCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->feedbackHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->feedbackHideCallback:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->config:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    invoke-virtual {v2}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayShowTimeoutMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->speedFormatter:Ljava/text/DecimalFormat;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3e800000  # 0.25f

    sub-float/2addr p1, v1

    const/high16 v1, 0x40f80000  # 7.75f

    div-float/2addr p1, v1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const/16 v1, 0x64

    .line 218
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 220
    iget-object v3, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->config:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    invoke-virtual {v3}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayStyle()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isCircular()Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->circularProgressView:Lcom/gold/extension/youtube/swipecontrols/views/CircularProgressView;

    goto :goto_44

    :cond_42
    iget-object v3, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->horizontalProgressView:Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;

    .line 222
    :goto_44
    iget-object v4, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->config:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    invoke-virtual {v4}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlaySpeedProgressColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->setProgressColor(I)V

    .line 223
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, p1, v1, v0, v2}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->setProgress(IILjava/lang/String;Z)V

    .line 224
    iget-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->speedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-direct {p0, v3}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->fadeIn(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBrightnessChanged(D)V
    .registers 15

    .line 243
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->config:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getShouldLowestValueEnableAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_33

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_33

    .line 244
    iget-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->config:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayStyle()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isVertical()Z

    move-result p1

    if-eqz p1, :cond_1e

    const-string p1, "А"

    :goto_1c
    move-object v1, p1

    goto :goto_28

    .line 245
    :cond_1e
    const-string p1, "youtube_swipe_lowest_value_enable_auto_brightness_overlay_text"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1c

    .line 246
    :goto_28
    iget-object v4, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->autoBrightnessIcon:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->showFeedbackView(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Z)V

    return-void

    :cond_33
    move-object v0, p0

    .line 248
    invoke-static {p1, p2}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/4 p1, 0x0

    .line 249
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/16 p0, 0x19

    if-ge v8, p0, :cond_46

    .line 251
    iget-object p0, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->lowBrightnessIcon:Landroid/graphics/drawable/Drawable;

    :goto_44
    move-object v10, p0

    goto :goto_57

    :cond_46
    const/16 p0, 0x32

    if-ge v8, p0, :cond_4d

    .line 252
    iget-object p0, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->mediumBrightnessIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_44

    :cond_4d
    const/16 p0, 0x4b

    if-ge v8, p0, :cond_54

    .line 253
    iget-object p0, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->highBrightnessIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_44

    .line 254
    :cond_54
    iget-object p0, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->fullBrightnessIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_44

    .line 256
    :goto_57
    iget-object p0, v0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->config:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getOverlayStyle()Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isVertical()Z

    move-result p0

    if-eqz p0, :cond_69

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_67
    move-object v7, p0

    goto :goto_7b

    :cond_69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_67

    :goto_7b
    const/16 v9, 0x64

    const/4 v11, 0x1

    move-object v6, v0

    .line 257
    invoke-direct/range {v6 .. v11}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->showFeedbackView(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public onEnterSwipeSession()V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->config:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->getShouldEnableHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 270
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_d
    return-void
.end method

.method public onSpeedChanged(F)V
    .registers 2

    .line 263
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->showSpeedFeedbackView(F)V

    return-void
.end method

.method public onVolumeChanged(II)V
    .registers 10

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float/2addr v0, v1

    if-nez p1, :cond_c

    .line 233
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->mutedVolumeIcon:Landroid/graphics/drawable/Drawable;

    :goto_a
    move-object v5, v0

    goto :goto_21

    :cond_c
    const/high16 v1, 0x41c80000  # 25.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_15

    .line 234
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->lowVolumeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    :cond_15
    const/high16 v1, 0x42480000  # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1e

    .line 235
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->normalVolumeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    .line 236
    :cond_1e
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->fullVolumeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    .line 238
    :goto_21
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayout;->showFeedbackView(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Z)V

    return-void
.end method
