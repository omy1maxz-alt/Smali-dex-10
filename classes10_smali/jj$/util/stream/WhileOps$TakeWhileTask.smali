.class final Ljj$/util/stream/WhileOps$TakeWhileTask;
.super Ljj$/util/stream/AbstractShortCircuitTask;
.source "WhileOps.java"


# instance fields
.field private volatile completed:Z

.field private final generator:Ljava/util/function/IntFunction;

.field private final isOrdered:Z

.field private final op:Ljj$/util/stream/AbstractPipeline;

.field private shortCircuited:Z

.field private thisNodeSize:J


# direct methods
.method constructor <init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;)V
    .registers 7

    invoke-direct {p0, p2, p3}, Ljj$/util/stream/AbstractShortCircuitTask;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V

    iput-object p1, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->op:Ljj$/util/stream/AbstractPipeline;

    iput-object p4, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->generator:Ljava/util/function/IntFunction;

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->ORDERED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {p2}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    iput-boolean v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/WhileOps$TakeWhileTask;Ljj$/util/Spliterator;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/AbstractShortCircuitTask;-><init>(Ljj$/util/stream/AbstractShortCircuitTask;Ljj$/util/Spliterator;)V

    iget-object v0, p1, Ljj$/util/stream/WhileOps$TakeWhileTask;->op:Ljj$/util/stream/AbstractPipeline;

    iput-object v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->op:Ljj$/util/stream/AbstractPipeline;

    iget-object v0, p1, Ljj$/util/stream/WhileOps$TakeWhileTask;->generator:Ljava/util/function/IntFunction;

    iput-object v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->generator:Ljava/util/function/IntFunction;

    iget-boolean v0, p1, Ljj$/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    iput-boolean v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    return-void
.end method


# virtual methods
.method protected cancel()V
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/AbstractShortCircuitTask;->cancel()V

    iget-boolean v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->completed:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Ljj$/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/WhileOps$TakeWhileTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$TakeWhileTask;->doLeaf()Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final doLeaf()Ljj$/util/stream/Node;
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->helper:Ljj$/util/stream/PipelineHelper;

    const-wide/16 v1, -0x1

    iget-object v3, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Ljj$/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljj$/util/stream/Node$Builder;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->op:Ljj$/util/stream/AbstractPipeline;

    iget-object v2, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->helper:Ljj$/util/stream/PipelineHelper;

    invoke-virtual {v2}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljj$/util/stream/AbstractPipeline;->opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;

    move-result-object v1

    iget-object v2, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-object v3, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->helper:Ljj$/util/stream/PipelineHelper;

    invoke-virtual {v3, v1}, Ljj$/util/stream/PipelineHelper;->wrapSink(Ljj$/util/stream/Sink;)Ljj$/util/stream/Sink;

    move-result-object v3

    iget-object v4, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v2, v3, v4}, Ljj$/util/stream/PipelineHelper;->copyIntoWithCancel(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Z

    move-result v2

    iput-boolean v2, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$TakeWhileTask;->cancelLaterNodes()V

    :cond_2b
    invoke-interface {v0}, Ljj$/util/stream/Node$Builder;->build()Ljj$/util/stream/Node;

    move-result-object v2

    invoke-interface {v2}, Ljj$/util/stream/Node;->count()J

    move-result-wide v3

    iput-wide v3, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    return-object v2
.end method

.method protected bridge synthetic getEmptyResult()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final getEmptyResult()Ljj$/util/stream/Node;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->op:Ljj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljj$/util/stream/AbstractPipeline;->getOutputShape()Ljj$/util/stream/StreamShape;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Nodes;->emptyNode(Ljj$/util/stream/StreamShape;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/AbstractTask;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/WhileOps$TakeWhileTask;->makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/WhileOps$TakeWhileTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/WhileOps$TakeWhileTask;
    .registers 3

    new-instance v0, Ljj$/util/stream/WhileOps$TakeWhileTask;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/WhileOps$TakeWhileTask;-><init>(Ljj$/util/stream/WhileOps$TakeWhileTask;Ljj$/util/Spliterator;)V

    return-object v0
.end method

.method merge()Ljj$/util/stream/Node;
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Ljj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    iget-object v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Ljj$/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Node;

    return-object v0

    :cond_17
    iget-object v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Ljj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2c

    iget-object v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Ljj$/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Node;

    return-object v0

    :cond_2c
    iget-object v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->op:Ljj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljj$/util/stream/AbstractPipeline;->getOutputShape()Ljj$/util/stream/StreamShape;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v1, Ljj$/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v1}, Ljj$/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/Node;

    iget-object v2, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v2, Ljj$/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v2}, Ljj$/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/util/stream/Node;

    invoke-static {v0, v1, v2}, Ljj$/util/stream/Nodes;->conc(Ljj$/util/stream/StreamShape;Ljj$/util/stream/Node;Ljj$/util/stream/Node;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 6

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$TakeWhileTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v0, v0, Ljj$/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    iget-object v1, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v1, Ljj$/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v1, v1, Ljj$/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    iget-boolean v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->canceled:Z

    if-eqz v0, :cond_26

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Ljj$/util/stream/Node;

    move-result-object v0

    goto :goto_58

    :cond_26
    iget-boolean v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v0, v0, Ljj$/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Ljj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    iput-wide v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    iget-object v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Ljj$/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Node;

    goto :goto_58

    :cond_45
    iget-object v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Ljj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    iget-object v2, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v2, Ljj$/util/stream/WhileOps$TakeWhileTask;

    iget-wide v2, v2, Ljj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$TakeWhileTask;->merge()Ljj$/util/stream/Node;

    move-result-object v0

    :goto_58
    invoke-virtual {p0, v0}, Ljj$/util/stream/WhileOps$TakeWhileTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_5b
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/WhileOps$TakeWhileTask;->completed:Z

    invoke-super {p0, p1}, Ljj$/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
