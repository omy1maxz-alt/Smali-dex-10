.class Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;
.super Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfPrimitive;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->get()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->get()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
