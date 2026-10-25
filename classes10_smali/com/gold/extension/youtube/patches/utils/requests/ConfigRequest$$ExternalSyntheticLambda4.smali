.class public final synthetic Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->$r8$lambda$k_50ZQ_J7yrsOQK52ACbr1_TIlE(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
