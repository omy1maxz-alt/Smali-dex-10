.class public final synthetic Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda8;->f$0:Z

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda8;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-boolean v0, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda8;->f$0:Z

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda8;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->$r8$lambda$p3x3aLtIjHyZWfIfwRnMkay_aEU(ZLjava/lang/String;Z)V

    return-void
.end method
