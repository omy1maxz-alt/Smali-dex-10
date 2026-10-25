.class public final synthetic Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda18;->f$0:Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda18;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda18;->f$0:Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda18;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->$r8$lambda$ZOlyiUMCJQlAfFNkMtxs1meS7po(Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;Landroid/content/Context;)V

    return-void
.end method
