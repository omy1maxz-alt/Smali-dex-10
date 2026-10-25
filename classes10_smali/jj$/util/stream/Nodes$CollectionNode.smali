.class final Ljj$/util/stream/Nodes$CollectionNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/stream/Node;


# instance fields
.field private final c:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    iget-object v1, p0, Ljj$/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aput-object v1, p1, p2

    move p2, v2

    goto :goto_6

    :cond_16
    return-void
.end method

.method public count()J
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-static {v0, p1}, Ljj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic getChild(I)Ljj$/util/stream/Node;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Node$-CC;->$default$getChild(Ljj$/util/stream/Node;I)Ljj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getChildCount()I
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Node$-CC;->$default$getChildCount(Ljj$/util/stream/Node;)I

    move-result v0

    return v0
.end method

.method public synthetic getShape()Ljj$/util/stream/StreamShape;
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Node$-CC;->$default$getShape(Ljj$/util/stream/Node;)Ljj$/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljj$/util/Spliterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-static {v0}, Ljj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/stream/Stream;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "CollectionNode[%d][%s]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/Node$-CC;->$default$truncate(Ljj$/util/stream/Node;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
