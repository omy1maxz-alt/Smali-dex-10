.class public final synthetic Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->$r8$lambda$3u9m4IXrVshGTiwul4uRFWX3AK0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
