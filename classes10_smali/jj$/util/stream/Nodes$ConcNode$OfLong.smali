.class final Ljj$/util/stream/Nodes$ConcNode$OfLong;
.super Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/stream/Node$OfLong;


# direct methods
.method constructor <init>(Ljj$/util/stream/Node$OfLong;Ljj$/util/stream/Node$OfLong;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/Nodes$ConcNode$OfPrimitive;-><init>(Ljj$/util/stream/Node$OfPrimitive;Ljj$/util/stream/Node$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public synthetic copyInto([Ljava/lang/Long;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Node$OfLong$-CC;->$default$copyInto(Ljj$/util/stream/Node$OfLong;[Ljava/lang/Long;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Node$OfLong$-CC;->$default$copyInto(Ljj$/util/stream/Node$OfLong;[Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic forEach(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Node$OfLong$-CC;->$default$forEach(Ljj$/util/stream/Node$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic getShape()Ljj$/util/stream/StreamShape;
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Node$OfLong$-CC;->$default$getShape(Ljj$/util/stream/Node$OfLong;)Ljj$/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Node$OfLong$-CC;->$default$newArray(Ljj$/util/stream/Node$OfLong;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[J
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Node$OfLong$-CC;->$default$newArray(Ljj$/util/stream/Node$OfLong;I)[J

    move-result-object p1

    return-object p1
.end method

.method public spliterator()Ljj$/util/Spliterator$OfLong;
    .registers 2

    new-instance v0, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfLong;

    invoke-direct {v0, p0}, Ljj$/util/stream/Nodes$InternalNodeSpliterator$OfLong;-><init>(Ljj$/util/stream/Node$OfLong;)V

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$ConcNode$OfLong;->spliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$ConcNode$OfLong;->spliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfLong;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/Node$OfLong$-CC;->$default$truncate(Ljj$/util/stream/Node$OfLong;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfPrimitive;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/Node$OfLong$-CC;->$default$truncate(Ljj$/util/stream/Node$OfLong;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/Node$OfLong$-CC;->$default$truncate(Ljj$/util/stream/Node$OfLong;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
