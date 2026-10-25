.class Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;
.super Ljava/lang/Object;
.source "PlayerOverlayButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginAdjustableContainer"
.end annotation


# instance fields
.field private containerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private lastMarginEnd:I

.field private final resourceName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$PbN1GwXdR9lZRPVyRJq6BBYDiJE(Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->lambda$updateContainerRef$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->containerRef:Ljava/lang/ref/WeakReference;

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->lastMarginEnd:I

    .line 50
    iput-object p1, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->resourceName:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$updateContainerRef$0()Ljava/lang/String;
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find button overlay: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public updateContainerRef(Landroid/view/View;)V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->containerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->lastMarginEnd:I

    .line 65
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    iget-object v1, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->resourceName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_37

    .line 69
    :goto_1e
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 71
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->containerRef:Ljava/lang/ref/WeakReference;

    return-void

    .line 74
    :cond_2c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_37

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_1e

    .line 83
    :cond_37
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->-$$Nest$sfgetskipFirstExceptionLog()Z

    move-result p1

    if-eqz p1, :cond_42

    const/4 p0, 0x0

    .line 84
    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->-$$Nest$sfputskipFirstExceptionLog(Z)V

    return-void

    .line 88
    :cond_42
    new-instance p1, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method public updateMargin(II)V
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->containerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_b

    goto :goto_32

    :cond_b
    int-to-float v1, p2

    .line 101
    invoke-static {p2}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->-$$Nest$smgetButtonWidthPercentage(I)F

    move-result p2

    mul-float/2addr v1, p2

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    .line 104
    iget p2, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->lastMarginEnd:I

    if-ne p2, p1, :cond_19

    goto :goto_32

    .line 105
    :cond_19
    iput p1, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->lastMarginEnd:I

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_32

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 108
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p2

    if-ne p2, p1, :cond_2c

    goto :goto_32

    .line 109
    :cond_2c
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 110
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_32
    :goto_32
    return-void
.end method
