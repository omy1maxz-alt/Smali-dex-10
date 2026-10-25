.class public Lcom/gold/extension/shared/ui/SheetBottomDialog;
.super Ljava/lang/Object;
.source "SheetBottomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;,
        Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$ijg7953yYKiCTnugy6KUotBtXKQ(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Landroid/view/View;)V
    .registers 2

    .line 82
    invoke-virtual {p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->cancel()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMainLayout(Landroid/content/Context;Ljava/lang/Integer;)Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;
    .registers 11
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 117
    new-instance v0, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    sget v4, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 v7, 0x41400000  # 12.0f

    .line 125
    invoke-static {v7}, Lcom/gold/extension/shared/ui/Dim;->roundedCorners(F)[F

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    if-eqz p1, :cond_31

    .line 126
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_35

    :cond_31
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getDialogBackgroundColor()I

    move-result p1

    .line 127
    :goto_35
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 134
    invoke-virtual {v6, v5, v4, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 135
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x51

    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 137
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 v4, 0x40800000  # 4.0f

    .line 139
    invoke-static {v4}, Lcom/gold/extension/shared/ui/Dim;->roundedCorners(F)[F

    move-result-object v4

    invoke-direct {v3, v4, v8, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {p0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 140
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, 0x3f666666  # 0.9f

    const/high16 v5, 0x3fa00000  # 1.25f

    invoke-static {p1, v4, v5}, Lcom/gold/extension/shared/Utils;->adjustColorBrightness(IFF)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/gold/extension/shared/ui/Dim;->dp40:I

    sget v4, Lcom/gold/extension/shared/ui/Dim;->dp4:I

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {v2, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static createSlideDialog(Landroid/content/Context;Landroid/view/View;I)Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;
    .registers 9
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    new-instance v0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 70
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    new-instance v3, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;

    invoke-direct {v3, p0, p2}, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;-><init>(Landroid/content/Context;I)V

    .line 75
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    invoke-virtual {v3, v0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;->setDialog(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    .line 79
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    sget v5, Lcom/gold/extension/shared/ui/Dim;->dp40:I

    invoke-direct {p0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_48

    .line 87
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 88
    :cond_48
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_62

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    const/16 v1, 0x50

    const/16 v2, 0x64

    .line 96
    invoke-static {p0, v1, p1, v2, p1}, Lcom/gold/extension/shared/Utils;->setDialogWindowParameters(Landroid/view/Window;IIIZ)V

    .line 99
    :cond_62
    invoke-virtual {v0, v3}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->setAnimView(Landroid/view/View;)V

    .line 100
    invoke-virtual {v0, p2}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->setAnimationDuration(I)V

    return-object v0
.end method
