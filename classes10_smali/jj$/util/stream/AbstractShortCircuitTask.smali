.class abstract Ljj$/util/stream/AbstractShortCircuitTask;
.super Ljj$/util/stream/AbstractTask;
.source "AbstractShortCircuitTask.java"


# instance fields
.field protected volatile canceled:Z

.field protected final sharedResult:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method protected constructor <init>(Ljj$/util/stream/AbstractShortCircuitTask;Ljj$/util/Spliterator;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/AbstractTask;-><init>(Ljj$/util/stream/AbstractTask;Ljj$/util/Spliterator;)V

    iget-object v0, p1, Ljj$/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v0, p0, Ljj$/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method protected constructor <init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/AbstractTask;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljj$/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method protected cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/AbstractShortCircuitTask;->canceled:Z

    return-void
.end method

.method protected cancelLaterNodes()V
    .registers 5

    invoke-virtual {p0}, Ljj$/util/stream/AbstractShortCircuitTask;->getParent()Ljj$/util/stream/AbstractTask;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/AbstractShortCircuitTask;

    move-object v1, p0

    :goto_7
    if-eqz v0, :cond_21

    iget-object v2, v0, Ljj$/util/stream/AbstractShortCircuitTask;->leftChild:Ljj$/util/stream/AbstractTask;

    if-ne v2, v1, :cond_18

    iget-object v2, v0, Ljj$/util/stream/AbstractShortCircuitTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v2, Ljj$/util/stream/AbstractShortCircuitTask;

    iget-boolean v3, v2, Ljj$/util/stream/AbstractShortCircuitTask;->canceled:Z

    if-nez v3, :cond_18

    invoke-virtual {v2}, Ljj$/util/stream/AbstractShortCircuitTask;->cancel()V

    :cond_18
    move-object v1, v0

    invoke-virtual {v0}, Ljj$/util/stream/AbstractShortCircuitTask;->getParent()Ljj$/util/stream/AbstractTask;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljj$/util/stream/AbstractShortCircuitTask;

    goto :goto_7

    :cond_21
    return-void
.end method

.method public compute()V
    .registers 14

    iget-object v0, p0, Ljj$/util/stream/AbstractShortCircuitTask;->spliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljj$/util/stream/AbstractShortCircuitTask;->getTargetSize(J)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v6, p0

    iget-object v7, p0, Ljj$/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_e
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    if-nez v8, :cond_59

    invoke-virtual {v6}, Ljj$/util/stream/AbstractShortCircuitTask;->taskCanceled()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-virtual {v6}, Ljj$/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    move-result-object v9

    goto :goto_59

    :cond_20
    cmp-long v8, v1, v3

    if-lez v8, :cond_54

    invoke-interface {v0}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v8

    move-object v10, v8

    if-nez v8, :cond_2c

    goto :goto_54

    :cond_2c
    invoke-virtual {v6, v10}, Ljj$/util/stream/AbstractShortCircuitTask;->makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/AbstractTask;

    move-result-object v8

    check-cast v8, Ljj$/util/stream/AbstractShortCircuitTask;

    move-object v11, v8

    iput-object v8, v6, Ljj$/util/stream/AbstractShortCircuitTask;->leftChild:Ljj$/util/stream/AbstractTask;

    invoke-virtual {v6, v0}, Ljj$/util/stream/AbstractShortCircuitTask;->makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/AbstractTask;

    move-result-object v8

    check-cast v8, Ljj$/util/stream/AbstractShortCircuitTask;

    move-object v12, v8

    iput-object v8, v6, Ljj$/util/stream/AbstractShortCircuitTask;->rightChild:Ljj$/util/stream/AbstractTask;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljj$/util/stream/AbstractShortCircuitTask;->setPendingCount(I)V

    if-eqz v5, :cond_49

    const/4 v5, 0x0

    move-object v0, v10

    move-object v6, v11

    move-object v8, v12

    goto :goto_4c

    :cond_49
    const/4 v5, 0x1

    move-object v6, v12

    move-object v8, v11

    :goto_4c
    invoke-virtual {v8}, Ljj$/util/stream/AbstractShortCircuitTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    goto :goto_e

    :cond_54
    :goto_54
    invoke-virtual {v6}, Ljj$/util/stream/AbstractShortCircuitTask;->doLeaf()Ljava/lang/Object;

    move-result-object v9

    nop

    :cond_59
    :goto_59
    invoke-virtual {v6, v9}, Ljj$/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljj$/util/stream/AbstractShortCircuitTask;->tryComplete()V

    return-void
.end method

.method protected abstract getEmptyResult()Ljava/lang/Object;
.end method

.method public getLocalResult()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/AbstractShortCircuitTask;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljj$/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Ljj$/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    move-result-object v1

    goto :goto_14

    :cond_13
    move-object v1, v0

    :goto_14
    return-object v1

    :cond_15
    invoke-super {p0}, Ljj$/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected setLocalResult(Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Ljj$/util/stream/AbstractShortCircuitTask;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_12

    iget-object v0, p0, Ljj$/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_12

    :cond_f
    invoke-super {p0, p1}, Ljj$/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_12
    :goto_12
    return-void
.end method

.method protected shortCircuit(Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Ljj$/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method protected taskCanceled()Z
    .registers 4

    iget-boolean v0, p0, Ljj$/util/stream/AbstractShortCircuitTask;->canceled:Z

    if-nez v0, :cond_18

    invoke-virtual {p0}, Ljj$/util/stream/AbstractShortCircuitTask;->getParent()Ljj$/util/stream/AbstractTask;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/AbstractShortCircuitTask;

    :goto_a
    if-nez v0, :cond_18

    if-eqz v1, :cond_18

    iget-boolean v0, v1, Ljj$/util/stream/AbstractShortCircuitTask;->canceled:Z

    invoke-virtual {v1}, Ljj$/util/stream/AbstractShortCircuitTask;->getParent()Ljj$/util/stream/AbstractTask;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljj$/util/stream/AbstractShortCircuitTask;

    goto :goto_a

    :cond_18
    return v0
.end method
