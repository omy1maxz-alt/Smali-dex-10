.class Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;
.super Ljava/lang/Object;
.source "PlayerOverlayButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerOverlayButtonController"
.end annotation


# instance fields
.field private final buttonRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final setBackground:Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$SetViewBackgroundInterface;

.field private sourceBackgroundSnapshot:Landroid/graphics/drawable/Drawable$ConstantState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$f6JygTrdVrYHePLPNUfFNLTW0ZE(Landroid/view/View;Landroid/view/View;)Ljava/lang/String;
    .registers 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Player buttons is null, source: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " button: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lZol98BCEaVL-CSpVCxre19DNbo(Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;->lambda$new$0()Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Landroid/view/View;Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$SetViewBackgroundInterface;)V
    .registers 4

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;->buttonRef:Ljava/lang/ref/WeakReference;

    .line 128
    iput-object p2, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;->setBackground:Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$SetViewBackgroundInterface;

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$SetViewBackgroundInterface;Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;-><init>(Landroid/view/View;Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$SetViewBackgroundInterface;)V

    return-void
.end method

.method private synthetic lambda$new$0()Z
    .registers 1

    .line 131
    invoke-direct {p0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;->updateLayoutFromSourceButton()V

    const/4 p0, 0x1

    return p0
.end method

.method private updateLayoutFromSourceButton()V
    .registers 9

    .line 137
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->-$$Nest$sfgetytSourceButtonRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 138
    iget-object v1, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;->buttonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v0, :cond_104

    if-nez v1, :cond_18

    goto/16 :goto_104

    .line 145
    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 150
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    if-ne v2, v6, :cond_40

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    if-ne v3, v6, :cond_40

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    if-ne v4, v6, :cond_40

    .line 153
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    if-eq v5, v6, :cond_54

    .line 156
    :cond_40
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 157
    sget-boolean v7, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_21_15_OR_GREATER:Z

    if-eqz v7, :cond_4e

    .line 162
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v7, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v6, v7

    .line 164
    :cond_4e
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 174
    :cond_54
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->-$$Nest$sfgetbuttonControllers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->-$$Nest$sfgetHIDE_FULLSCREEN_BUTTON_ENABLED()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v3

    int-to-float v2, v2

    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->-$$Nest$sfgetbuttonControllers()Ljava/util/List;

    move-result-object v4

    .line 176
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->-$$Nest$smgetButtonWidthPercentage(I)F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    mul-float/2addr v2, v4

    sub-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    .line 177
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v3

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_8d

    .line 178
    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 181
    :cond_8d
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    .line 182
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->-$$Nest$sfgetHIDE_FULLSCREEN_BUTTON_ENABLED()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9f

    const v3, 0x47c35000  # 100000.0f

    add-float/2addr v2, v3

    .line 185
    :cond_9f
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_aa

    .line 186
    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 189
    :cond_aa
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_b5

    .line 191
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    goto :goto_b6

    :cond_b5
    const/4 v3, 0x0

    .line 193
    :goto_b6
    iget-object v4, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;->sourceBackgroundSnapshot:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eq v4, v3, :cond_cb

    if-eqz v3, :cond_c4

    .line 200
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 202
    :cond_c4
    iget-object v4, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;->setBackground:Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$SetViewBackgroundInterface;

    invoke-interface {v4, v2}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$SetViewBackgroundInterface;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iput-object v3, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;->sourceBackgroundSnapshot:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 206
    :cond_cb
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p0

    .line 207
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, p0

    if-eqz v2, :cond_da

    .line 208
    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 211
    :cond_da
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    .line 212
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, p0, :cond_e7

    .line 213
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :cond_e7
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->-$$Nest$sfgetbuttonControllers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->-$$Nest$sfgetHIDE_FULLSCREEN_BUTTON_ENABLED()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sub-int/2addr p0, v1

    .line 219
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->-$$Nest$sfgetchapterTitleContainer()Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0, p0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->updateMargin(II)V

    return-void

    .line 140
    :cond_104
    :goto_104
    new-instance p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0, v1}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method
