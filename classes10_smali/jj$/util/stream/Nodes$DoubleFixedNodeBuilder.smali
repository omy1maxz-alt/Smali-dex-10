.class final Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;
.super Ljj$/util/stream/Nodes$DoubleArrayNode;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/stream/Node$Builder$OfDouble;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/util/stream/Nodes;

    return-void
.end method

.method constructor <init>(J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/Nodes$DoubleArrayNode;-><init>(J)V

    nop

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 7

    iget v0, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v1, v1

    if-ge v0, v1, :cond_12

    iget-object v0, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    iget v1, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    aput-wide p1, v0, v1

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Accept exceeded fixed size of %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public begin(J)V
    .registers 8

    iget-object v0, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v0, v0

    int-to-long v0, v0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_c

    iput v2, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v3, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const/4 v1, 0x1

    aput-object v3, v4, v1

    const-string v1, "Begin size %d is not equal to fixed size %d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Ljj$/util/stream/Node$OfDouble;
    .registers 6

    iget v0, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v1, v1

    if-lt v0, v1, :cond_8

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "Current size %d is less than fixed size %d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic build()Ljj$/util/stream/Node;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->build()Ljj$/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$cancellationRequested(Ljj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public end()V
    .registers 6

    iget v0, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v1, v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "End size %d is less than fixed size %d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v0, v0

    iget v1, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "DoubleFixedNodeBuilder[%d][%s]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
