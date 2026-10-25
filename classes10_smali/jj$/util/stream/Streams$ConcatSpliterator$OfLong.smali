.class Ljj$/util/stream/Streams$ConcatSpliterator$OfLong;
.super Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;
.source "Streams.java"

# interfaces
.implements Ljj$/util/Spliterator$OfLong;


# direct methods
.method constructor <init>(Ljj$/util/Spliterator$OfLong;Ljj$/util/Spliterator$OfLong;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;-><init>(Ljj$/util/Spliterator$OfPrimitive;Ljj$/util/Spliterator$OfPrimitive;Ljj$/util/stream/Streams-IA;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfLong;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfLong;

    return-object v0
.end method
