.class public final synthetic Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda9;->f$0:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$$ExternalSyntheticLambda9;->f$0:Ljava/util/function/Function;

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch;->$r8$lambda$afvPWp3aub_Gcgk5yrnU6b9Eny8(Ljava/util/function/Function;Landroid/view/View;)V

    return-void
.end method
