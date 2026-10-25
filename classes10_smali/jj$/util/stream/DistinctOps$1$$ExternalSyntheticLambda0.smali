.class public final synthetic Ljj$/util/stream/DistinctOps$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Ljj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljj$/util/concurrent/ConcurrentHashMap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/DistinctOps$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Ljj$/util/stream/DistinctOps$1$$ExternalSyntheticLambda0;->f$1:Ljj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/DistinctOps$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Ljj$/util/stream/DistinctOps$1$$ExternalSyntheticLambda0;->f$1:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1, p1}, Ljj$/util/stream/DistinctOps$1;->lambda$opEvaluateParallel$0(Ljava/util/concurrent/atomic/AtomicBoolean;Ljj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
