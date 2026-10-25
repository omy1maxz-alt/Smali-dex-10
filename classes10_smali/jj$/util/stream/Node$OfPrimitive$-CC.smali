.class public final synthetic Ljj$/util/stream/Node$OfPrimitive$-CC;
.super Ljava/lang/Object;
.source "Node.java"


# direct methods
.method public static $default$asArray(Ljj$/util/stream/Node$OfPrimitive;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 7

    sget-boolean v0, Ljj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfPrimitive.asArray"

    invoke-static {v0, v1}, Ljj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_d
    invoke-interface {p0}, Ljj$/util/stream/Node$OfPrimitive;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_28

    invoke-interface {p0}, Ljj$/util/stream/Node$OfPrimitive;->count()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {p1, v3}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Ljj$/util/stream/Node$OfPrimitive;->copyInto([Ljava/lang/Object;I)V

    return-object v2

    :cond_28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static $default$getChild(Ljj$/util/stream/Node$OfPrimitive;I)Ljj$/util/stream/Node$OfPrimitive;
    .registers 3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static bridge synthetic $default$getChild(Ljj$/util/stream/Node$OfPrimitive;I)Ljj$/util/stream/Node;
    .registers 2

    invoke-interface {p0, p1}, Ljj$/util/stream/Node$OfPrimitive;->getChild(I)Ljj$/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$spliterator(Ljj$/util/stream/Node$OfPrimitive;)Ljj$/util/Spliterator;
    .registers 2

    invoke-interface {p0}, Ljj$/util/stream/Node$OfPrimitive;->spliterator()Ljj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$truncate(Ljj$/util/stream/Node$OfPrimitive;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    invoke-interface/range {p0 .. p5}, Ljj$/util/stream/Node$OfPrimitive;->truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method
