.class final Ljj$/util/stream/ForEachOps$ForEachOp$OfDouble;
.super Ljj$/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"

# interfaces
.implements Ljj$/util/stream/Sink$OfDouble;


# instance fields
.field final consumer:Ljava/util/function/DoubleConsumer;


# direct methods
.method constructor <init>(Ljava/util/function/DoubleConsumer;Z)V
    .registers 3

    invoke-direct {p0, p2}, Ljj$/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    iput-object p1, p0, Ljj$/util/stream/ForEachOps$ForEachOp$OfDouble;->consumer:Ljava/util/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachOp$OfDouble;->consumer:Ljava/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Double;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfDouble$-CC;->$default$accept(Ljj$/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfDouble$-CC;->$default$accept(Ljj$/util/stream/Sink$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 3

    invoke-super {p0, p1, p2}, Ljj$/util/stream/ForEachOps$ForEachOp;->evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 3

    invoke-super {p0, p1, p2}, Ljj$/util/stream/ForEachOps$ForEachOp;->evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public inputShape()Ljj$/util/stream/StreamShape;
    .registers 2

    sget-object v0, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    return-object v0
.end method
