.class Ljj$/util/stream/DistinctOps$1;
.super Ljj$/util/stream/ReferencePipeline$StatefulOp;
.source "DistinctOps.java"


# direct methods
.method constructor <init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-void
.end method

.method static synthetic lambda$opEvaluateParallel$0(Ljava/util/concurrent/atomic/AtomicBoolean;Ljj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V
    .registers 4

    if-nez p2, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_c

    :cond_7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    return-void
.end method


# virtual methods
.method opEvaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 9

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->DISTINCT:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {p1, p2, v1, p3}, Ljj$/util/stream/PipelineHelper;->evaluate(Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_12
    sget-object v0, Ljj$/util/stream/StreamOpFlag;->ORDERED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v0, v2}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/DistinctOps$1;->reduce(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v3, Ljj$/util/stream/DistinctOps$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v2}, Ljj$/util/stream/DistinctOps$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljj$/util/concurrent/ConcurrentHashMap;)V

    invoke-static {v3, v1}, Ljj$/util/stream/ForEachOps;->makeRef(Ljava/util/function/Consumer;Z)Ljj$/util/stream/TerminalOp;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljj$/util/stream/TerminalOp;->evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_4d

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4d
    invoke-static {v3}, Ljj$/util/stream/Nodes;->node(Ljava/util/Collection;)Ljj$/util/stream/Node;

    move-result-object v4

    return-object v4
.end method

.method opEvaluateParallelLazy(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
    .registers 5

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->DISTINCT:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1, p2}, Ljj$/util/stream/PipelineHelper;->wrapSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_11
    sget-object v0, Ljj$/util/stream/StreamOpFlag;->ORDERED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/DistinctOps$1;->reduce(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljj$/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/stream/Node;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_26
    new-instance v0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;

    invoke-virtual {p1, p2}, Ljj$/util/stream/PipelineHelper;->wrapSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljj$/util/Spliterator;)V

    return-object v0
.end method

.method opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 4

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->DISTINCT:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object p2

    :cond_c
    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SORTED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljj$/util/stream/DistinctOps$1$1;

    invoke-direct {v0, p0, p2}, Ljj$/util/stream/DistinctOps$1$1;-><init>(Ljj$/util/stream/DistinctOps$1;Ljj$/util/stream/Sink;)V

    return-object v0

    :cond_1a
    new-instance v0, Ljj$/util/stream/DistinctOps$1$2;

    invoke-direct {v0, p0, p2}, Ljj$/util/stream/DistinctOps$1$2;-><init>(Ljj$/util/stream/DistinctOps$1;Ljj$/util/stream/Sink;)V

    return-object v0
.end method

.method reduce(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljj$/util/stream/Node;
    .registers 6

    new-instance v0, Ljj$/util/stream/DistinctOps$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljj$/util/stream/DistinctOps$1$$ExternalSyntheticLambda1;-><init>()V

    new-instance v1, Ljj$/util/stream/DistinctOps$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljj$/util/stream/DistinctOps$1$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Ljj$/util/stream/DistinctOps$1$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljj$/util/stream/DistinctOps$1$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1, v2}, Ljj$/util/stream/ReduceOps;->makeRef(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/TerminalOp;->evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Ljj$/util/stream/Nodes;->node(Ljava/util/Collection;)Ljj$/util/stream/Node;

    move-result-object v1

    return-object v1
.end method
