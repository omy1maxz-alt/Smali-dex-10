.class public Lcom/gold/extension/shared/ui/ColorDot;
.super Ljava/lang/Object;
.source "ColorDot.java"


# static fields
.field private static final STROKE_WIDTH:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x3fc00000  # 1.5f

    .line 32
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/ColorDot;->STROKE_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyColorDot(Landroid/view/View;IZ)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    if-nez p0, :cond_3

    goto :goto_24

    .line 70
    :cond_3
    invoke-static {p1}, Lcom/gold/extension/shared/ui/ColorDot;->createColorDotDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_f

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_11

    :cond_f
    const/high16 p1, 0x3f000000  # 0.5f

    .line 71
    :goto_11
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 72
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result p1

    if-nez p1, :cond_24

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 74
    sget p1, Lcom/gold/extension/shared/ui/Dim;->dp2:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    :cond_24
    :goto_24
    return-void
.end method

.method public static createColorDotDrawable(I)Landroid/graphics/drawable/GradientDrawable;
    .registers 8
    .param p0  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 39
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result v0

    .line 40
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    const/high16 v4, -0x1000000

    or-int/2addr v4, p0

    .line 42
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppBackgroundColor()I

    move-result v5

    if-nez v1, :cond_1d

    if-ne v4, v5, :cond_1b

    goto :goto_1d

    :cond_1b
    move v0, v3

    goto :goto_32

    :cond_1d
    :goto_1d
    if-eqz v1, :cond_20

    move v4, v5

    :cond_20
    if-eqz v0, :cond_26

    const v0, 0x3f99999a  # 1.2f

    goto :goto_29

    :cond_26
    const v0, 0x3f4ccccd  # 0.8f

    .line 49
    :goto_29
    invoke-static {v4, v0}, Lcom/gold/extension/shared/Utils;->adjustColorBrightness(IF)I

    move-result v3

    .line 50
    sget v0, Lcom/gold/extension/shared/ui/ColorDot;->STROKE_WIDTH:I

    move v6, v3

    move v3, v0

    move v0, v6

    .line 57
    :goto_32
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 58
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 59
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 60
    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v1
.end method
