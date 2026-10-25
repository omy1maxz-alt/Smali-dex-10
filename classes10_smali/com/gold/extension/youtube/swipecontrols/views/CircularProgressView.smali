.class public final Lcom/gold/extension/youtube/swipecontrols/views/CircularProgressView;
.super Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;
.source "SwipeControlsOverlayLayout.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;I)V
    .registers 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    invoke-direct/range {p0 .. p9}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;-><init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;I)V

    .line 384
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/CircularProgressView;->rectF:Landroid/graphics/RectF;

    .line 387
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/high16 p2, 0x40c00000  # 6.0f

    invoke-static {p2}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 388
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getFillBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-static {p2}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 389
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 390
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getFillBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 391
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 392
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

    .line 363
    :goto_21
    invoke-direct/range {v2 .. v11}, Lcom/gold/extension/youtube/swipecontrols/views/CircularProgressView;-><init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    invoke-super {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40c00000  # 6.0f

    .line 399
    invoke-static {v1}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result v1

    .line 400
    iget-object v2, p0, Lcom/gold/extension/youtube/swipecontrols/views/CircularProgressView;->rectF:Landroid/graphics/RectF;

    sub-float v3, v0, v1

    invoke-virtual {v2, v1, v1, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 402
    iget-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/views/CircularProgressView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getFillBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v4, 0x40400000  # 3.0f

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 406
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getMaxProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000  # 360.0f

    mul-float v6, v0, v1

    .line 407
    iget-object v4, p0, Lcom/gold/extension/youtube/swipecontrols/views/CircularProgressView;->rectF:Landroid/graphics/RectF;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object v8

    const/high16 v5, -0x3d4c0000  # -90.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 410
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_9f

    .line 411
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->isMinimalStyle()Z

    move-result v0

    const/high16 v1, 0x41c00000  # 24.0f

    if-eqz v0, :cond_6e

    const/high16 v0, 0x42100000  # 36.0f

    goto :goto_6f

    :cond_6e
    move v0, v1

    :goto_6f
    invoke-static {v0}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result v0

    float-to-int v0, v0

    .line 412
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    .line 413
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->isMinimalStyle()Z

    move-result v5

    if-eqz v5, :cond_89

    .line 414
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    goto :goto_96

    .line 416
    :cond_89
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v1}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result v1

    float-to-int v1, v1

    sub-int v1, v5, v1

    :goto_96
    add-int v5, v4, v0

    add-int/2addr v0, v1

    .line 418
    invoke-virtual {p1, v4, v1, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 419
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 423
    :cond_9f
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->isMinimalStyle()Z

    move-result p1

    if-nez p1, :cond_c3

    .line 424
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/high16 v2, 0x41a00000  # 20.0f

    invoke-static {v2}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {v3, p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_c3
    return-void
.end method

.method public setProgress(IILjava/lang/String;Z)V
    .registers 5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    invoke-super {p0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->setProgress(IILjava/lang/String;Z)V

    .line 430
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
