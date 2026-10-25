.class public final synthetic Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->$r8$lambda$TembxqEcyF-V9H3Iwf00lsEPYqs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
