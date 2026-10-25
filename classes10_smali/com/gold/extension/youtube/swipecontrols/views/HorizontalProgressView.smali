.class public final Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;
.super Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;
.source "SwipeControlsOverlayLayout.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final iconSize:F

.field private final padding:F

.field private final progressBarHeight:F

.field private final progressBarWidth:F

.field private textWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;I)V
    .registers 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    invoke-direct/range {p0 .. p9}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;-><init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;I)V

    const/high16 p1, 0x41a00000  # 20.0f

    .line 460
    invoke-static {p1}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->iconSize:F

    const/high16 p1, 0x41400000  # 12.0f

    .line 461
    invoke-static {p1}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->padding:F

    const/high16 p1, 0x40400000  # 3.0f

    .line 463
    invoke-static {p1}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->progressBarHeight:F

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const/high16 p2, 0x40800000  # 4.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->progressBarWidth:F

    .line 467
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 468
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 469
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 470
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getFillBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 24

    move/from16 v0, p10

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move-object v10, v1

    goto :goto_b

    :cond_9
    move-object/from16 v10, p8

    :goto_b
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    move v11, v0

    :goto_11
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    goto :goto_21

    :cond_1e
    move/from16 v11, p9

    goto :goto_11

    .line 438
    :goto_21
    invoke-direct/range {v2 .. v11}, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;-><init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;I)V

    return-void
.end method

.method private final calculateRequiredWidth()F
    .registers 4

    .line 478
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->measureTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->textWidth:F

    .line 480
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->isMinimalStyle()Z

    move-result v0

    .line 483
    iget v1, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->padding:F

    if-nez v0, :cond_24

    .line 481
    iget v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->iconSize:F

    add-float/2addr v0, v1

    add-float/2addr v0, v1

    iget v2, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->progressBarWidth:F

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->textWidth:F

    :goto_21
    add-float/2addr v0, p0

    add-float/2addr v0, v1

    return v0

    .line 483
    :cond_24
    iget v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->iconSize:F

    add-float/2addr v0, v1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->textWidth:F

    goto :goto_21
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    invoke-super/range {p0 .. p1}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    .line 504
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/high16 v9, 0x40000000  # 2.0f

    div-float v6, v5, v9

    .line 507
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->measureTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->textWidth:F

    .line 511
    iget v10, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->padding:F

    .line 512
    iget v2, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->iconSize:F

    add-float v11, v10, v2

    const/high16 v2, 0x3fc00000  # 1.5f

    mul-float/2addr v2, v10

    sub-float v2, v4, v2

    sub-float v12, v2, v1

    const/4 v3, 0x0

    .line 518
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v8

    const/4 v2, 0x0

    move v7, v6

    move-object v1, p1

    .line 516
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 521
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 522
    iget v3, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->iconSize:F

    div-float v4, v3, v9

    sub-float v4, v6, v4

    float-to-int v5, v10

    float-to-int v7, v4

    add-float/2addr v10, v3

    float-to-int v8, v10

    add-float/2addr v4, v3

    float-to-int v3, v4

    .line 523
    invoke-virtual {v2, v5, v7, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 529
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 532
    :cond_53
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    const/high16 v3, 0x40400000  # 3.0f

    div-float/2addr v2, v3

    add-float v10, v6, v2

    .line 533
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 535
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->isMinimalStyle()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 536
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v2, v12, v10, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 538
    :cond_7b
    iget v2, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->padding:F

    add-float/2addr v11, v2

    sub-float v4, v12, v2

    sub-float v13, v4, v11

    const/high16 v2, 0x42480000  # 50.0f

    cmpl-float v2, v13, v2

    if-lez v2, :cond_b1

    .line 543
    iget v2, p0, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->progressBarHeight:F

    div-float/2addr v2, v9

    sub-float v3, v6, v2

    add-float v5, v6, v2

    .line 554
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getFillBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v8

    move v7, v2

    move-object v1, p1

    move v6, v2

    move v2, v11

    .line 547
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 557
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getMaxProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    mul-float/2addr v1, v13

    add-float v4, v2, v1

    .line 565
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object v8

    move v7, v6

    move-object v1, p1

    .line 558
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 569
    :cond_b1
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v2, v12, v10, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 5

    .line 488
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 490
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 491
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 494
    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/views/HorizontalProgressView;->calculateRequiredWidth()F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x64

    .line 495
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 497
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setProgress(IILjava/lang/String;Z)V
    .registers 5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 574
    invoke-super {p0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->setProgress(IILjava/lang/String;Z)V

    .line 575
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
