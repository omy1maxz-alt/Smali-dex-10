.class final Ljj$/util/stream/Nodes$SpinedNodeBuilder;
.super Ljj$/util/stream/SpinedBuffer;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/stream/Node;
.implements Ljj$/util/stream/Node$Builder;


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

    invoke-direct {p0}, Ljj$/util/stream/SpinedBuffer;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/Nodes$SpinedNodeBuilder;->building:Z

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

.method public synthetic accept(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;J)V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .registers 2

    nop

    invoke-super {p0, p1}, Ljj$/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 3

    nop

    invoke-super {p0, p1}, Ljj$/util/stream/SpinedBuffer;->asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public begin(J)V
    .registers 4

    nop

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$SpinedNodeBuilder;->clear()V

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/Nodes$SpinedNodeBuilder;->ensureCapacity(J)V

    return-void
.end method

.method public build()Ljj$/util/stream/Node;
    .registers 1

    nop

    return-object p0
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$cancellationRequested(Ljj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .registers 3

    nop

    invoke-super {p0, p1, p2}, Ljj$/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    return-void
.end method

.method public end()V
    .registers 2

    nop

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 2

    nop

    invoke-super {p0, p1}, Ljj$/util/stream/SpinedBuffer;->forEach(Ljava/util/function/Consumer;)V

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

    nop

    invoke-super {p0}, Ljj$/util/stream/SpinedBuffer;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/Node$-CC;->$default$truncate(Ljj$/util/stream/Node;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
