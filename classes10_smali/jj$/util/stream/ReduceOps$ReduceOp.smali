.class abstract Ljj$/util/stream/ReduceOps$ReduceOp;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljj$/util/stream/TerminalOp;


# instance fields
.field private final inputShape:Ljj$/util/stream/StreamShape;


# direct methods
.method constructor <init>(Ljj$/util/stream/StreamShape;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/ReduceOps$ReduceOp;->inputShape:Ljj$/util/stream/StreamShape;

    return-void
.end method


# virtual methods
.method public evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Ljj$/util/stream/ReduceOps$ReduceTask;

    invoke-direct {v0, p0, p1, p2}, Ljj$/util/stream/ReduceOps$ReduceTask;-><init>(Ljj$/util/stream/ReduceOps$ReduceOp;Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V

    invoke-virtual {v0}, Ljj$/util/stream/ReduceOps$ReduceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0}, Ljj$/util/stream/ReduceOps$AccumulatingSink;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$ReduceOp;->makeSink()Ljj$/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0}, Ljj$/util/stream/ReduceOps$AccumulatingSink;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getOpFlags()I
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/TerminalOp$-CC;->$default$getOpFlags(Ljj$/util/stream/TerminalOp;)I

    move-result v0

    return v0
.end method

.method public inputShape()Ljj$/util/stream/StreamShape;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/ReduceOps$ReduceOp;->inputShape:Ljj$/util/stream/StreamShape;

    return-object v0
.end method

.method public abstract makeSink()Ljj$/util/stream/ReduceOps$AccumulatingSink;
.end method
