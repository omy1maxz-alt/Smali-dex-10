.class final Ljj$/util/stream/ReduceOps$ReduceTask;
.super Ljj$/util/stream/AbstractTask;
.source "ReduceOps.java"


# instance fields
.field private final op:Ljj$/util/stream/ReduceOps$ReduceOp;


# direct methods
.method constructor <init>(Ljj$/util/stream/ReduceOps$ReduceOp;Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Ljj$/util/stream/AbstractTask;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V

    iput-object p1, p0, Ljj$/util/stream/ReduceOps$ReduceTask;->op:Ljj$/util/stream/ReduceOps$ReduceOp;

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/ReduceOps$ReduceTask;Ljj$/util/Spliterator;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/AbstractTask;-><init>(Ljj$/util/stream/AbstractTask;Ljj$/util/Spliterator;)V

    iget-object v0, p1, Ljj$/util/stream/ReduceOps$ReduceTask;->op:Ljj$/util/stream/ReduceOps$ReduceOp;

    iput-object v0, p0, Ljj$/util/stream/ReduceOps$ReduceTask;->op:Ljj$/util/stream/ReduceOps$ReduceOp;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$ReduceTask;->doLeaf()Ljj$/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v0

    return-object v0
.end method

.method protected doLeaf()Ljj$/util/stream/ReduceOps$AccumulatingSink;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/ReduceOps$ReduceTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-object v1, p0, Ljj$/util/stream/ReduceOps$ReduceTask;->op:Ljj$/util/stream/ReduceOps$ReduceOp;

    invoke-virtual {v1}, Ljj$/util/stream/ReduceOps$ReduceOp;->makeSink()Ljj$/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v1

    iget-object v2, p0, Ljj$/util/stream/ReduceOps$ReduceTask;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/ReduceOps$AccumulatingSink;

    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/AbstractTask;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/ReduceOps$ReduceTask;->makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/ReduceOps$ReduceTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/ReduceOps$ReduceTask;
    .registers 3

    new-instance v0, Ljj$/util/stream/ReduceOps$ReduceTask;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/ReduceOps$ReduceTask;-><init>(Ljj$/util/stream/ReduceOps$ReduceTask;Ljj$/util/Spliterator;)V

    return-object v0
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 4

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$ReduceTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Ljj$/util/stream/ReduceOps$ReduceTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/ReduceOps$ReduceTask;

    invoke-virtual {v0}, Ljj$/util/stream/ReduceOps$ReduceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/ReduceOps$AccumulatingSink;

    iget-object v1, p0, Ljj$/util/stream/ReduceOps$ReduceTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v1, Ljj$/util/stream/ReduceOps$ReduceTask;

    invoke-virtual {v1}, Ljj$/util/stream/ReduceOps$ReduceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0, v1}, Ljj$/util/stream/ReduceOps$AccumulatingSink;->combine(Ljj$/util/stream/ReduceOps$AccumulatingSink;)V

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReduceOps$ReduceTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_20
    invoke-super {p0, p1}, Ljj$/util/stream/AbstractTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
