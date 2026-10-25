.class Ljj$/util/stream/DoublePipeline$Head;
.super Ljj$/util/stream/DoublePipeline;
.source "DoublePipeline.java"


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/DoublePipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/DoublePipeline;-><init>(Ljj$/util/Spliterator;IZ)V

    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/DoubleConsumer;)V
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/DoublePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljj$/util/stream/DoublePipeline$Head;->sourceStageSpliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/DoublePipeline;->-$$Nest$smadapt(Ljj$/util/Spliterator;)Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_15

    :cond_12
    invoke-super {p0, p1}, Ljj$/util/stream/DoublePipeline;->forEach(Ljava/util/function/DoubleConsumer;)V

    :goto_15
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/DoublePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljj$/util/stream/DoublePipeline$Head;->sourceStageSpliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/DoublePipeline;->-$$Nest$smadapt(Ljj$/util/Spliterator;)Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_15

    :cond_12
    invoke-super {p0, p1}, Ljj$/util/stream/DoublePipeline;->forEachOrdered(Ljava/util/function/DoubleConsumer;)V

    :goto_15
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/DoublePipeline;->iterator()Ljj$/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator;
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/DoublePipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator$OfDouble;

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

.method public bridge synthetic parallel()Ljj$/util/stream/DoubleStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/DoublePipeline;->parallel()Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/DoubleStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Ljj$/util/stream/DoubleStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/DoublePipeline;->sequential()Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/DoubleStream;

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/DoublePipeline;->spliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unordered()Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/DoublePipeline;->unordered()Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method
