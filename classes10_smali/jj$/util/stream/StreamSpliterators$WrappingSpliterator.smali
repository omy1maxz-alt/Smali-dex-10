.class final Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;
.super Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"


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
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->buffer:Ljj$/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_21

    iget-boolean v0, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->finished:Z

    if-nez v0, :cond_21

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->init()V

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->ph:Ljj$/util/stream/PipelineHelper;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->finished:Z

    goto :goto_27

    :cond_21
    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_21

    :goto_27
    return-void
.end method

.method initPartialTraversalState()V
    .registers 4

    new-instance v0, Ljj$/util/stream/SpinedBuffer;

    invoke-direct {v0}, Ljj$/util/stream/SpinedBuffer;-><init>()V

    iput-object v0, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->buffer:Ljj$/util/stream/AbstractSpinedBuffer;

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->ph:Ljj$/util/stream/PipelineHelper;

    invoke-static {v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda0;-><init>(Ljj$/util/stream/SpinedBuffer;)V

    invoke-virtual {v1, v2}, Ljj$/util/stream/PipelineHelper;->wrapSink(Ljj$/util/stream/Sink;)Ljj$/util/stream/Sink;

    move-result-object v1

    iput-object v1, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->bufferSink:Ljj$/util/stream/Sink;

    new-instance v1, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda1;-><init>(Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;)V

    iput-object v1, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    return-void
.end method

.method synthetic lambda$initPartialTraversalState$0$java-util-stream-StreamSpliterators$WrappingSpliterator()Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->spliterator:Ljj$/util/Spliterator;

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->bufferSink:Ljj$/util/stream/Sink;

    invoke-interface {v0, v1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->doAdvance()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->buffer:Ljj$/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljj$/util/stream/SpinedBuffer;

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljj$/util/stream/SpinedBuffer;->get(J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_16
    return v0
.end method

.method bridge synthetic wrap(Ljj$/util/Spliterator;)Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->wrap(Ljj$/util/Spliterator;)Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;

    move-result-object p1

    return-object p1
.end method

.method wrap(Ljj$/util/Spliterator;)Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;
    .registers 5

    new-instance v0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->ph:Ljj$/util/stream/PipelineHelper;

    iget-boolean v2, p0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Z)V

    return-object v0
.end method
