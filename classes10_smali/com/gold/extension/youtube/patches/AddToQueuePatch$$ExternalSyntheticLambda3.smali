.class public final synthetic Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->$r8$lambda$RuegRNmDrW6vUlezO2DAyos6Y8o(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
