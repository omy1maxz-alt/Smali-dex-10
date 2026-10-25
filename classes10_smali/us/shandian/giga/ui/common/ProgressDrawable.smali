.class public Lus/shandian/giga/ui/common/ProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressDrawable.java"


# instance fields
.field private mBackgroundColor:I

.field private mForegroundColor:I

.field private mMarqueeHandler:Landroid/os/Handler;

.field private mMarqueeLine:Landroid/graphics/Path;

.field private mMarqueeNext:J

.field private mMarqueeProgress:F

.field private mMarqueeSize:I

.field private mProgress:F


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    const/4 v0, 0x0

    iput v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeNext:J

    return-void
.end method

.method private setupMarquee(II)V
    .registers 5

    int-to-float p1, p1

    const/high16 v0, 0x41200000  # 10.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x42c80000  # 100.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    iget-object p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    iget-object p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    iget v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    neg-int v1, v0

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    iget v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    neg-int v1, v0

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iget v2, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mBackgroundColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v0

    int-to-float v10, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, v9

    move v6, v10

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mForegroundColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    if-eqz v2, :cond_97

    iget v2, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_36

    invoke-direct {p0, v0, v1}, Lus/shandian/giga/ui/common/ProgressDrawable;->setupMarquee(II)V

    :cond_36
    iget v1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iget v3, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mForegroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    int-to-float v4, v1

    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_59

    iput v5, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    goto :goto_5c

    :cond_59
    add-float/2addr v3, v5

    iput v3, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    :goto_5c
    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v0, v3

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    neg-int v4, v1

    :goto_65
    if-ge v4, v0, :cond_73

    iget-object v5, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    int-to-float v6, v4

    iget v7, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    add-int/2addr v4, v1

    goto :goto_65

    :cond_73
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeNext:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_96

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    iput-wide v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeNext:J

    iget-object p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeHandler:Landroid/os/Handler;

    new-instance v0, Lus/shandian/giga/ui/common/ProgressDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lus/shandian/giga/ui/common/ProgressDrawable$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/common/ProgressDrawable;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_96
    return-void

    :cond_97
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mProgress:F

    mul-float v0, v0, v9

    float-to-int v0, v0

    int-to-float v5, v0

    move-object v2, p1

    move v6, v10

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lus/shandian/giga/ui/common/ProgressDrawable;->setupMarquee(II)V

    :cond_f
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setColors(II)V
    .registers 3

    iput p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mBackgroundColor:I

    iput p2, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mForegroundColor:I

    return-void
.end method

.method public setMarquee(Z)V
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-ne p1, v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    if-eqz p1, :cond_14

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    goto :goto_15

    :cond_14
    move-object v2, v0

    :goto_15
    iput-object v2, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    if-eqz p1, :cond_22

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_22
    iput-object v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeHandler:Landroid/os/Handler;

    iput v1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeNext:J

    return-void
.end method

.method public setProgress(D)V
    .registers 3

    double-to-float p1, p1

    iput p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mProgress:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
