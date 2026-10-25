.class public final synthetic Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic f$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda1;->f$0:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda1;->f$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch;->$r8$lambda$82q-LEBql7cF2CBtUfxiVk8WJyo(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method
