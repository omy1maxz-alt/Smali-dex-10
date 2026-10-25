.class final Ljj$/util/stream/MatchOps$MatchTask;
.super Ljj$/util/stream/AbstractShortCircuitTask;
.source "MatchOps.java"


# instance fields
.field private final op:Ljj$/util/stream/MatchOps$MatchOp;


# direct methods
.method constructor <init>(Ljj$/util/stream/MatchOps$MatchOp;Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Ljj$/util/stream/AbstractShortCircuitTask;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V

    iput-object p1, p0, Ljj$/util/stream/MatchOps$MatchTask;->op:Ljj$/util/stream/MatchOps$MatchOp;

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/MatchOps$MatchTask;Ljj$/util/Spliterator;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/AbstractShortCircuitTask;-><init>(Ljj$/util/stream/AbstractShortCircuitTask;Ljj$/util/Spliterator;)V

    iget-object v0, p1, Ljj$/util/stream/MatchOps$MatchTask;->op:Ljj$/util/stream/MatchOps$MatchOp;

    iput-object v0, p0, Ljj$/util/stream/MatchOps$MatchTask;->op:Ljj$/util/stream/MatchOps$MatchOp;

    return-void
.end method


# virtual methods
.method protected doLeaf()Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/MatchOps$MatchTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-object v1, p0, Ljj$/util/stream/MatchOps$MatchTask;->op:Ljj$/util/stream/MatchOps$MatchOp;

    iget-object v1, v1, Ljj$/util/stream/MatchOps$MatchOp;->sinkSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/MatchOps$BooleanTerminalSink;

    iget-object v2, p0, Ljj$/util/stream/MatchOps$MatchTask;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/MatchOps$BooleanTerminalSink;

    invoke-virtual {v0}, Ljj$/util/stream/MatchOps$BooleanTerminalSink;->getAndClearState()Z

    move-result v0

    iget-object v1, p0, Ljj$/util/stream/MatchOps$MatchTask;->op:Ljj$/util/stream/MatchOps$MatchOp;

    iget-object v1, v1, Ljj$/util/stream/MatchOps$MatchOp;->matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {v1}, Ljj$/util/stream/MatchOps$MatchKind;->-$$Nest$fgetshortCircuitResult(Ljj$/util/stream/MatchOps$MatchKind;)Z

    move-result v1

    if-ne v0, v1, :cond_29

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljj$/util/stream/MatchOps$MatchTask;->shortCircuit(Ljava/lang/Object;)V

    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/MatchOps$MatchTask;->doLeaf()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getEmptyResult()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/MatchOps$MatchTask;->op:Ljj$/util/stream/MatchOps$MatchOp;

    iget-object v0, v0, Ljj$/util/stream/MatchOps$MatchOp;->matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {v0}, Ljj$/util/stream/MatchOps$MatchKind;->-$$Nest$fgetshortCircuitResult(Ljj$/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getEmptyResult()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/MatchOps$MatchTask;->getEmptyResult()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/AbstractTask;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/MatchOps$MatchTask;->makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/MatchOps$MatchTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/MatchOps$MatchTask;
    .registers 3

    new-instance v0, Ljj$/util/stream/MatchOps$MatchTask;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/MatchOps$MatchTask;-><init>(Ljj$/util/stream/MatchOps$MatchTask;Ljj$/util/Spliterator;)V

    return-object v0
.end method
