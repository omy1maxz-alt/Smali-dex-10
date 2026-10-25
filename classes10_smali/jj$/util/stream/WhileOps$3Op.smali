.class Ljj$/util/stream/WhileOps$3Op;
.super Ljj$/util/stream/LongPipeline$StatefulOp;
.source "WhileOps.java"

# interfaces
.implements Ljj$/util/stream/WhileOps$DropWhileOp;


# instance fields
.field final synthetic val$predicate:Ljava/util/function/LongPredicate;


# direct methods
.method public constructor <init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/LongPredicate;)V
    .registers 5

    iput-object p4, p0, Ljj$/util/stream/WhileOps$3Op;->val$predicate:Ljava/util/function/LongPredicate;

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/LongPipeline$StatefulOp;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-void
.end method

.method static synthetic lambda$opEvaluateParallelLazy$0(I)[Ljava/lang/Long;
    .registers 2

    new-array v0, p0, [Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method opEvaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 5

    new-instance v0, Ljj$/util/stream/WhileOps$DropWhileTask;

    invoke-direct {v0, p0, p1, p2, p3}, Ljj$/util/stream/WhileOps$DropWhileTask;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    invoke-virtual {v0}, Ljj$/util/stream/WhileOps$DropWhileTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Node;

    return-object v0
.end method

.method opEvaluateParallelLazy(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
    .registers 7

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->ORDERED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljj$/util/stream/WhileOps$3Op$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/util/stream/WhileOps$3Op$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ljj$/util/stream/WhileOps$3Op;->opEvaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/stream/Node;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_1a
    new-instance v0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;

    invoke-virtual {p1, p2}, Ljj$/util/stream/PipelineHelper;->wrapSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;

    move-result-object v1

    check-cast v1, Ljj$/util/Spliterator$OfLong;

    const/4 v2, 0x0

    iget-object v3, p0, Ljj$/util/stream/WhileOps$3Op;->val$predicate:Ljava/util/function/LongPredicate;

    invoke-direct {v0, v1, v2, v3}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;-><init>(Ljj$/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V

    return-object v0
.end method

.method opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Ljj$/util/stream/WhileOps$3Op;->opWrapSink(Ljj$/util/stream/Sink;Z)Ljj$/util/stream/WhileOps$DropWhileSink;

    move-result-object v0

    return-object v0
.end method

.method public opWrapSink(Ljj$/util/stream/Sink;Z)Ljj$/util/stream/WhileOps$DropWhileSink;
    .registers 4

    new-instance v0, Ljj$/util/stream/WhileOps$3Op$1OpSink;

    invoke-direct {v0, p0, p1, p2}, Ljj$/util/stream/WhileOps$3Op$1OpSink;-><init>(Ljj$/util/stream/WhileOps$3Op;Ljj$/util/stream/Sink;Z)V

    return-object v0
.end method
