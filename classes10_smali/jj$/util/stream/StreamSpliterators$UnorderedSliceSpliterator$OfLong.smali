.class final Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;
.super Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfLong;
.implements Ljava/util/function/LongConsumer;


# instance fields
.field tmpValue:J


# direct methods
.method constructor <init>(Ljj$/util/Spliterator$OfLong;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljj$/util/Spliterator$OfPrimitive;JJ)V

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator$OfLong;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljj$/util/Spliterator$OfPrimitive;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 3

    iput-wide p1, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->tmpValue:J

    return-void
.end method

.method protected bridge synthetic acceptConsumed(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->acceptConsumed(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method protected acceptConsumed(Ljava/util/function/LongConsumer;)V
    .registers 4

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->tmpValue:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.method protected bufferCreate(I)Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfLong;
    .registers 3

    new-instance v0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfLong;

    invoke-direct {v0, p1}, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfLong;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic bufferCreate(I)Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->bufferCreate(I)Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected makeSpliterator(Ljj$/util/Spliterator$OfLong;)Ljj$/util/Spliterator$OfLong;
    .registers 3

    new-instance v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;

    invoke-direct {v0, p1, p0}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;-><init>(Ljj$/util/Spliterator$OfLong;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;)V

    return-object v0
.end method

.method protected bridge synthetic makeSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
    .registers 2

    check-cast p1, Ljj$/util/Spliterator$OfLong;

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->makeSpliterator(Ljj$/util/Spliterator$OfLong;)Ljj$/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfLong;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfLong;

    return-object v0
.end method
