.class public final Lcom/gold/extension/shared/ui/ViewAnimations;
.super Ljava/lang/Object;
.source "ViewAnimations.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;J)V
    .registers 5

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    return-void

    .line 21
    :cond_18
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;J)V
    .registers 5

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/gold/extension/shared/ui/ViewAnimations$1;

    invoke-direct {p2, p0}, Lcom/gold/extension/shared/ui/ViewAnimations$1;-><init>(Landroid/view/View;)V

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
