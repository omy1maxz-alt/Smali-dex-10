.class final Ljj$/util/stream/MatchOps$MatchOp;
.super Ljava/lang/Object;
.source "MatchOps.java"

# interfaces
.implements Ljj$/util/stream/TerminalOp;


# instance fields
.field private final inputShape:Ljj$/util/stream/StreamShape;

.field final matchKind:Ljj$/util/stream/MatchOps$MatchKind;

.field final sinkSupplier:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljj$/util/stream/StreamShape;Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/MatchOps$MatchOp;->inputShape:Ljj$/util/stream/StreamShape;

    iput-object p2, p0, Ljj$/util/stream/MatchOps$MatchOp;->matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    iput-object p3, p0, Ljj$/util/stream/MatchOps$MatchOp;->sinkSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Boolean;
    .registers 4

    new-instance v0, Ljj$/util/stream/MatchOps$MatchTask;

    invoke-direct {v0, p0, p1, p2}, Ljj$/util/stream/MatchOps$MatchTask;-><init>(Ljj$/util/stream/MatchOps$MatchOp;Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V

    invoke-virtual {v0}, Ljj$/util/stream/MatchOps$MatchTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/MatchOps$MatchOp;->evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/MatchOps$MatchOp;->sinkSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/MatchOps$BooleanTerminalSink;

    invoke-virtual {p1, v0, p2}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/MatchOps$BooleanTerminalSink;

    invoke-virtual {v0}, Ljj$/util/stream/MatchOps$BooleanTerminalSink;->getAndClearState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/MatchOps$MatchOp;->evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getOpFlags()I
    .registers 3

    sget v0, Ljj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    or-int/2addr v0, v1

    return v0
.end method

.method public inputShape()Ljj$/util/stream/StreamShape;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/MatchOps$MatchOp;->inputShape:Ljj$/util/stream/StreamShape;

    return-object v0
.end method
