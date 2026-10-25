.class Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$1;
.super Ljava/lang/Object;
.source "SegmentPlaybackController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->showAutoSkipToast(Ljava/lang/String;Landroid/util/Range;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 975
    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 978
    iget-object p1, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 979
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_d
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .line 0
    return-void
.end method
