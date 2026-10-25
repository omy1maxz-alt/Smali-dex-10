.class public final synthetic Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->$r8$lambda$Dpu3--y8XkP8P4JC1f9Kx1lFrBk(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
