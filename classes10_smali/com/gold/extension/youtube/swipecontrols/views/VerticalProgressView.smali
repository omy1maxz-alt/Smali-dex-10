.class public final Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;I)V
    .registers 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    invoke-direct/range {p0 .. p9}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;-><init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;I)V

    const/high16 p1, 0x41a00000  # 20.0f

    .line 605
    invoke-static {p1}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->iconSize:F

    const/high16 p1, 0x41400000  # 12.0f

    .line 606
    invoke-static {p1}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->padding:F

    const/high16 p1, 0x40400000  # 3.0f

    .line 607
    invoke-static {p1}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result p2

    iput p2, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->progressBarWidth:F

    .line 608
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    div-float/2addr p2, p1

    iput p2, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->progressBarHeight:F

    .line 611
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 612
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 613
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 614
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

    .line 583
    :goto_21
    invoke-direct/range {v2 .. v11}, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;-><init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;I)V

    return-void
.end method

.method private final calculateRequiredHeight()F
    .registers 4

    .line 622
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->isMinimalStyle()Z

    move-result v0

    .line 625
    iget v1, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->padding:F

    if-nez v0, :cond_1d

    .line 623
    iget v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->iconSize:F

    add-float/2addr v0, v1

    add-float/2addr v0, v1

    iget v2, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->progressBarHeight:F

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->padding:F

    :goto_1b
    add-float/2addr v0, p0

    return v0

    .line 625
    :cond_1d
    iget v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->iconSize:F

    add-float/2addr v0, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->padding:F

    goto :goto_1b
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    invoke-super/range {p0 .. p1}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 644
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    .line 645
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/high16 v9, 0x40000000  # 2.0f

    div-float v6, v4, v9

    .line 649
    iget v10, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->padding:F

    .line 650
    iget v1, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->iconSize:F

    add-float v11, v10, v1

    sub-float v1, v5, v10

    .line 652
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    div-float/2addr v2, v9

    sub-float v12, v1, v2

    const/4 v3, 0x0

    .line 656
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v8

    const/4 v2, 0x0

    move v7, v6

    move-object v1, p1

    .line 654
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move v13, v6

    .line 659
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 660
    iget v3, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->iconSize:F

    div-float v4, v3, v9

    sub-float v6, v13, v4

    float-to-int v4, v6

    float-to-int v5, v10

    add-float/2addr v6, v3

    float-to-int v6, v6

    add-float/2addr v10, v3

    float-to-int v3, v10

    .line 661
    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 667
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 671
    :cond_4b
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 673
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->isMinimalStyle()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 674
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v2, v13, v12, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 676
    :cond_66
    iget v2, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->padding:F

    add-float v3, v11, v2

    .line 677
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    sub-float v2, v12, v2

    iget v4, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->padding:F

    sub-float v5, v2, v4

    sub-float v10, v5, v3

    const/high16 v2, 0x42480000  # 50.0f

    cmpl-float v2, v10, v2

    if-lez v2, :cond_a7

    .line 681
    iget v2, p0, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->progressBarWidth:F

    div-float v6, v2, v9

    sub-float v2, v13, v6

    add-float v4, v13, v6

    .line 692
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getFillBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v8

    move v7, v6

    move-object v1, p1

    .line 685
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 695
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getMaxProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v1, v10

    sub-float v3, v5, v1

    .line 703
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object v8

    move-object v1, p1

    .line 696
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 706
    :cond_a7
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v2, v13, v12, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 5

    .line 630
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 632
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 633
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 635
    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/views/VerticalProgressView;->calculateRequiredHeight()F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x64

    .line 636
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 638
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setProgress(IILjava/lang/String;Z)V
    .registers 5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 711
    invoke-super {p0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->setProgress(IILjava/lang/String;Z)V

    .line 712
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
