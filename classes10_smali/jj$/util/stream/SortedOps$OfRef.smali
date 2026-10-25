.class final Ljj$/util/stream/SortedOps$OfRef;
.super Ljj$/util/stream/ReferencePipeline$StatefulOp;
.source "SortedOps.java"


# instance fields
.field private final comparator:Ljava/util/Comparator;

.field private final isNaturalSort:Z


# direct methods
.method constructor <init>(Ljj$/util/stream/AbstractPipeline;)V
    .registers 5

    sget-object v0, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->IS_SORTED:I

    or-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Ljj$/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    invoke-static {}, Ljj$/util/Comparator$-CC;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/AbstractPipeline;Ljava/util/Comparator;)V
    .registers 6

    sget-object v0, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    or-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Ljj$/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Ljj$/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SORTED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Ljj$/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljj$/util/stream/PipelineHelper;->evaluate(Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_16
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3}, Ljj$/util/stream/PipelineHelper;->evaluate(Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    invoke-interface {v0, p3}, Ljj$/util/stream/Node;->asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v0}, Ljj$/util/stream/Nodes;->node([Ljava/lang/Object;)Ljj$/util/stream/Node;

    move-result-object v1

    return-object v1
.end method

.method public opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 5

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SORTED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Ljj$/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    if-eqz v0, :cond_10

    return-object p2

    :cond_10
    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SIZED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;

    iget-object v1, p0, Ljj$/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, p2, v1}, Ljj$/util/stream/SortedOps$SizedRefSortingSink;-><init>(Ljj$/util/stream/Sink;Ljava/util/Comparator;)V

    return-object v0

    :cond_20
    new-instance v0, Ljj$/util/stream/SortedOps$RefSortingSink;

    iget-object v1, p0, Ljj$/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, p2, v1}, Ljj$/util/stream/SortedOps$RefSortingSink;-><init>(Ljj$/util/stream/Sink;Ljava/util/Comparator;)V

    return-object v0
.end method
