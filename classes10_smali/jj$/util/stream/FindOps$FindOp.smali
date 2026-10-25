.class final Ljj$/util/stream/FindOps$FindOp;
.super Ljava/lang/Object;
.source "FindOps.java"

# interfaces
.implements Ljj$/util/stream/TerminalOp;


# instance fields
.field final emptyValue:Ljava/lang/Object;

.field final opFlags:I

.field final presentPredicate:Ljava/util/function/Predicate;

.field private final shape:Ljj$/util/stream/StreamShape;

.field final sinkSupplier:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(ZLjj$/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Ljj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    goto :goto_b

    :cond_9
    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    :goto_b
    or-int/2addr v0, v1

    iput v0, p0, Ljj$/util/stream/FindOps$FindOp;->opFlags:I

    iput-object p2, p0, Ljj$/util/stream/FindOps$FindOp;->shape:Ljj$/util/stream/StreamShape;

    iput-object p3, p0, Ljj$/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    iput-object p4, p0, Ljj$/util/stream/FindOps$FindOp;->presentPredicate:Ljava/util/function/Predicate;

    iput-object p5, p0, Ljj$/util/stream/FindOps$FindOp;->sinkSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->ORDERED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    new-instance v1, Ljj$/util/stream/FindOps$FindTask;

    invoke-direct {v1, p0, v0, p1, p2}, Ljj$/util/stream/FindOps$FindTask;-><init>(Ljj$/util/stream/FindOps$FindOp;ZLjj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V

    invoke-virtual {v1}, Ljj$/util/stream/FindOps$FindTask;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/FindOps$FindOp;->sinkSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/TerminalSink;

    invoke-virtual {p1, v0, p2}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/TerminalSink;

    invoke-interface {v0}, Ljj$/util/stream/TerminalSink;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    move-object v1, v0

    goto :goto_18

    :cond_16
    iget-object v1, p0, Ljj$/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    :goto_18
    return-object v1
.end method

.method public getOpFlags()I
    .registers 2

    iget v0, p0, Ljj$/util/stream/FindOps$FindOp;->opFlags:I

    return v0
.end method

.method public inputShape()Ljj$/util/stream/StreamShape;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/FindOps$FindOp;->shape:Ljj$/util/stream/StreamShape;

    return-object v0
.end method
