.class abstract Ljj$/util/stream/ForEachOps$ForEachOp;
.super Ljava/lang/Object;
.source "ForEachOps.java"

# interfaces
.implements Ljj$/util/stream/TerminalOp;
.implements Ljj$/util/stream/TerminalSink;


# instance fields
.field private final ordered:Z


# direct methods
.method protected constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ljj$/util/stream/ForEachOps$ForEachOp;->ordered:Z

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;D)V

    return-void
.end method

.method public synthetic accept(I)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;I)V

    return-void
.end method

.method public synthetic accept(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;J)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic begin(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$begin(Ljj$/util/stream/Sink;J)V

    return-void
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$cancellationRequested(Ljj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$end(Ljj$/util/stream/Sink;)V

    return-void
.end method

.method public bridge synthetic evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/ForEachOps$ForEachOp;->evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Void;
    .registers 5

    iget-boolean v0, p0, Ljj$/util/stream/ForEachOps$ForEachOp;->ordered:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v0, p1, p2, p0}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljj$/util/stream/Sink;)V

    invoke-virtual {v0}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->invoke()Ljava/lang/Object;

    goto :goto_19

    :cond_d
    new-instance v0, Ljj$/util/stream/ForEachOps$ForEachTask;

    invoke-virtual {p1, p0}, Ljj$/util/stream/PipelineHelper;->wrapSink(Ljj$/util/stream/Sink;)Ljj$/util/stream/Sink;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ljj$/util/stream/ForEachOps$ForEachTask;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljj$/util/stream/Sink;)V

    invoke-virtual {v0}, Ljj$/util/stream/ForEachOps$ForEachTask;->invoke()Ljava/lang/Object;

    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/ForEachOps$ForEachOp;->evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Void;
    .registers 4

    invoke-virtual {p1, p0, p2}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/ForEachOps$ForEachOp;

    invoke-virtual {v0}, Ljj$/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Void;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOpFlags()I
    .registers 2

    iget-boolean v0, p0, Ljj$/util/stream/ForEachOps$ForEachOp;->ordered:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    sget v0, Ljj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    :goto_8
    return v0
.end method

.method public synthetic inputShape()Ljj$/util/stream/StreamShape;
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/TerminalOp$-CC;->$default$inputShape(Ljj$/util/stream/TerminalOp;)Ljj$/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method
