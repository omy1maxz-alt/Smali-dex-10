.class final Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;
.super Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfInt;
.implements Ljava/util/function/IntConsumer;


# instance fields
.field tmpValue:I


# direct methods
.method constructor <init>(Ljj$/util/Spliterator$OfInt;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljj$/util/Spliterator$OfPrimitive;JJ)V

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator$OfInt;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljj$/util/Spliterator$OfPrimitive;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 2

    iput p1, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->tmpValue:I

    return-void
.end method

.method protected bridge synthetic acceptConsumed(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->acceptConsumed(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method protected acceptConsumed(Ljava/util/function/IntConsumer;)V
    .registers 3

    iget v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->tmpValue:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method protected bufferCreate(I)Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;
    .registers 3

    new-instance v0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;

    invoke-direct {v0, p1}, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic bufferCreate(I)Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->bufferCreate(I)Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected makeSpliterator(Ljj$/util/Spliterator$OfInt;)Ljj$/util/Spliterator$OfInt;
    .registers 3

    new-instance v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;

    invoke-direct {v0, p1, p0}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;-><init>(Ljj$/util/Spliterator$OfInt;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;)V

    return-object v0
.end method

.method protected bridge synthetic makeSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
    .registers 2

    check-cast p1, Ljj$/util/Spliterator$OfInt;

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->makeSpliterator(Ljj$/util/Spliterator$OfInt;)Ljj$/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfInt;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfInt;

    return-object v0
.end method
