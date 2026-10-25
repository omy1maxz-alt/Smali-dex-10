.class final Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;
.super Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfLong;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfLong;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfLong;

    return-object v0
.end method
