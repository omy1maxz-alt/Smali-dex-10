.class final Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;
.super Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfDouble;
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field tmpValue:D


# direct methods
.method constructor <init>(Ljj$/util/Spliterator$OfDouble;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljj$/util/Spliterator$OfPrimitive;JJ)V

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator$OfDouble;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljj$/util/Spliterator$OfPrimitive;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 3

    iput-wide p1, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->tmpValue:D

    return-void
.end method

.method protected bridge synthetic acceptConsumed(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->acceptConsumed(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method protected acceptConsumed(Ljava/util/function/DoubleConsumer;)V
    .registers 4

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->tmpValue:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method protected bufferCreate(I)Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;
    .registers 3

    new-instance v0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;

    invoke-direct {v0, p1}, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic bufferCreate(I)Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->bufferCreate(I)Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected makeSpliterator(Ljj$/util/Spliterator$OfDouble;)Ljj$/util/Spliterator$OfDouble;
    .registers 3

    new-instance v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;

    invoke-direct {v0, p1, p0}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;-><init>(Ljj$/util/Spliterator$OfDouble;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;)V

    return-object v0
.end method

.method protected bridge synthetic makeSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
    .registers 2

    check-cast p1, Ljj$/util/Spliterator$OfDouble;

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->makeSpliterator(Ljj$/util/Spliterator$OfDouble;)Ljj$/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfDouble;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfDouble;

    return-object v0
.end method
