.class final Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfInt;
.super Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfInt;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfInt;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfInt;

    return-object v0
.end method
