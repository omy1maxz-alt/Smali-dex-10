.class public Lcom/gold/extension/youtube/patches/QuickActionsMarginPatch;
.super Ljava/lang/Object;
.source "QuickActionsMarginPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setQuickActionsMargin(Landroid/view/View;)V
    .registers 4

    .line 23
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->QUICK_ACTIONS_TOP_MARGIN:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2c

    .line 28
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2c

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    int-to-float v0, v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2c
    :goto_2c
    return-void
.end method
