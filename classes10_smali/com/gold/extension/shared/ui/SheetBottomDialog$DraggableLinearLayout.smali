.class public Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SheetBottomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/ui/SheetBottomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DraggableLinearLayout"
.end annotation


# static fields
.field private static final DISMISS_HEIGHT_FRACTION:F = 0.5f

.field private static final MIN_FLING_VELOCITY:I = 0x320


# instance fields
.field private final animationDuration:I

.field private dialog:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

.field private dismissThreshold:F

.field private dragOffset:F

.field private initialTouchRawY:F

.field private isDragEnabled:Z

.field private isDragging:Z

.field private final scroller:Landroid/widget/Scroller;

.field private final settleRunnable:Ljava/lang/Runnable;

.field private final velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic $r8$lambda$8QNIsczImScsb0se7q1t0xwqtHM(Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->runSettleAnimation()V

    return-void
.end method

.method public static synthetic $r8$lambda$oTUDCiMWjequiDmomzQccUX-wvs(Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, v0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 192
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 193
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->scroller:Landroid/widget/Scroller;

    .line 194
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 195
    iput p2, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->animationDuration:I

    .line 196
    new-instance p1, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;)V

    iput-object p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->settleRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 198
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    const/4 p1, 0x0

    .line 201
    iput-boolean p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->isDragEnabled:Z

    .line 202
    new-instance p1, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;)V

    add-int/lit8 p2, p2, 0x32

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private canChildScrollUp()Z
    .registers 2

    .line 332
    invoke-direct {p0, p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->findScrollableChild(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, -0x1

    .line 333
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private findScrollableChild(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 343
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 344
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    .line 345
    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v1

    .line 346
    :cond_13
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_20

    .line 347
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->findScrollableChild(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_20

    return-object v1

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->isDragEnabled:Z

    return-void
.end method

.method private runSettleAnimation()V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 312
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->dragOffset:F

    .line 313
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 315
    iget v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->dragOffset:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2d

    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->dialog:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    if-eqz v0, :cond_2d

    .line 316
    invoke-virtual {v0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->dismiss()V

    .line 317
    iget-object p0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->scroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void

    .line 319
    :cond_2d
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->settleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 322
    :cond_33
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->dragOffset:F

    return-void
.end method

.method private startDismissAnimation()V
    .registers 7

    .line 292
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->dragOffset:F

    float-to-int v2, v1

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->dragOffset:F

    float-to-int v3, v3

    sub-int v4, v1, v3

    iget v5, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->animationDuration:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 292
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 294
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->settleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startReturnAnimation()V
    .registers 7

    .line 301
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->dragOffset:F

    float-to-int v2, v1

    float-to-int v1, v1

    neg-int v4, v1

    iget v5, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->animationDuration:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 303
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->settleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 227
    iget-boolean v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->isDragEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 229
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_32

    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    goto :goto_54

    .line 241
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->initialTouchRawY:F

    sub-float/2addr p1, v0

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_54

    .line 243
    invoke-direct {p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->canChildScrollUp()Z

    move-result p1

    if-nez p1, :cond_54

    .line 244
    iput-boolean v2, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->isDragging:Z

    return v2

    .line 231
    :cond_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->initialTouchRawY:F

    .line 232
    iput-boolean v1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->isDragging:Z

    .line 233
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 234
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->settleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 235
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 236
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->dragOffset:F

    :cond_54
    :goto_54
    return v1
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p2

    const/high16 p2, 0x3f000000  # 0.5f

    mul-float/2addr p1, p2

    .line 218
    iput p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->dismissThreshold:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 259
    iget-boolean v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->isDragEnabled:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 260
    :cond_9
    iget-object v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1c

    const/4 p1, 0x3

    if-eq v0, p1, :cond_32

    return v1

    .line 264
    :cond_1c
    iget-boolean v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->isDragging:Z

    if-eqz v0, :cond_31

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->initialTouchRawY:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    .line 266
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->dragOffset:F

    .line 267
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_31
    return v1

    .line 273
    :cond_32
    iget-object p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 274
    iget-object p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    .line 276
    iget v0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->dragOffset:F

    iget v2, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->dismissThreshold:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_52

    const/high16 v0, 0x44480000  # 800.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4e

    goto :goto_52

    .line 279
    :cond_4e
    invoke-direct {p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->startReturnAnimation()V

    goto :goto_55

    .line 277
    :cond_52
    :goto_52
    invoke-direct {p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->startDismissAnimation()V

    :goto_55
    const/4 p1, 0x0

    .line 281
    iput-boolean p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->isDragging:Z

    return v1
.end method

.method public setDialog(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V
    .registers 2
    .param p1  # Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    iput-object p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->dialog:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    return-void
.end method
