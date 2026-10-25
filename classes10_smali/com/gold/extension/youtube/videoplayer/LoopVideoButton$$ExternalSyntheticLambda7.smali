.class public final synthetic Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;ILandroid/widget/ImageView;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    iput p2, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda7;->f$2:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    iget v1, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda7;->f$1:I

    iget-object p0, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda7;->f$2:Landroid/widget/ImageView;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->$r8$lambda$Kef8Sz4OjUCMNovfc3nm2LdLKyc(Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;ILandroid/widget/ImageView;)V

    return-void
.end method
