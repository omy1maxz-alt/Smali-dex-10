.class final Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;
.super Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfDouble;


# direct methods
.method constructor <init>(Ljj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Ljj$/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_21

    iget-boolean v0, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->finished:Z

    if-nez v0, :cond_21

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->init()V

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Ljj$/util/stream/PipelineHelper;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/DoubleConsumer;)V

    iget-object v2, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->finished:Z

    goto :goto_27

    :cond_21
    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    if-nez v0, :cond_21

    :goto_27
    return-void
.end method

.method initPartialTraversalState()V
    .registers 4

    new-instance v0, Ljj$/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Ljj$/util/stream/SpinedBuffer$OfDouble;-><init>()V

    iput-object v0, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Ljj$/util/stream/AbstractSpinedBuffer;

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Ljj$/util/stream/PipelineHelper;

    invoke-static {v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda1;-><init>(Ljj$/util/stream/SpinedBuffer$OfDouble;)V

    invoke-virtual {v1, v2}, Ljj$/util/stream/PipelineHelper;->wrapSink(Ljj$/util/stream/Sink;)Ljj$/util/stream/Sink;

    move-result-object v1

    iput-object v1, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->bufferSink:Ljj$/util/stream/Sink;

    new-instance v1, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda2;-><init>(Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;)V

    iput-object v1, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    return-void
.end method

.method synthetic lambda$initPartialTraversalState$0$java-util-stream-StreamSpliterators$DoubleWrappingSpliterator()Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->spliterator:Ljj$/util/Spliterator;

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->bufferSink:Ljj$/util/stream/Sink;

    invoke-interface {v0, v1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->doAdvance()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Ljj$/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljj$/util/stream/SpinedBuffer$OfDouble;

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljj$/util/stream/SpinedBuffer$OfDouble;->get(J)D

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    :cond_16
    return v0
.end method

.method public trySplit()Ljj$/util/Spliterator$OfDouble;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->trySplit()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->trySplit()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method wrap(Ljj$/util/Spliterator;)Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .registers 5

    new-instance v0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Ljj$/util/stream/PipelineHelper;

    iget-boolean v2, p0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Z)V

    return-object v0
.end method
