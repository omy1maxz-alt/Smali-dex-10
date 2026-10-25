.class final Ljj$/util/stream/WhileOps$DropWhileTask;
.super Ljj$/util/stream/AbstractTask;
.source "WhileOps.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final generator:Ljava/util/function/IntFunction;

.field private index:J

.field private final isOrdered:Z

.field private final op:Ljj$/util/stream/AbstractPipeline;

.field private thisNodeSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/util/stream/WhileOps;

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;)V
    .registers 7

    invoke-direct {p0, p2, p3}, Ljj$/util/stream/AbstractTask;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V

    nop

    iput-object p1, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->op:Ljj$/util/stream/AbstractPipeline;

    iput-object p4, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->ORDERED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {p2}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    iput-boolean v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/WhileOps$DropWhileTask;Ljj$/util/Spliterator;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/AbstractTask;-><init>(Ljj$/util/stream/AbstractTask;Ljj$/util/Spliterator;)V

    iget-object v0, p1, Ljj$/util/stream/WhileOps$DropWhileTask;->op:Ljj$/util/stream/AbstractPipeline;

    iput-object v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->op:Ljj$/util/stream/AbstractPipeline;

    iget-object v0, p1, Ljj$/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    iput-object v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    iget-boolean v0, p1, Ljj$/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    iput-boolean v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    return-void
.end method

.method private doTruncate(Ljj$/util/stream/Node;)Ljj$/util/stream/Node;
    .registers 9

    iget-boolean v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v0, :cond_12

    iget-wide v2, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->index:J

    invoke-interface {p1}, Ljj$/util/stream/Node;->count()J

    move-result-wide v4

    iget-object v6, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Ljj$/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object p1

    goto :goto_13

    :cond_12
    move-object v1, p1

    :goto_13
    return-object p1
.end method

.method private merge()Ljj$/util/stream/Node;
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$DropWhileTask;

    iget-wide v0, v0, Ljj$/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    iget-object v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$DropWhileTask;

    invoke-virtual {v0}, Ljj$/util/stream/WhileOps$DropWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Node;

    return-object v0

    :cond_17
    iget-object v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$DropWhileTask;

    iget-wide v0, v0, Ljj$/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2c

    iget-object v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$DropWhileTask;

    invoke-virtual {v0}, Ljj$/util/stream/WhileOps$DropWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Node;

    return-object v0

    :cond_2c
    iget-object v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->op:Ljj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljj$/util/stream/AbstractPipeline;->getOutputShape()Ljj$/util/stream/StreamShape;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v1, Ljj$/util/stream/WhileOps$DropWhileTask;

    invoke-virtual {v1}, Ljj$/util/stream/WhileOps$DropWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/Node;

    iget-object v2, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v2, Ljj$/util/stream/WhileOps$DropWhileTask;

    invoke-virtual {v2}, Ljj$/util/stream/WhileOps$DropWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/util/stream/Node;

    invoke-static {v0, v1, v2}, Ljj$/util/stream/Nodes;->conc(Ljj$/util/stream/StreamShape;Ljj$/util/stream/Node;Ljj$/util/stream/Node;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$DropWhileTask;->doLeaf()Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final doLeaf()Ljj$/util/stream/Node;
    .registers 10

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$DropWhileTask;->isRoot()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_21

    iget-boolean v2, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v2, :cond_21

    sget-object v2, Ljj$/util/stream/StreamOpFlag;->SIZED:Ljj$/util/stream/StreamOpFlag;

    iget-object v3, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->op:Ljj$/util/stream/AbstractPipeline;

    iget v3, v3, Ljj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v2, v3}, Ljj$/util/stream/StreamOpFlag;->isPreserved(I)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->op:Ljj$/util/stream/AbstractPipeline;

    iget-object v3, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v2, v3}, Ljj$/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v2

    goto :goto_23

    :cond_21
    const-wide/16 v2, -0x1

    :goto_23
    nop

    iget-object v4, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-object v5, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v4, v2, v3, v5}, Ljj$/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljj$/util/stream/Node$Builder;

    move-result-object v4

    iget-object v5, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->op:Ljj$/util/stream/AbstractPipeline;

    check-cast v5, Ljj$/util/stream/WhileOps$DropWhileOp;

    iget-boolean v6, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v6, :cond_37

    if-eqz v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    invoke-interface {v5, v4, v1}, Ljj$/util/stream/WhileOps$DropWhileOp;->opWrapSink(Ljj$/util/stream/Sink;Z)Ljj$/util/stream/WhileOps$DropWhileSink;

    move-result-object v1

    iget-object v6, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-object v7, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v6, v1, v7}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    invoke-interface {v4}, Ljj$/util/stream/Node$Builder;->build()Ljj$/util/stream/Node;

    move-result-object v6

    invoke-interface {v6}, Ljj$/util/stream/Node;->count()J

    move-result-wide v7

    iput-wide v7, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    invoke-interface {v1}, Ljj$/util/stream/WhileOps$DropWhileSink;->getDropCount()J

    move-result-wide v7

    iput-wide v7, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->index:J

    return-object v6
.end method

.method protected bridge synthetic makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/AbstractTask;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/WhileOps$DropWhileTask;->makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/WhileOps$DropWhileTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/WhileOps$DropWhileTask;
    .registers 3

    new-instance v0, Ljj$/util/stream/WhileOps$DropWhileTask;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/WhileOps$DropWhileTask;-><init>(Ljj$/util/stream/WhileOps$DropWhileTask;Ljj$/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 7

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$DropWhileTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-boolean v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$DropWhileTask;

    iget-wide v0, v0, Ljj$/util/stream/WhileOps$DropWhileTask;->index:J

    iput-wide v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->index:J

    iget-wide v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->index:J

    iget-object v2, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v2, Ljj$/util/stream/WhileOps$DropWhileTask;

    iget-wide v2, v2, Ljj$/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_29

    iget-wide v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->index:J

    iget-object v2, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v2, Ljj$/util/stream/WhileOps$DropWhileTask;

    iget-wide v2, v2, Ljj$/util/stream/WhileOps$DropWhileTask;->index:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->index:J

    :cond_29
    iget-object v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v0, Ljj$/util/stream/WhileOps$DropWhileTask;

    iget-wide v0, v0, Ljj$/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    iget-object v2, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v2, Ljj$/util/stream/WhileOps$DropWhileTask;

    iget-wide v2, v2, Ljj$/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    invoke-direct {p0}, Ljj$/util/stream/WhileOps$DropWhileTask;->merge()Ljj$/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$DropWhileTask;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-direct {p0, v0}, Ljj$/util/stream/WhileOps$DropWhileTask;->doTruncate(Ljj$/util/stream/Node;)Ljj$/util/stream/Node;

    move-result-object v1

    goto :goto_48

    :cond_47
    move-object v1, v0

    :goto_48
    invoke-virtual {p0, v1}, Ljj$/util/stream/WhileOps$DropWhileTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_4b
    invoke-super {p0, p1}, Ljj$/util/stream/AbstractTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
