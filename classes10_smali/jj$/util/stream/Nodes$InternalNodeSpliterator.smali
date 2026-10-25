.class abstract Ljj$/util/stream/Nodes$InternalNodeSpliterator;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/Spliterator;


# instance fields
.field curChildIndex:I

.field curNode:Ljj$/util/stream/Node;

.field lastNodeSpliterator:Ljj$/util/Spliterator;

.field tryAdvanceSpliterator:Ljj$/util/Spliterator;

.field tryAdvanceStack:Ljava/util/Deque;


# direct methods
.method constructor <init>(Ljj$/util/stream/Node;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method public final estimateSize()J
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljj$/util/Spliterator;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0

    :cond_12
    const-wide/16 v0, 0x0

    iget v2, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    :goto_16
    iget-object v3, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    invoke-interface {v3}, Ljj$/util/stream/Node;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2c

    iget-object v3, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    invoke-interface {v3, v2}, Ljj$/util/stream/Node;->getChild(I)Ljj$/util/stream/Node;

    move-result-object v3

    invoke-interface {v3}, Ljj$/util/stream/Node;->count()J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2c
    return-wide v0
.end method

.method protected final findNextLeafNode(Ljava/util/Deque;)Ljj$/util/stream/Node;
    .registers 8

    const/4 v0, 0x0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/Node;

    move-object v0, v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljj$/util/stream/Node;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1b

    invoke-interface {v0}, Ljj$/util/stream/Node;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    return-object v0

    :cond_1b
    invoke-interface {v0}, Ljj$/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_21
    if-ltz v1, :cond_2d

    invoke-interface {v0, v1}, Ljj$/util/stream/Node;->getChild(I)Ljj$/util/stream/Node;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    :cond_2d
    goto :goto_1

    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .registers 2

    invoke-static {p0}, Ljj$/util/Spliterator$-CC;->$default$getComparator(Ljj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .registers 3

    invoke-static {p0}, Ljj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$hasCharacteristics(Ljj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method protected final initStack()Ljava/util/Deque;
    .registers 4

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iget-object v1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    invoke-interface {v1}, Ljj$/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    iget v2, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    if-lt v1, v2, :cond_1f

    iget-object v2, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    invoke-interface {v2, v1}, Ljj$/util/stream/Node;->getChild(I)Ljj$/util/stream/Node;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_1f
    return-object v0
.end method

.method protected final initTryAdvance()Z
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljj$/util/Spliterator;

    if-nez v0, :cond_2b

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljj$/util/Spliterator;

    if-nez v0, :cond_27

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->initStack()Ljava/util/Deque;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v0}, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Ljj$/util/stream/Node;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljj$/util/stream/Node;->spliterator()Ljj$/util/Spliterator;

    move-result-object v1

    iput-object v1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljj$/util/Spliterator;

    goto :goto_2b

    :cond_23
    const/4 v2, 0x0

    iput-object v2, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    return v1

    :cond_27
    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljj$/util/Spliterator;

    iput-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljj$/util/Spliterator;

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    return v0
.end method

.method public final trySplit()Ljj$/util/Spliterator;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    if-eqz v0, :cond_66

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljj$/util/Spliterator;

    if-eqz v0, :cond_9

    goto :goto_66

    :cond_9
    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljj$/util/Spliterator;

    if-eqz v0, :cond_14

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_14
    iget v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    iget-object v1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    invoke-interface {v1}, Ljj$/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_31

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    iget v1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Ljj$/util/stream/Node;->getChild(I)Ljj$/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/stream/Node;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_31
    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    iget v1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Ljj$/util/stream/Node;->getChild(I)Ljj$/util/stream/Node;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    invoke-interface {v0}, Ljj$/util/stream/Node;->getChildCount()I

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    invoke-interface {v0}, Ljj$/util/stream/Node;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljj$/util/Spliterator;

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_52
    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    iget-object v0, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljj$/util/stream/Node;

    iget v1, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Ljj$/util/stream/Node;->getChild(I)Ljj$/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/stream/Node;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_66
    :goto_66
    const/4 v0, 0x0

    return-object v0
.end method
