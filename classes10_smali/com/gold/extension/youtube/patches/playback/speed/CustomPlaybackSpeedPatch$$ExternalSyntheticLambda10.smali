.class public final synthetic Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;F)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda10;->f$0:Ljava/util/function/Function;

    iput p2, p0, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda10;->f$1:F

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda10;->f$0:Ljava/util/function/Function;

    iget p0, p0, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda10;->f$1:F

    invoke-static {v0, p0, p1}, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch;->$r8$lambda$wPlOYrPPdCkjXGBuj0_ukfQTrSY(Ljava/util/function/Function;FLandroid/view/View;)V

    return-void
.end method
