.class public Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;
.super Landroid/app/Dialog;
.source "SheetBottomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/ui/SheetBottomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlideDialog"
.end annotation


# instance fields
.field private animView:Landroid/view/View;

.field private duration:I

.field private isDismissing:Z

.field private final screenHeight:I


# direct methods
.method public static bridge synthetic -$$Nest$fputisDismissing(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->isDismissing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 370
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->isDismissing:Z

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->screenHeight:I

    return-void
.end method

.method public static synthetic access$001(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V
    .registers 1

    .line 360
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 408
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public dismiss()V
    .registers 4

    .line 417
    iget-boolean v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->isDismissing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 418
    iput-boolean v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->isDismissing:Z

    .line 420
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->animView:Landroid/view/View;

    if-nez v0, :cond_13

    .line 421
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->isDismissing:Z

    return-void

    .line 426
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->screenHeight:I

    int-to-float v1, v1

    .line 427
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->duration:I

    int-to-long v1, v1

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog$1;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog$1;-><init>(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    .line 429
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 436
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public setAnimView(Landroid/view/View;)V
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 378
    iput-object p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->animView:Landroid/view/View;

    return-void
.end method

.method public setAnimationDuration(I)V
    .registers 2

    .line 385
    iput p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->duration:I

    return-void
.end method

.method public show()V
    .registers 4

    .line 393
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 394
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->animView:Landroid/view/View;

    if-nez v0, :cond_8

    return-void

    .line 395
    :cond_8
    iget v1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->screenHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 396
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->animView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 397
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->duration:I

    int-to-long v1, p0

    .line 398
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 400
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
