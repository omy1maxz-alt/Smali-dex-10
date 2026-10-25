.class final Ljj$/util/stream/SliceOps$SliceTask;
.super Ljj$/util/stream/AbstractShortCircuitTask;
.source "SliceOps.java"


# instance fields
.field private volatile completed:Z

.field private final generator:Ljava/util/function/IntFunction;

.field private final op:Ljj$/util/stream/AbstractPipeline;

.field private final targetOffset:J

.field private final targetSize:J

.field private thisNodeSize:J


# direct methods
.method constructor <init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V
    .registers 9

    invoke-direct {p0, p2, p3}, Ljj$/util/stream/AbstractShortCircuitTask;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V

    iput-object p1, p0, Ljj$/util/stream/SliceOps$SliceTask;->op:Ljj$/util/stream/AbstractPipeline;

    iput-object p4, p0, Ljj$/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    iput-wide p5, p0, Ljj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    iput-wide p7, p0, Ljj$/util/stream/SliceOps$SliceTask;->targetSize:J

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/SliceOps$SliceTask;Ljj$/util/Spliterator;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/AbstractShortCircuitTask;-><init>(Ljj$/util/stream/AbstractShortCircuitTask;Ljj$/util/Spliterator;)V

    iget-object v0, p1, Ljj$/util/stream/SliceOps$SliceTask;->op:Ljj$/util/stream/AbstractPipeline;

    iput-object v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->op:Ljj$/util/stream/AbstractPipeline;

    iget-object v0, p1, Ljj$/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    iput-object v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    iget-wide v0, p1, Ljj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    iput-wide v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v0, p1, Ljj$/util/stream/SliceOps$SliceTask;->targetSize:J

    iput-wide v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->targetSize:J

    return-void
.end method

.method private completedSize(J)J
    .registers 9

    iget-boolean v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide v0

    :cond_7
    iget-object v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/SliceOps$SliceTask;

    iget-object v1, p0, Ljj$/util/stream/SliceOps$SliceTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v1, Ljj$/util/stream/SliceOps$SliceTask;

    if-eqz v0, :cond_24

    if-nez v1, :cond_14

    goto :goto_24

    :cond_14
    invoke-direct {v0, p1, p2}, Ljj$/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_1e

    move-wide v4, v2

    goto :goto_23

    :cond_1e
    invoke-direct {v1, p1, p2}, Ljj$/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    :goto_23
    return-wide v4

    :cond_24
    :goto_24
    iget-wide v2, p0, Ljj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide v2
.end method

.method private doTruncate(Ljj$/util/stream/Node;)Ljj$/util/stream/Node;
    .registers 10

    iget-wide v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->targetSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_16

    invoke-interface {p1}, Ljj$/util/stream/Node;->count()J

    move-result-wide v0

    iget-wide v2, p0, Ljj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v4, p0, Ljj$/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_18

    :cond_16
    iget-wide v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    :goto_18
    move-wide v5, v0

    iget-wide v3, p0, Ljj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-object v7, p0, Ljj$/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Ljj$/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method

.method private isLeftCompleted(J)Z
    .registers 11

    iget-boolean v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    goto :goto_b

    :cond_7
    invoke-direct {p0, p1, p2}, Ljj$/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v0

    :goto_b
    const/4 v2, 0x1

    cmp-long v3, v0, p1

    if-ltz v3, :cond_11

    return v2

    :cond_11
    invoke-virtual {p0}, Ljj$/util/stream/SliceOps$SliceTask;->getParent()Ljj$/util/stream/AbstractTask;

    move-result-object v3

    check-cast v3, Ljj$/util/stream/SliceOps$SliceTask;

    move-object v4, p0

    :goto_18
    if-eqz v3, :cond_37

    iget-object v5, v3, Ljj$/util/stream/SliceOps$SliceTask;->rightChild:Ljj$/util/stream/AbstractTask;

    if-ne v4, v5, :cond_2e

    iget-object v5, v3, Ljj$/util/stream/SliceOps$SliceTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v5, Ljj$/util/stream/SliceOps$SliceTask;

    if-eqz v5, :cond_2e

    invoke-direct {v5, p1, p2}, Ljj$/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    cmp-long v6, v0, p1

    if-ltz v6, :cond_2e

    return v2

    :cond_2e
    move-object v4, v3

    invoke-virtual {v3}, Ljj$/util/stream/SliceOps$SliceTask;->getParent()Ljj$/util/stream/AbstractTask;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljj$/util/stream/SliceOps$SliceTask;

    goto :goto_18

    :cond_37
    cmp-long v3, v0, p1

    if-ltz v3, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    return v2
.end method


# virtual methods
.method protected cancel()V
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/AbstractShortCircuitTask;->cancel()V

    iget-boolean v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljj$/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljj$/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/SliceOps$SliceTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/SliceOps$SliceTask;->doLeaf()Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final doLeaf()Ljj$/util/stream/Node;
    .registers 8

    invoke-virtual {p0}, Ljj$/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_45

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SIZED:Ljj$/util/stream/StreamOpFlag;

    iget-object v3, p0, Ljj$/util/stream/SliceOps$SliceTask;->op:Ljj$/util/stream/AbstractPipeline;

    iget v3, v3, Ljj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v0, v3}, Ljj$/util/stream/StreamOpFlag;->isPreserved(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->op:Ljj$/util/stream/AbstractPipeline;

    iget-object v1, p0, Ljj$/util/stream/SliceOps$SliceTask;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v0, v1}, Ljj$/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v1

    goto :goto_1e

    :cond_1d
    nop

    :goto_1e
    nop

    iget-object v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->op:Ljj$/util/stream/AbstractPipeline;

    iget-object v3, p0, Ljj$/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Ljj$/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljj$/util/stream/Node$Builder;

    move-result-object v0

    iget-object v3, p0, Ljj$/util/stream/SliceOps$SliceTask;->op:Ljj$/util/stream/AbstractPipeline;

    iget-object v4, p0, Ljj$/util/stream/SliceOps$SliceTask;->helper:Ljj$/util/stream/PipelineHelper;

    invoke-virtual {v4}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Ljj$/util/stream/AbstractPipeline;->opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;

    move-result-object v3

    iget-object v4, p0, Ljj$/util/stream/SliceOps$SliceTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-object v5, p0, Ljj$/util/stream/SliceOps$SliceTask;->helper:Ljj$/util/stream/PipelineHelper;

    invoke-virtual {v5, v3}, Ljj$/util/stream/PipelineHelper;->wrapSink(Ljj$/util/stream/Sink;)Ljj$/util/stream/Sink;

    move-result-object v5

    iget-object v6, p0, Ljj$/util/stream/SliceOps$SliceTask;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v4, v5, v6}, Ljj$/util/stream/PipelineHelper;->copyIntoWithCancel(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Z

    invoke-interface {v0}, Ljj$/util/stream/Node$Builder;->build()Ljj$/util/stream/Node;

    move-result-object v4

    return-object v4

    :cond_45
    iget-object v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->op:Ljj$/util/stream/AbstractPipeline;

    iget-object v3, p0, Ljj$/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Ljj$/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljj$/util/stream/Node$Builder;

    move-result-object v0

    iget-wide v1, p0, Ljj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_6f

    iget-object v1, p0, Ljj$/util/stream/SliceOps$SliceTask;->op:Ljj$/util/stream/AbstractPipeline;

    iget-object v2, p0, Ljj$/util/stream/SliceOps$SliceTask;->helper:Ljj$/util/stream/PipelineHelper;

    invoke-virtual {v2}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljj$/util/stream/AbstractPipeline;->opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;

    move-result-object v1

    iget-object v2, p0, Ljj$/util/stream/SliceOps$SliceTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-object v3, p0, Ljj$/util/stream/SliceOps$SliceTask;->helper:Ljj$/util/stream/PipelineHelper;

    invoke-virtual {v3, v1}, Ljj$/util/stream/PipelineHelper;->wrapSink(Ljj$/util/stream/Sink;)Ljj$/util/stream/Sink;

    move-result-object v3

    iget-object v4, p0, Ljj$/util/stream/SliceOps$SliceTask;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v2, v3, v4}, Ljj$/util/stream/PipelineHelper;->copyIntoWithCancel(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Z

    goto :goto_76

    :cond_6f
    iget-object v1, p0, Ljj$/util/stream/SliceOps$SliceTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-object v2, p0, Ljj$/util/stream/SliceOps$SliceTask;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v1, v0, v2}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    :goto_76
    invoke-interface {v0}, Ljj$/util/stream/Node$Builder;->build()Ljj$/util/stream/Node;

    move-result-object v1

    invoke-interface {v1}, Ljj$/util/stream/Node;->count()J

    move-result-wide v2

    iput-wide v2, p0, Ljj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljj$/util/stream/SliceOps$SliceTask;->completed:Z

    const/4 v2, 0x0

    iput-object v2, p0, Ljj$/util/stream/SliceOps$SliceTask;->spliterator:Ljj$/util/Spliterator;

    return-object v1
.end method

.method protected bridge synthetic getEmptyResult()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final getEmptyResult()Ljj$/util/stream/Node;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->op:Ljj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljj$/util/stream/AbstractPipeline;->getOutputShape()Ljj$/util/stream/StreamShape;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Nodes;->emptyNode(Ljj$/util/stream/StreamShape;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/AbstractTask;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/SliceOps$SliceTask;->makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/SliceOps$SliceTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/SliceOps$SliceTask;
    .registers 3

    new-instance v0, Ljj$/util/stream/SliceOps$SliceTask;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/SliceOps$SliceTask;-><init>(Ljj$/util/stream/SliceOps$SliceTask;Ljj$/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 9

    invoke-virtual {p0}, Ljj$/util/stream/SliceOps$SliceTask;->isLeaf()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_72

    iget-object v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/SliceOps$SliceTask;

    iget-wide v3, v0, Ljj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    iget-object v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/SliceOps$SliceTask;

    iget-wide v5, v0, Ljj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    iget-boolean v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->canceled:Z

    if-eqz v0, :cond_22

    iput-wide v1, p0, Ljj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    invoke-virtual {p0}, Ljj$/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljj$/util/stream/Node;

    move-result-object v0

    goto :goto_60

    :cond_22
    iget-wide v3, p0, Ljj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Ljj$/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljj$/util/stream/Node;

    move-result-object v0

    goto :goto_60

    :cond_2d
    iget-object v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/SliceOps$SliceTask;

    iget-wide v3, v0, Ljj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_42

    iget-object v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/SliceOps$SliceTask;

    invoke-virtual {v0}, Ljj$/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Node;

    goto :goto_60

    :cond_42
    iget-object v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->op:Ljj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljj$/util/stream/AbstractPipeline;->getOutputShape()Ljj$/util/stream/StreamShape;

    move-result-object v0

    iget-object v3, p0, Ljj$/util/stream/SliceOps$SliceTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v3, Ljj$/util/stream/SliceOps$SliceTask;

    invoke-virtual {v3}, Ljj$/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/util/stream/Node;

    iget-object v4, p0, Ljj$/util/stream/SliceOps$SliceTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v4, Ljj$/util/stream/SliceOps$SliceTask;

    invoke-virtual {v4}, Ljj$/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj$/util/stream/Node;

    invoke-static {v0, v3, v4}, Ljj$/util/stream/Nodes;->conc(Ljj$/util/stream/StreamShape;Ljj$/util/stream/Node;Ljj$/util/stream/Node;)Ljj$/util/stream/Node;

    move-result-object v0

    :goto_60
    invoke-virtual {p0}, Ljj$/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-direct {p0, v0}, Ljj$/util/stream/SliceOps$SliceTask;->doTruncate(Ljj$/util/stream/Node;)Ljj$/util/stream/Node;

    move-result-object v3

    goto :goto_6c

    :cond_6b
    move-object v3, v0

    :goto_6c
    invoke-virtual {p0, v3}, Ljj$/util/stream/SliceOps$SliceTask;->setLocalResult(Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Ljj$/util/stream/SliceOps$SliceTask;->completed:Z

    :cond_72
    iget-wide v3, p0, Ljj$/util/stream/SliceOps$SliceTask;->targetSize:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_8c

    invoke-virtual {p0}, Ljj$/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v0

    if-nez v0, :cond_8c

    iget-wide v0, p0, Ljj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v2, p0, Ljj$/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljj$/util/stream/SliceOps$SliceTask;->isLeftCompleted(J)Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-virtual {p0}, Ljj$/util/stream/SliceOps$SliceTask;->cancelLaterNodes()V

    :cond_8c
    invoke-super {p0, p1}, Ljj$/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
