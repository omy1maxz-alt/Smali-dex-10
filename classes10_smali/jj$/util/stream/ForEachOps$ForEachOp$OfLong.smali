.class final Ljj$/util/stream/ForEachOps$ForEachOp$OfLong;
.super Ljj$/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"

# interfaces
.implements Ljj$/util/stream/Sink$OfLong;


# instance fields
.field final consumer:Ljava/util/function/LongConsumer;


# direct methods
.method constructor <init>(Ljava/util/function/LongConsumer;Z)V
    .registers 3

    invoke-direct {p0, p2}, Ljj$/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    iput-object p1, p0, Ljj$/util/stream/ForEachOps$ForEachOp$OfLong;->consumer:Ljava/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachOp$OfLong;->consumer:Ljava/util/function/LongConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Long;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfLong$-CC;->$default$accept(Ljj$/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfLong$-CC;->$default$accept(Ljj$/util/stream/Sink$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

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

    sget-object v0, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    return-object v0
.end method
