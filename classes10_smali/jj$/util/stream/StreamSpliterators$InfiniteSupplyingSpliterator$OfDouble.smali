.class final Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;
.super Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfDouble;


# instance fields
.field final s:Ljava/util/function/DoubleSupplier;


# direct methods
.method constructor <init>(JLjava/util/function/DoubleSupplier;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    iput-object p3, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->s:Ljava/util/function/DoubleSupplier;

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

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
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->s:Ljava/util/function/DoubleSupplier;

    invoke-interface {v0}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    const/4 v0, 0x1

    return v0
.end method

.method public trySplit()Ljj$/util/Spliterator$OfDouble;
    .registers 6

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->estimate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    new-instance v0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;

    iget-wide v1, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->estimate:J

    const/4 v3, 0x1

    ushr-long/2addr v1, v3

    iput-wide v1, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->estimate:J

    iget-object v3, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->s:Ljava/util/function/DoubleSupplier;

    invoke-direct {v0, v1, v2, v3}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;-><init>(JLjava/util/function/DoubleSupplier;)V

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->trySplit()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->trySplit()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
