.class public final synthetic Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Landroid/widget/LinearLayout;

.field public final synthetic f$2:Landroid/view/animation/Animation;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda46;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda46;->f$1:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda46;->f$2:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda46;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda46;->f$1:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda46;->f$2:Landroid/view/animation/Animation;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->$r8$lambda$VFiNq16-sEiI2urrLmuz8ZE-fK0(Landroid/app/Dialog;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V

    return-void
.end method
