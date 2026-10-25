.class final Ljj$/util/stream/Nodes$IntSpinedNodeBuilder;
.super Ljj$/util/stream/SpinedBuffer$OfInt;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/stream/Node$OfInt;
.implements Ljj$/util/stream/Node$Builder$OfInt;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private building:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/util/stream/Nodes;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljj$/util/stream/SpinedBuffer$OfInt;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;D)V

    return-void
.end method

.method public accept(I)V
    .registers 2

    nop

    invoke-super {p0, p1}, Ljj$/util/stream/SpinedBuffer$OfInt;->accept(I)V

    return-void
.end method

.method public synthetic accept(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;J)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Integer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfInt$-CC;->$default$accept(Ljj$/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfInt$-CC;->$default$accept(Ljj$/util/stream/Sink$OfInt;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Node$OfPrimitive$-CC;->$default$asArray(Ljj$/util/stream/Node$OfPrimitive;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$IntSpinedNodeBuilder;->asPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[I
    .registers 2

    nop

    invoke-super {p0}, Ljj$/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public begin(J)V
    .registers 4

    nop

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$IntSpinedNodeBuilder;->clear()V

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/Nodes$IntSpinedNodeBuilder;->ensureCapacity(J)V

    return-void
.end method

.method public build()Ljj$/util/stream/Node$OfInt;
    .registers 1

    nop

    return-object p0
.end method

.method public bridge synthetic build()Ljj$/util/stream/Node;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$IntSpinedNodeBuilder;->build()Ljj$/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$cancellationRequested(Ljj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/Nodes$IntSpinedNodeBuilder;->copyInto([II)V

    return-void
.end method

.method public copyInto([II)V
    .registers 3

    nop

    invoke-super {p0, p1, p2}, Ljj$/util/stream/SpinedBuffer$OfInt;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic copyInto([Ljava/lang/Integer;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Node$OfInt$-CC;->$default$copyInto(Ljj$/util/stream/Node$OfInt;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Node$OfInt$-CC;->$default$copyInto(Ljj$/util/stream/Node$OfInt;[Ljava/lang/Object;I)V

    return-void
.end method

.method public end()V
    .registers 2

    nop

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/Nodes$IntSpinedNodeBuilder;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEach(Ljava/util/function/IntConsumer;)V
    .registers 2

    nop

    invoke-super {p0, p1}, Ljj$/util/stream/SpinedBuffer$OfInt;->forEach(Ljava/lang/Object;)V

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

.method public synthetic getChildCount()I
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Node$-CC;->$default$getChildCount(Ljj$/util/stream/Node;)I

    move-result v0

    return v0
.end method

.method public synthetic getShape()Ljj$/util/stream/StreamShape;
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Node$OfInt$-CC;->$default$getShape(Ljj$/util/stream/Node$OfInt;)Ljj$/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljj$/util/Spliterator$OfInt;
    .registers 2

    nop

    invoke-super {p0}, Ljj$/util/stream/SpinedBuffer$OfInt;->spliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfInt;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/Node$OfInt$-CC;->$default$truncate(Ljj$/util/stream/Node$OfInt;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfPrimitive;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/Node$OfInt$-CC;->$default$truncate(Ljj$/util/stream/Node$OfInt;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/Node$OfInt$-CC;->$default$truncate(Ljj$/util/stream/Node$OfInt;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
