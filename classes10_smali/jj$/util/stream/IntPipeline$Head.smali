.class Ljj$/util/stream/IntPipeline$Head;
.super Ljj$/util/stream/IntPipeline;
.source "IntPipeline.java"


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/IntPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/IntPipeline;-><init>(Ljj$/util/Spliterator;IZ)V

    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/IntConsumer;)V
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/IntPipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljj$/util/stream/IntPipeline$Head;->sourceStageSpliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/IntPipeline;->-$$Nest$smadapt(Ljj$/util/Spliterator;)Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_15

    :cond_12
    invoke-super {p0, p1}, Ljj$/util/stream/IntPipeline;->forEach(Ljava/util/function/IntConsumer;)V

    :goto_15
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/IntConsumer;)V
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/IntPipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljj$/util/stream/IntPipeline$Head;->sourceStageSpliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/IntPipeline;->-$$Nest$smadapt(Ljj$/util/Spliterator;)Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_15

    :cond_12
    invoke-super {p0, p1}, Ljj$/util/stream/IntPipeline;->forEachOrdered(Ljava/util/function/IntConsumer;)V

    :goto_15
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/IntPipeline;->iterator()Ljj$/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator;
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/IntPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method final opIsStateful()Z
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic parallel()Ljj$/util/stream/IntStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/IntPipeline;->parallel()Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/IntStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Ljj$/util/stream/IntStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/IntPipeline;->sequential()Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/IntStream;

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/IntPipeline;->spliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unordered()Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/IntPipeline;->unordered()Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method
