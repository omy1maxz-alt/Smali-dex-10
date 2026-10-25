.class final Ljj$/util/stream/Nodes$ConcNode;
.super Ljj$/util/stream/Nodes$AbstractConcNode;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/stream/Node;


# direct methods
.method constructor <init>(Ljj$/util/stream/Node;Ljj$/util/stream/Node;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/Nodes$AbstractConcNode;-><init>(Ljj$/util/stream/Node;Ljj$/util/stream/Node;)V

    return-void
.end method


# virtual methods
.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 7

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_17

    long-to-int v2, v0

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljj$/util/stream/Nodes$ConcNode;->copyInto([Ljava/lang/Object;I)V

    return-object v2

    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/stream/Nodes$ConcNode;->left:Ljj$/util/stream/Node;

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    iget-object v0, p0, Ljj$/util/stream/Nodes$ConcNode;->right:Ljj$/util/stream/Node;

    iget-object v1, p0, Ljj$/util/stream/Nodes$ConcNode;->left:Ljj$/util/stream/Node;

    invoke-interface {v1}, Ljj$/util/stream/Node;->count()J

    move-result-wide v1

    long-to-int v2, v1

    add-int/2addr v2, p2

    invoke-interface {v0, p1, v2}, Ljj$/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Nodes$ConcNode;->left:Ljj$/util/stream/Node;

    invoke-interface {v0, p1}, Ljj$/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Ljj$/util/stream/Nodes$ConcNode;->right:Ljj$/util/stream/Node;

    invoke-interface {v0, p1}, Ljj$/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public spliterator()Ljj$/util/Spliterator;
    .registers 2

    new-instance v0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;

    invoke-direct {v0, p0}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;-><init>(Ljj$/util/stream/Node;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-gez v6, :cond_1e

    iget-object v0, p0, Ljj$/util/stream/Nodes$ConcNode;->left:Ljj$/util/stream/Node;

    iget-object v1, p0, Ljj$/util/stream/Nodes$ConcNode;->right:Ljj$/util/stream/Node;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    const-string v0, "ConcNode[%s.%s]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Ljj$/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "ConcNode[size=%d]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 18

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_f

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_f

    return-object p0

    :cond_f
    iget-object v0, p0, Ljj$/util/stream/Nodes$ConcNode;->left:Ljj$/util/stream/Node;

    invoke-interface {v0}, Ljj$/util/stream/Node;->count()J

    move-result-wide v4

    cmp-long v0, p1, v4

    if-ltz v0, :cond_26

    iget-object v6, p0, Ljj$/util/stream/Nodes$ConcNode;->right:Ljj$/util/stream/Node;

    sub-long v7, p1, v4

    sub-long v9, p3, v4

    move-object/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Ljj$/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_26
    cmp-long v0, p3, v4

    if-gtz v0, :cond_35

    iget-object v6, p0, Ljj$/util/stream/Nodes$ConcNode;->left:Ljj$/util/stream/Node;

    move-wide v7, p1

    move-wide v9, p3

    move-object/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Ljj$/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_35
    invoke-virtual {p0}, Ljj$/util/stream/Nodes$ConcNode;->getShape()Ljj$/util/stream/StreamShape;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/stream/Nodes$ConcNode;->left:Ljj$/util/stream/Node;

    move-wide v2, p1

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Ljj$/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v1

    iget-object v6, p0, Ljj$/util/stream/Nodes$ConcNode;->right:Ljj$/util/stream/Node;

    sub-long v9, p3, v4

    const-wide/16 v7, 0x0

    move-object/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Ljj$/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljj$/util/stream/Nodes;->conc(Ljj$/util/stream/StreamShape;Ljj$/util/stream/Node;Ljj$/util/stream/Node;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method
