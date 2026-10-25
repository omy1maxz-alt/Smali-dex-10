.class final Ljj$/util/stream/SortedOps$OfInt;
.super Ljj$/util/stream/IntPipeline$StatefulOp;
.source "SortedOps.java"


# direct methods
.method constructor <init>(Ljj$/util/stream/AbstractPipeline;)V
    .registers 5

    sget-object v0, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->IS_SORTED:I

    or-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Ljj$/util/stream/IntPipeline$StatefulOp;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 7

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SORTED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljj$/util/stream/PipelineHelper;->evaluate(Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3}, Ljj$/util/stream/PipelineHelper;->evaluate(Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Node$OfInt;

    invoke-interface {v0}, Ljj$/util/stream/Node$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    invoke-static {v1}, Ljj$/util/stream/Nodes;->node([I)Ljj$/util/stream/Node$OfInt;

    move-result-object v2

    return-object v2
.end method

.method public opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 4

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SORTED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object p2

    :cond_c
    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SIZED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljj$/util/stream/SortedOps$SizedIntSortingSink;

    invoke-direct {v0, p2}, Ljj$/util/stream/SortedOps$SizedIntSortingSink;-><init>(Ljj$/util/stream/Sink;)V

    return-object v0

    :cond_1a
    new-instance v0, Ljj$/util/stream/SortedOps$IntSortingSink;

    invoke-direct {v0, p2}, Ljj$/util/stream/SortedOps$IntSortingSink;-><init>(Ljj$/util/stream/Sink;)V

    return-object v0
.end method
