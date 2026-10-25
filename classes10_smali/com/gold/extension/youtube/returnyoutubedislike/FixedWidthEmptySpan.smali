.class Lcom/gold/extension/youtube/returnyoutubedislike/FixedWidthEmptySpan;
.super Landroid/text/style/ReplacementSpan;
.source "ReturnYouTubeDislike.java"


# instance fields
.field final fixedWidth:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 664
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 665
    iput p1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/FixedWidthEmptySpan;->fixedWidth:I

    if-ltz p1, :cond_8

    return-void

    .line 666
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 10
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 6
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

    .line 671
    iget p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/FixedWidthEmptySpan;->fixedWidth:I

    return p0
.end method
