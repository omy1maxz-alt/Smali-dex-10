.class public final synthetic Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(JF)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda2;->f$0:J

    iput p3, p0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda2;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda2;->f$0:J

    iget p0, p0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda2;->f$1:F

    invoke-static {v0, v1, p0}, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch;->$r8$lambda$tpLnKEJQpgxQNU2mWp9ifgG06XM(JF)V

    return-void
.end method
