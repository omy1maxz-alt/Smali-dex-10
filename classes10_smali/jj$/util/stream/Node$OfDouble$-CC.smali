.class public final synthetic Ljj$/util/stream/Node$OfDouble$-CC;
.super Ljava/lang/Object;
.source "Node.java"


# direct methods
.method public static $default$copyInto(Ljj$/util/stream/Node$OfDouble;[Ljava/lang/Double;I)V
    .registers 8

    sget-boolean v0, Ljj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfDouble.copyInto(Double[], int)"

    invoke-static {v0, v1}, Ljj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_d
    invoke-interface {p0}, Ljj$/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x0

    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_24

    add-int v2, p2, v1

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    return-void
.end method

.method public static bridge synthetic $default$copyInto(Ljj$/util/stream/Node$OfDouble;[Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, [Ljava/lang/Double;

    invoke-interface {p0, p1, p2}, Ljj$/util/stream/Node$OfDouble;->copyInto([Ljava/lang/Double;I)V

    return-void
.end method

.method public static $default$forEach(Ljj$/util/stream/Node$OfDouble;Ljava/util/function/Consumer;)V
    .registers 4

    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, v0}, Ljj$/util/stream/Node$OfDouble;->forEach(Ljava/lang/Object;)V

    goto :goto_21

    :cond_b
    sget-boolean v0, Ljj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {v0, v1}, Ljj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_18
    invoke-interface {p0}, Ljj$/util/stream/Node$OfDouble;->spliterator()Ljj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfDouble;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/Consumer;)V

    :goto_21
    return-void
.end method

.method public static $default$getShape(Ljj$/util/stream/Node$OfDouble;)Ljj$/util/stream/StreamShape;
    .registers 2

    sget-object v0, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    return-object v0
.end method

.method public static bridge synthetic $default$newArray(Ljj$/util/stream/Node$OfDouble;I)Ljava/lang/Object;
    .registers 2

    invoke-interface {p0, p1}, Ljj$/util/stream/Node$OfDouble;->newArray(I)[D

    move-result-object p1

    return-object p1
.end method

.method public static $default$newArray(Ljj$/util/stream/Node$OfDouble;I)[D
    .registers 3

    new-array v0, p1, [D

    return-object v0
.end method

.method public static $default$truncate(Ljj$/util/stream/Node$OfDouble;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfDouble;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_f

    invoke-interface {p0}, Ljj$/util/stream/Node$OfDouble;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_f

    return-object p0

    :cond_f
    sub-long v0, p3, p1

    invoke-interface {p0}, Ljj$/util/stream/Node$OfDouble;->spliterator()Ljj$/util/Spliterator$OfPrimitive;

    move-result-object v2

    check-cast v2, Ljj$/util/Spliterator$OfDouble;

    invoke-static {v0, v1}, Ljj$/util/stream/Nodes;->doubleBuilder(J)Ljj$/util/stream/Node$Builder$OfDouble;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Ljj$/util/stream/Node$Builder$OfDouble;->begin(J)V

    const/4 v4, 0x0

    :goto_1f
    int-to-long v5, v4

    cmp-long v7, v5, p1

    if-gez v7, :cond_32

    new-instance v5, Ljj$/util/stream/Node$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljj$/util/stream/Node$OfDouble$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v5}, Ljj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v5

    if-eqz v5, :cond_32

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_32
    invoke-interface {p0}, Ljj$/util/stream/Node$OfDouble;->count()J

    move-result-wide v4

    cmp-long v6, p3, v4

    if-nez v6, :cond_3e

    invoke-interface {v2, v3}, Ljj$/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_4d

    :cond_3e
    const/4 v4, 0x0

    :goto_3f
    int-to-long v5, v4

    cmp-long v7, v5, v0

    if-gez v7, :cond_4d

    invoke-interface {v2, v3}, Ljj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v5

    if-eqz v5, :cond_4d

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_4d
    :goto_4d
    invoke-interface {v3}, Ljj$/util/stream/Node$Builder$OfDouble;->end()V

    invoke-interface {v3}, Ljj$/util/stream/Node$Builder$OfDouble;->build()Ljj$/util/stream/Node$OfDouble;

    move-result-object v4

    return-object v4
.end method

.method public static bridge synthetic $default$truncate(Ljj$/util/stream/Node$OfDouble;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfPrimitive;
    .registers 6

    invoke-interface/range {p0 .. p5}, Ljj$/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$truncate(Ljj$/util/stream/Node$OfDouble;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    invoke-interface/range {p0 .. p5}, Ljj$/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$truncate$0(D)V
    .registers 2

    return-void
.end method
