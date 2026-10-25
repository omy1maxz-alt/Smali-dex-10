.class public final synthetic Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iget-object p0, p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;->$r8$lambda$f6JygTrdVrYHePLPNUfFNLTW0ZE(Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
