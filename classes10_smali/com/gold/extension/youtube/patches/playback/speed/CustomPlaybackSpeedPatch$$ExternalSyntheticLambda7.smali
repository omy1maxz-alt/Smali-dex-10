.class public final synthetic Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Landroid/widget/SeekBar;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/SeekBar;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda7;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda7;->f$1:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda7;->f$0:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda7;->f$1:Landroid/widget/SeekBar;

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, p0, p1}, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch;->$r8$lambda$H224zS5s5_V31CJ2ynQC7-Dg_TA(Landroid/widget/TextView;Landroid/widget/SeekBar;Ljava/lang/Float;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
