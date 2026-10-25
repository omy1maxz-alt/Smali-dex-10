.class public final synthetic Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;J)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda3;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda3;->f$1:Landroid/widget/EditText;

    iput-wide p3, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda3;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda3;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda3;->f$1:Landroid/widget/EditText;

    iget-wide v2, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda3;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->$r8$lambda$YBXwVRbw0dUWXLpWA9A2Ce8BYiY(Landroid/widget/EditText;Landroid/widget/EditText;J)V

    return-void
.end method
