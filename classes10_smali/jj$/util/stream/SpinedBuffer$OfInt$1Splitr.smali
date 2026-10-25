.class Ljj$/util/stream/SpinedBuffer$OfInt$1Splitr;
.super Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SpinedBuffer.java"

# interfaces
.implements Ljj$/util/Spliterator$OfInt;


# instance fields
.field final synthetic this$0:Ljj$/util/stream/SpinedBuffer$OfInt;


# direct methods
.method constructor <init>(Ljj$/util/stream/SpinedBuffer$OfInt;IIII)V
    .registers 6

    iput-object p1, p0, Ljj$/util/stream/SpinedBuffer$OfInt$1Splitr;->this$0:Ljj$/util/stream/SpinedBuffer$OfInt;

    invoke-direct/range {p0 .. p5}, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Ljj$/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    return-void
.end method


# virtual methods
.method bridge synthetic arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    check-cast p1, [I

    check-cast p3, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljj$/util/stream/SpinedBuffer$OfInt$1Splitr;->arrayForOne([IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method arrayForOne([IILjava/util/function/IntConsumer;)V
    .registers 5

    aget v0, p1, p2

    invoke-interface {p3, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method arraySpliterator([III)Ljj$/util/Spliterator$OfInt;
    .registers 5

    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljj$/util/DesugarArrays;->spliterator([III)Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic arraySpliterator(Ljava/lang/Object;II)Ljj$/util/Spliterator$OfPrimitive;
    .registers 4

    check-cast p1, [I

    invoke-virtual {p0, p1, p2, p3}, Ljj$/util/stream/SpinedBuffer$OfInt$1Splitr;->arraySpliterator([III)Ljj$/util/Spliterator$OfInt;

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

    invoke-super {p0, p1}, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method bridge synthetic newSpliterator(IIII)Ljj$/util/Spliterator$OfPrimitive;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Ljj$/util/stream/SpinedBuffer$OfInt$1Splitr;->newSpliterator(IIII)Ljj$/util/stream/SpinedBuffer$OfInt$1Splitr;

    move-result-object p1

    return-object p1
.end method

.method newSpliterator(IIII)Ljj$/util/stream/SpinedBuffer$OfInt$1Splitr;
    .registers 11

    new-instance v0, Ljj$/util/stream/SpinedBuffer$OfInt$1Splitr;

    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfInt$1Splitr;->this$0:Ljj$/util/stream/SpinedBuffer$OfInt;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/SpinedBuffer$OfInt$1Splitr;-><init>(Ljj$/util/stream/SpinedBuffer$OfInt;IIII)V

    return-object v0
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfInt;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfInt;

    return-object v0
.end method
