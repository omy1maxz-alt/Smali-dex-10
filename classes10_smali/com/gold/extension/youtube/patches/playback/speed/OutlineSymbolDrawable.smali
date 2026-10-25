.class Lcom/gold/extension/youtube/patches/playback/speed/OutlineSymbolDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CustomPlaybackSpeedPatch.java"


# instance fields
.field private final isPlus:Z

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 560
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 561
    iput-boolean p1, p0, Lcom/gold/extension/youtube/patches/playback/speed/OutlineSymbolDrawable;->isPlus:Z

    .line 562
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/playback/speed/OutlineSymbolDrawable;->paint:Landroid/graphics/Paint;

    .line 563
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 564
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 565
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 566
    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result p0

    if-eqz p0, :cond_28

    sget p0, Lcom/gold/extension/shared/ui/Dim;->dp2:I

    :goto_26
    int-to-float p0, p0

    goto :goto_2b

    :cond_28
    sget p0, Lcom/gold/extension/shared/ui/Dim;->dp1:I

    goto :goto_26

    :goto_2b
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 571
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 573
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v2, v1

    const/high16 v3, 0x40000000  # 2.0f

    div-float v5, v2, v3

    int-to-float v2, v0

    div-float v8, v2, v3

    .line 576
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e800000  # 0.25f

    mul-float/2addr v0, v1

    sub-float v7, v5, v0

    add-float v9, v5, v0

    .line 579
    iget-object v11, p0, Lcom/gold/extension/youtube/patches/playback/speed/OutlineSymbolDrawable;->paint:Landroid/graphics/Paint;

    move v10, v8

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v4, v6

    .line 580
    iget-boolean p1, p0, Lcom/gold/extension/youtube/patches/playback/speed/OutlineSymbolDrawable;->isPlus:Z

    if-eqz p1, :cond_35

    sub-float v6, v8, v0

    add-float/2addr v8, v0

    .line 582
    iget-object v9, p0, Lcom/gold/extension/youtube/patches/playback/speed/OutlineSymbolDrawable;->paint:Landroid/graphics/Paint;

    move v7, v5

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_35
    return-void
.end method

.method public getOpacity()I
    .registers 1

    .line 0
    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .registers 2

    .line 588
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/playback/speed/OutlineSymbolDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 593
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/playback/speed/OutlineSymbolDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
