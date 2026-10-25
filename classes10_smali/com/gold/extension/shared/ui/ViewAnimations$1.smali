.class Lcom/gold/extension/shared/ui/ViewAnimations$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewAnimations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/shared/ui/ViewAnimations;->fadeOut(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/gold/extension/shared/ui/ViewAnimations$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 44
    iget-object p0, p0, Lcom/gold/extension/shared/ui/ViewAnimations$1;->val$view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 38
    iget-object p1, p0, Lcom/gold/extension/shared/ui/ViewAnimations$1;->val$view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lcom/gold/extension/shared/ui/ViewAnimations$1;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 40
    iget-object p0, p0, Lcom/gold/extension/shared/ui/ViewAnimations$1;->val$view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
