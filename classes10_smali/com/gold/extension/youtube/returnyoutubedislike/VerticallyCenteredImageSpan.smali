.class Lcom/gold/extension/youtube/returnyoutubedislike/VerticallyCenteredImageSpan;
.super Landroid/text/style/ImageSpan;
.source "ReturnYouTubeDislike.java"


# instance fields
.field final useOriginalWidth:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    .line 692
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 693
    iput-boolean p2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/VerticallyCenteredImageSpan;->useOriginalWidth:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 11
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 722
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p6

    .line 723
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 724
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p8

    .line 725
    iget v0, p8, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p8, p8, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int p8, v0, p8

    add-int/2addr p7, v0

    .line 726
    div-int/lit8 p8, p8, 0x2

    sub-int/2addr p7, p8

    .line 727
    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p8

    .line 729
    iget-boolean p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/VerticallyCenteredImageSpan;->useOriginalWidth:Z

    if-eqz p0, :cond_2c

    .line 731
    invoke-virtual {p9, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    iget p2, p8, Landroid/graphics/Rect;->right:I

    iget p3, p8, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    sub-float/2addr p0, p2

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr p0, p2

    add-float/2addr p5, p0

    .line 733
    :cond_2c
    iget p0, p8, Landroid/graphics/Rect;->bottom:I

    iget p2, p8, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p7, p0

    int-to-float p0, p7

    .line 734
    invoke-virtual {p1, p5, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 735
    invoke-virtual {p6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 736
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 11
    .param p1  # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 699
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p5, :cond_28

    .line 702
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 703
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v1

    .line 704
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 705
    div-int/lit8 v3, v3, 0x2

    .line 706
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v2, v1, v3

    .line 708
    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 709
    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v3

    .line 710
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 711
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 713
    :cond_28
    iget-boolean p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/VerticallyCenteredImageSpan;->useOriginalWidth:Z

    if-eqz p0, :cond_32

    .line 714
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    float-to-int p0, p0

    return p0

    .line 716
    :cond_32
    iget p0, v0, Landroid/graphics/Rect;->right:I

    return p0
.end method
