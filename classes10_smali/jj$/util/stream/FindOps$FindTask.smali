.class final Ljj$/util/stream/FindOps$FindTask;
.super Ljj$/util/stream/AbstractShortCircuitTask;
.source "FindOps.java"


# instance fields
.field private final mustFindFirst:Z

.field private final op:Ljj$/util/stream/FindOps$FindOp;


# direct methods
.method constructor <init>(Ljj$/util/stream/FindOps$FindOp;ZLjj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V
    .registers 5

    invoke-direct {p0, p3, p4}, Ljj$/util/stream/AbstractShortCircuitTask;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V

    iput-boolean p2, p0, Ljj$/util/stream/FindOps$FindTask;->mustFindFirst:Z

    iput-object p1, p0, Ljj$/util/stream/FindOps$FindTask;->op:Ljj$/util/stream/FindOps$FindOp;

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/FindOps$FindTask;Ljj$/util/Spliterator;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/AbstractShortCircuitTask;-><init>(Ljj$/util/stream/AbstractShortCircuitTask;Ljj$/util/Spliterator;)V

    iget-boolean v0, p1, Ljj$/util/stream/FindOps$FindTask;->mustFindFirst:Z

    iput-boolean v0, p0, Ljj$/util/stream/FindOps$FindTask;->mustFindFirst:Z

    iget-object v0, p1, Ljj$/util/stream/FindOps$FindTask;->op:Ljj$/util/stream/FindOps$FindOp;

    iput-object v0, p0, Ljj$/util/stream/FindOps$FindTask;->op:Ljj$/util/stream/FindOps$FindOp;

    return-void
.end method

.method private foundResult(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/FindOps$FindTask;->isLeftmostNode()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Ljj$/util/stream/FindOps$FindTask;->shortCircuit(Ljava/lang/Object;)V

    goto :goto_d

    :cond_a
    invoke-virtual {p0}, Ljj$/util/stream/FindOps$FindTask;->cancelLaterNodes()V

    :goto_d
    return-void
.end method


# virtual methods
.method protected doLeaf()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/FindOps$FindTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-object v1, p0, Ljj$/util/stream/FindOps$FindTask;->op:Ljj$/util/stream/FindOps$FindOp;

    iget-object v1, v1, Ljj$/util/stream/FindOps$FindOp;->sinkSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/TerminalSink;

    iget-object v2, p0, Ljj$/util/stream/FindOps$FindTask;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/TerminalSink;

    invoke-interface {v0}, Ljj$/util/stream/TerminalSink;->get()Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Ljj$/util/stream/FindOps$FindTask;->mustFindFirst:Z

    const/4 v2, 0x0

    if-nez v1, :cond_23

    if-eqz v0, :cond_22

    invoke-virtual {p0, v0}, Ljj$/util/stream/FindOps$FindTask;->shortCircuit(Ljava/lang/Object;)V

    :cond_22
    return-object v2

    :cond_23
    if-eqz v0, :cond_29

    invoke-direct {p0, v0}, Ljj$/util/stream/FindOps$FindTask;->foundResult(Ljava/lang/Object;)V

    return-object v0

    :cond_29
    return-object v2
.end method

.method protected getEmptyResult()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/FindOps$FindTask;->op:Ljj$/util/stream/FindOps$FindOp;

    iget-object v0, v0, Ljj$/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/AbstractTask;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/FindOps$FindTask;->makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/FindOps$FindTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/FindOps$FindTask;
    .registers 3

    new-instance v0, Ljj$/util/stream/FindOps$FindTask;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/FindOps$FindTask;-><init>(Ljj$/util/stream/FindOps$FindTask;Ljj$/util/Spliterator;)V

    return-object v0
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 6

    iget-boolean v0, p0, Ljj$/util/stream/FindOps$FindTask;->mustFindFirst:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Ljj$/util/stream/FindOps$FindTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/FindOps$FindTask;

    const/4 v1, 0x0

    :goto_9
    if-eq v0, v1, :cond_29

    invoke-virtual {v0}, Ljj$/util/stream/FindOps$FindTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v3, p0, Ljj$/util/stream/FindOps$FindTask;->op:Ljj$/util/stream/FindOps$FindOp;

    iget-object v3, v3, Ljj$/util/stream/FindOps$FindOp;->presentPredicate:Ljava/util/function/Predicate;

    invoke-interface {v3, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {p0, v2}, Ljj$/util/stream/FindOps$FindTask;->setLocalResult(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Ljj$/util/stream/FindOps$FindTask;->foundResult(Ljava/lang/Object;)V

    goto :goto_29

    :cond_22
    move-object v1, v0

    iget-object v2, p0, Ljj$/util/stream/FindOps$FindTask;->rightChild:Ljj$/util/stream/AbstractTask;

    move-object v0, v2

    check-cast v0, Ljj$/util/stream/FindOps$FindTask;

    goto :goto_9

    :cond_29
    :goto_29
    invoke-super {p0, p1}, Ljj$/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
