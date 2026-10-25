.class abstract Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;
.super Ljj$/util/stream/Nodes$AbstractConcNode;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/stream/Node$OfPrimitive;


# direct methods
.method constructor <init>(Ljj$/util/stream/Node$OfPrimitive;Ljj$/util/stream/Node$OfPrimitive;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/Nodes$AbstractConcNode;-><init>(Ljj$/util/stream/Node;Ljj$/util/stream/Node;)V

    return-void
.end method


# virtual methods
.method public synthetic asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Node$OfPrimitive$-CC;->$default$asArray(Ljj$/util/stream/Node$OfPrimitive;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asPrimitiveArray()Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_15

    long-to-int v2, v0

    invoke-virtual {p0, v2}, Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-object v2

    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public copyInto(Ljava/lang/Object;I)V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;->left:Ljj$/util/stream/Node;

    check-cast v0, Ljj$/util/stream/Node$OfPrimitive;

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;->right:Ljj$/util/stream/Node;

    check-cast v0, Ljj$/util/stream/Node$OfPrimitive;

    iget-object v1, p0, Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;->left:Ljj$/util/stream/Node;

    check-cast v1, Ljj$/util/stream/Node$OfPrimitive;

    invoke-interface {v1}, Ljj$/util/stream/Node$OfPrimitive;->count()J

    move-result-wide v1

    long-to-int v2, v1

    add-int/2addr v2, p2

    invoke-interface {v0, p1, v2}, Ljj$/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public forEach(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;->left:Ljj$/util/stream/Node;

    check-cast v0, Ljj$/util/stream/Node$OfPrimitive;

    invoke-interface {v0, p1}, Ljj$/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    iget-object v0, p0, Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;->right:Ljj$/util/stream/Node;

    check-cast v0, Ljj$/util/stream/Node$OfPrimitive;

    invoke-interface {v0, p1}, Ljj$/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getChild(I)Ljj$/util/stream/Node$OfPrimitive;
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/Nodes$AbstractConcNode;->getChild(I)Ljj$/util/stream/Node;

    move-result-object p1

    check-cast p1, Ljj$/util/stream/Node$OfPrimitive;

    return-object p1
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Node$OfPrimitive$-CC;->$default$spliterator(Ljj$/util/stream/Node$OfPrimitive;)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    cmp-long v7, v0, v2

    if-gez v7, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;->left:Ljj$/util/stream/Node;

    iget-object v2, p0, Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;->right:Ljj$/util/stream/Node;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v4

    aput-object v2, v3, v6

    const-string v0, "%s[%s.%s]"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;->count()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object v1, v2, v4

    const-string v0, "%s[size=%d]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/Node$OfPrimitive$-CC;->$default$truncate(Ljj$/util/stream/Node$OfPrimitive;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
