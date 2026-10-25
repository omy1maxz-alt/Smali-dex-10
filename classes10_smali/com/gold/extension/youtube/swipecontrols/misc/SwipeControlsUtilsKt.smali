.class public final Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsUtilsKt;
.super Ljava/lang/Object;
.source "SwipeControlsUtils.kt"


# direct methods
.method public static final applyDimension(ILandroid/content/Context;I)I
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float p0, p0

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 20
    invoke-static {p2, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    .line 24
    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public static final clamp(FFF)F
    .registers 4

    .line 0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    return p1

    :cond_5
    cmpl-float p1, p0, p2

    if-lez p1, :cond_a

    return p2

    :cond_a
    return p0
.end method

.method public static final clamp(III)I
    .registers 3

    .line 0
    if-ge p0, p1, :cond_3

    return p1

    :cond_3
    if-le p0, p2, :cond_6

    return p2

    :cond_6
    return p0
.end method
