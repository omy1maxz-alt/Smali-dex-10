.class public final synthetic Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda5;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda5;->f$0:Landroid/view/View;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->$r8$lambda$ECPMcQ_dVfq0kZNH3Rkjt0l7qx4(Landroid/view/View;)V

    return-void
.end method
