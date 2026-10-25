.class public final synthetic Ljj$/util/stream/Node$OfInt$-CC;
.super Ljava/lang/Object;
.source "Node.java"


# direct methods
.method public static $default$copyInto(Ljj$/util/stream/Node$OfInt;[Ljava/lang/Integer;I)V
    .registers 7

    sget-boolean v0, Ljj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfInt.copyInto(Integer[], int)"

    invoke-static {v0, v1}, Ljj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_d
    invoke-interface {p0}, Ljj$/util/stream/Node$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_24

    add-int v2, p2, v1

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    return-void
.end method

.method public static bridge synthetic $default$copyInto(Ljj$/util/stream/Node$OfInt;[Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, [Ljava/lang/Integer;

    invoke-interface {p0, p1, p2}, Ljj$/util/stream/Node$OfInt;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public static $default$forEach(Ljj$/util/stream/Node$OfInt;Ljava/util/function/Consumer;)V
    .registers 4

    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Ljava/util/function/IntConsumer;

    invoke-interface {p0, v0}, Ljj$/util/stream/Node$OfInt;->forEach(Ljava/lang/Object;)V

    goto :goto_21

    :cond_b
    sget-boolean v0, Ljj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfInt.forEachRemaining(Consumer)"

    invoke-static {v0, v1}, Ljj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_18
    invoke-interface {p0}, Ljj$/util/stream/Node$OfInt;->spliterator()Ljj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/Consumer;)V

    :goto_21
    return-void
.end method

.method public static $default$getShape(Ljj$/util/stream/Node$OfInt;)Ljj$/util/stream/StreamShape;
    .registers 2

    sget-object v0, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    return-object v0
.end method

.method public static bridge synthetic $default$newArray(Ljj$/util/stream/Node$OfInt;I)Ljava/lang/Object;
    .registers 2

    invoke-interface {p0, p1}, Ljj$/util/stream/Node$OfInt;->newArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public static $default$newArray(Ljj$/util/stream/Node$OfInt;I)[I
    .registers 3

    new-array v0, p1, [I

    return-object v0
.end method

.method public static $default$truncate(Ljj$/util/stream/Node$OfInt;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfInt;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_f

    invoke-interface {p0}, Ljj$/util/stream/Node$OfInt;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_f

    return-object p0

    :cond_f
    sub-long v0, p3, p1

    invoke-interface {p0}, Ljj$/util/stream/Node$OfInt;->spliterator()Ljj$/util/Spliterator$OfPrimitive;

    move-result-object v2

    check-cast v2, Ljj$/util/Spliterator$OfInt;

    invoke-static {v0, v1}, Ljj$/util/stream/Nodes;->intBuilder(J)Ljj$/util/stream/Node$Builder$OfInt;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Ljj$/util/stream/Node$Builder$OfInt;->begin(J)V

    const/4 v4, 0x0

    :goto_1f
    int-to-long v5, v4

    cmp-long v7, v5, p1

    if-gez v7, :cond_32

    new-instance v5, Ljj$/util/stream/Node$OfInt$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljj$/util/stream/Node$OfInt$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v5}, Ljj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v5

    if-eqz v5, :cond_32

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_32
    invoke-interface {p0}, Ljj$/util/stream/Node$OfInt;->count()J

    move-result-wide v4

    cmp-long v6, p3, v4

    if-nez v6, :cond_3e

    invoke-interface {v2, v3}, Ljj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_4d

    :cond_3e
    const/4 v4, 0x0

    :goto_3f
    int-to-long v5, v4

    cmp-long v7, v5, v0

    if-gez v7, :cond_4d

    invoke-interface {v2, v3}, Ljj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v5

    if-eqz v5, :cond_4d

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_4d
    :goto_4d
    invoke-interface {v3}, Ljj$/util/stream/Node$Builder$OfInt;->end()V

    invoke-interface {v3}, Ljj$/util/stream/Node$Builder$OfInt;->build()Ljj$/util/stream/Node$OfInt;

    move-result-object v4

    return-object v4
.end method

.method public static bridge synthetic $default$truncate(Ljj$/util/stream/Node$OfInt;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfPrimitive;
    .registers 6

    invoke-interface/range {p0 .. p5}, Ljj$/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$truncate(Ljj$/util/stream/Node$OfInt;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    invoke-interface/range {p0 .. p5}, Ljj$/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$truncate$0(I)V
    .registers 1

    return-void
.end method
