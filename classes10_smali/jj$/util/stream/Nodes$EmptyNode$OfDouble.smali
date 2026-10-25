.class final Ljj$/util/stream/Nodes$EmptyNode$OfDouble;
.super Ljj$/util/stream/Nodes$EmptyNode;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/stream/Node$OfDouble;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/util/stream/Nodes$EmptyNode;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$EmptyNode$OfDouble;->asPrimitiveArray()[D

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[D
    .registers 2

    invoke-static {}, Ljj$/util/stream/Nodes;->-$$Nest$sfgetEMPTY_DOUBLE_ARRAY()[D

    move-result-object v0

    return-object v0
.end method

.method public synthetic copyInto([Ljava/lang/Double;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Node$OfDouble$-CC;->$default$copyInto(Ljj$/util/stream/Node$OfDouble;[Ljava/lang/Double;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Node$OfDouble$-CC;->$default$copyInto(Ljj$/util/stream/Node$OfDouble;[Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic forEach(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Node$OfDouble$-CC;->$default$forEach(Ljj$/util/stream/Node$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic getChild(I)Ljj$/util/stream/Node$OfPrimitive;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Node$OfPrimitive$-CC;->$default$getChild(Ljj$/util/stream/Node$OfPrimitive;I)Ljj$/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChild(I)Ljj$/util/stream/Node;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Node$OfPrimitive$-CC;->$default$getChild(Ljj$/util/stream/Node$OfPrimitive;I)Ljj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getShape()Ljj$/util/stream/StreamShape;
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Node$OfDouble$-CC;->$default$getShape(Ljj$/util/stream/Node$OfDouble;)Ljj$/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Node$OfDouble$-CC;->$default$newArray(Ljj$/util/stream/Node$OfDouble;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[D
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Node$OfDouble$-CC;->$default$newArray(Ljj$/util/stream/Node$OfDouble;I)[D

    move-result-object p1

    return-object p1
.end method

.method public spliterator()Ljj$/util/Spliterator$OfDouble;
    .registers 2

    invoke-static {}, Ljj$/util/Spliterators;->emptyDoubleSpliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$EmptyNode$OfDouble;->spliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$EmptyNode$OfDouble;->spliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfDouble;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/Node$OfDouble$-CC;->$default$truncate(Ljj$/util/stream/Node$OfDouble;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfPrimitive;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/Node$OfDouble$-CC;->$default$truncate(Ljj$/util/stream/Node$OfDouble;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/Node$OfDouble$-CC;->$default$truncate(Ljj$/util/stream/Node$OfDouble;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
