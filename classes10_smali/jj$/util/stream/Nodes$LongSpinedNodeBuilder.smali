.class final Ljj$/util/stream/Nodes$LongSpinedNodeBuilder;
.super Ljj$/util/stream/SpinedBuffer$OfLong;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/stream/Node$OfLong;
.implements Ljj$/util/stream/Node$Builder$OfLong;


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

    invoke-direct {p0}, Ljj$/util/stream/SpinedBuffer$OfLong;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;D)V

    return-void
.end method

.method public synthetic accept(I)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;I)V

    return-void
.end method

.method public accept(J)V
    .registers 3

    nop

    invoke-super {p0, p1, p2}, Ljj$/util/stream/SpinedBuffer$OfLong;->accept(J)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Long;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfLong$-CC;->$default$accept(Ljj$/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfLong$-CC;->$default$accept(Ljj$/util/stream/Sink$OfLong;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$LongSpinedNodeBuilder;->asPrimitiveArray()[J

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[J
    .registers 2

    nop

    invoke-super {p0}, Ljj$/util/stream/SpinedBuffer$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public begin(J)V
    .registers 4

    nop

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$LongSpinedNodeBuilder;->clear()V

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/Nodes$LongSpinedNodeBuilder;->ensureCapacity(J)V

    return-void
.end method

.method public build()Ljj$/util/stream/Node$OfLong;
    .registers 1

    nop

    return-object p0
.end method

.method public bridge synthetic build()Ljj$/util/stream/Node;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$LongSpinedNodeBuilder;->build()Ljj$/util/stream/Node$OfLong;

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

    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/Nodes$LongSpinedNodeBuilder;->copyInto([JI)V

    return-void
.end method

.method public copyInto([JI)V
    .registers 3

    nop

    invoke-super {p0, p1, p2}, Ljj$/util/stream/SpinedBuffer$OfLong;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

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

.method public end()V
    .registers 2

    nop

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/Nodes$LongSpinedNodeBuilder;->forEach(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEach(Ljava/util/function/LongConsumer;)V
    .registers 2

    nop

    invoke-super {p0, p1}, Ljj$/util/stream/SpinedBuffer$OfLong;->forEach(Ljava/lang/Object;)V

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

    invoke-static {p0}, Ljj$/util/stream/Node$OfLong$-CC;->$default$getShape(Ljj$/util/stream/Node$OfLong;)Ljj$/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljj$/util/Spliterator$OfLong;
    .registers 2

    nop

    invoke-super {p0}, Ljj$/util/stream/SpinedBuffer$OfLong;->spliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$LongSpinedNodeBuilder;->spliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$LongSpinedNodeBuilder;->spliterator()Ljj$/util/Spliterator$OfLong;

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
