.class public final synthetic Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Function;

    iput-boolean p2, p0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Function;

    iget-boolean p0, p0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, p0, p1}, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton;->$r8$lambda$-7AGKpbajYpNFh2iOD3E9Gno2-E(Ljava/util/function/Function;ZLandroid/view/View;)V

    return-void
.end method
