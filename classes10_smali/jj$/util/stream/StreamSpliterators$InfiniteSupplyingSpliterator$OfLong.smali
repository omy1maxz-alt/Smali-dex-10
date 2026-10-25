.class final Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;
.super Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfLong;


# instance fields
.field final s:Ljava/util/function/LongSupplier;


# direct methods
.method constructor <init>(JLjava/util/function/LongSupplier;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    iput-object p3, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava/util/function/LongSupplier;

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public trySplit()Ljj$/util/Spliterator$OfLong;
    .registers 6

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->estimate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    new-instance v0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;

    iget-wide v1, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->estimate:J

    const/4 v3, 0x1

    ushr-long/2addr v1, v3

    iput-wide v1, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->estimate:J

    iget-object v3, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava/util/function/LongSupplier;

    invoke-direct {v0, v1, v2, v3}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;-><init>(JLjava/util/function/LongSupplier;)V

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->trySplit()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->trySplit()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
