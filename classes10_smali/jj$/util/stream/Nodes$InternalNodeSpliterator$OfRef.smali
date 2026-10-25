.class final Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;
.super Ljj$/util/stream/Nodes$InternalNodeSpliterator;
.source "Nodes.java"


# direct methods
.method constructor <init>(Ljj$/util/stream/Node;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/stream/Nodes$InternalNodeSpliterator;-><init>(Ljj$/util/stream/Node;)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljj$/util/stream/Node;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljj$/util/Spliterator;

    if-nez v0, :cond_26

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljj$/util/Spliterator;

    if-nez v0, :cond_20

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->initStack()Ljava/util/Deque;

    move-result-object v0

    :goto_11
    invoke-virtual {p0, v0}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->findNextLeafNode(Ljava/util/Deque;)Ljj$/util/stream/Node;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1c

    invoke-interface {v2, p1}, Ljj$/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_11

    :cond_1c
    const/4 v1, 0x0

    iput-object v1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljj$/util/stream/Node;

    goto :goto_2d

    :cond_20
    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_2d

    :cond_26
    :goto_26
    invoke-virtual {p0, p1}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_26

    :cond_2d
    :goto_2d
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->initTryAdvance()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljj$/util/Spliterator;

    if-nez v1, :cond_29

    iget-object v1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v1}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->findNextLeafNode(Ljava/util/Deque;)Ljj$/util/stream/Node;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-interface {v1}, Ljj$/util/stream/Node;->spliterator()Ljj$/util/Spliterator;

    move-result-object v2

    iput-object v2, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljj$/util/Spliterator;

    iget-object v2, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v2, p1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v2

    return v2

    :cond_29
    const/4 v1, 0x0

    iput-object v1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljj$/util/stream/Node;

    :cond_2c
    return v0
.end method
