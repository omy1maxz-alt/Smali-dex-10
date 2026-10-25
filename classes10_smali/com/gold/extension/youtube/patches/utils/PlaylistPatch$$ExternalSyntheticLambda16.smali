.class public final synthetic Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/content/Context;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;ZZZZ)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$2:Z

    iput-object p4, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$3:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$4:Z

    iput-boolean p6, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$5:Z

    iput-boolean p7, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$6:Z

    iput-boolean p8, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$7:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$2:Z

    iget-object v3, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$3:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$4:Z

    iget-boolean v5, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$5:Z

    iget-boolean v6, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$6:Z

    iget-boolean v7, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;->f$7:Z

    invoke-static/range {v0 .. v7}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->$r8$lambda$obn1B44jTqzb22BSeHAiUNAD8T0(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;ZZZZ)V

    return-void
.end method
