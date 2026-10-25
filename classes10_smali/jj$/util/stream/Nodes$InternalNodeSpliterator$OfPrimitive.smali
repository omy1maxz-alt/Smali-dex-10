.class abstract Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;
.super Ljj$/util/stream/Nodes$InternalNodeSpliterator;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/Spliterator$OfPrimitive;


# direct methods
.method constructor <init>(Ljj$/util/stream/Node$OfPrimitive;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/stream/Nodes$InternalNodeSpliterator;-><init>(Ljj$/util/stream/Node;)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->curNode:Ljj$/util/stream/Node;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Ljj$/util/Spliterator;

    if-nez v0, :cond_2a

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->lastNodeSpliterator:Ljj$/util/Spliterator;

    if-nez v0, :cond_22

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->initStack()Ljava/util/Deque;

    move-result-object v0

    :goto_11
    invoke-virtual {p0, v0}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->findNextLeafNode(Ljava/util/Deque;)Ljj$/util/stream/Node;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/Node$OfPrimitive;

    move-object v2, v1

    if-eqz v1, :cond_1e

    invoke-interface {v2, p1}, Ljj$/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    goto :goto_11

    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->curNode:Ljj$/util/stream/Node;

    goto :goto_31

    :cond_22
    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->lastNodeSpliterator:Ljj$/util/Spliterator;

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    goto :goto_31

    :cond_2a
    :goto_2a
    invoke-virtual {p0, p1}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_2a

    :cond_31
    :goto_31
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .registers 5

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->initTryAdvance()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Ljj$/util/Spliterator;

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->lastNodeSpliterator:Ljj$/util/Spliterator;

    if-nez v1, :cond_2f

    iget-object v1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v1}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->findNextLeafNode(Ljava/util/Deque;)Ljj$/util/stream/Node;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/Node$OfPrimitive;

    if-eqz v1, :cond_2f

    invoke-interface {v1}, Ljj$/util/stream/Node$OfPrimitive;->spliterator()Ljj$/util/Spliterator$OfPrimitive;

    move-result-object v2

    iput-object v2, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Ljj$/util/Spliterator;

    iget-object v2, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Ljj$/util/Spliterator;

    check-cast v2, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v2, p1}, Ljj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_2f
    const/4 v1, 0x0

    iput-object v1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->curNode:Ljj$/util/stream/Node;

    :cond_32
    return v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
