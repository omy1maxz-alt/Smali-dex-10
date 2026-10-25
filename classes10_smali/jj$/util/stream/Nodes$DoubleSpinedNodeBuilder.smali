.class final Ljj$/util/stream/Nodes$DoubleSpinedNodeBuilder;
.super Ljj$/util/stream/SpinedBuffer$OfDouble;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/stream/Node$OfDouble;
.implements Ljj$/util/stream/Node$Builder$OfDouble;


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

    invoke-direct {p0}, Ljj$/util/stream/SpinedBuffer$OfDouble;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 3

    nop

    invoke-super {p0, p1, p2}, Ljj$/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    return-void
.end method

.method public synthetic accept(I)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;I)V

    return-void
.end method

.method public synthetic accept(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;J)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Double;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfDouble$-CC;->$default$accept(Ljj$/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfDouble$-CC;->$default$accept(Ljj$/util/stream/Sink$OfDouble;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$DoubleSpinedNodeBuilder;->asPrimitiveArray()[D

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[D
    .registers 2

    nop

    invoke-super {p0}, Ljj$/util/stream/SpinedBuffer$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public begin(J)V
    .registers 4

    nop

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$DoubleSpinedNodeBuilder;->clear()V

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/Nodes$DoubleSpinedNodeBuilder;->ensureCapacity(J)V

    return-void
.end method

.method public build()Ljj$/util/stream/Node$OfDouble;
    .registers 1

    nop

    return-object p0
.end method

.method public bridge synthetic build()Ljj$/util/stream/Node;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$DoubleSpinedNodeBuilder;->build()Ljj$/util/stream/Node$OfDouble;

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

    check-cast p1, [D

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/Nodes$DoubleSpinedNodeBuilder;->copyInto([DI)V

    return-void
.end method

.method public copyInto([DI)V
    .registers 3

    nop

    invoke-super {p0, p1, p2}, Ljj$/util/stream/SpinedBuffer$OfDouble;->copyInto(Ljava/lang/Object;I)V

    return-void
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

.method public end()V
    .registers 2

    nop

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/Nodes$DoubleSpinedNodeBuilder;->forEach(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEach(Ljava/util/function/DoubleConsumer;)V
    .registers 2

    nop

    invoke-super {p0, p1}, Ljj$/util/stream/SpinedBuffer$OfDouble;->forEach(Ljava/lang/Object;)V

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

    invoke-static {p0}, Ljj$/util/stream/Node$OfDouble$-CC;->$default$getShape(Ljj$/util/stream/Node$OfDouble;)Ljj$/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljj$/util/Spliterator$OfDouble;
    .registers 2

    nop

    invoke-super {p0}, Ljj$/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$DoubleSpinedNodeBuilder;->spliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$DoubleSpinedNodeBuilder;->spliterator()Ljj$/util/Spliterator$OfDouble;

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
