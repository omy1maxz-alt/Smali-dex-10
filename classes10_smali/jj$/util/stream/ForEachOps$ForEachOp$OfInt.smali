.class final Ljj$/util/stream/ForEachOps$ForEachOp$OfInt;
.super Ljj$/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"

# interfaces
.implements Ljj$/util/stream/Sink$OfInt;


# instance fields
.field final consumer:Ljava/util/function/IntConsumer;


# direct methods
.method constructor <init>(Ljava/util/function/IntConsumer;Z)V
    .registers 3

    invoke-direct {p0, p2}, Ljj$/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    iput-object p1, p0, Ljj$/util/stream/ForEachOps$ForEachOp$OfInt;->consumer:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachOp$OfInt;->consumer:Ljava/util/function/IntConsumer;

    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Integer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfInt$-CC;->$default$accept(Ljj$/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfInt$-CC;->$default$accept(Ljj$/util/stream/Sink$OfInt;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

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

    sget-object v0, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    return-object v0
.end method
