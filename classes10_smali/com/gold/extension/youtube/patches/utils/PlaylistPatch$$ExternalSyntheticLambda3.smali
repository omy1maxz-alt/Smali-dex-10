.class public final synthetic Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:[Lkotlin/Pair;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;[Lkotlin/Pair;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda3;->f$1:[Lkotlin/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda3;->f$1:[Lkotlin/Pair;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->$r8$lambda$u4Jc4FU8RoaP16n6rd-c5MsAlq4(Landroid/content/Context;[Lkotlin/Pair;)V

    return-void
.end method
