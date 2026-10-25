.class final Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfInt;
.super Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/Spliterator$OfInt;


# direct methods
.method constructor <init>(Ljj$/util/stream/Node$OfInt;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;-><init>(Ljj$/util/stream/Node$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfInt;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfInt;

    return-object v0
.end method
