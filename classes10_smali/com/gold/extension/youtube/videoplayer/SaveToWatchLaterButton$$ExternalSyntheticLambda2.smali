.class public final synthetic Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Function;

    iput-boolean p2, p0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Function;

    iget-boolean p0, p0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda2;->f$1:Z

    invoke-static {v0, p0, p1}, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton;->$r8$lambda$xsqK93HKr11oSmqB1Q4NopydHLc(Ljava/util/function/Function;ZLandroid/view/View;)Z

    move-result p0

    return p0
.end method
