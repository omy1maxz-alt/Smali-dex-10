.class public final synthetic Ljj$/util/stream/Node$-CC;
.super Ljava/lang/Object;
.source "Node.java"


# direct methods
.method public static $default$getChild(Ljj$/util/stream/Node;I)Ljj$/util/stream/Node;
    .registers 3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static $default$getChildCount(Ljj$/util/stream/Node;)I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static $default$getShape(Ljj$/util/stream/Node;)Ljj$/util/stream/StreamShape;
    .registers 2

    sget-object v0, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    return-object v0
.end method

.method public static $default$truncate(Ljj$/util/stream/Node;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_f

    invoke-interface {p0}, Ljj$/util/stream/Node;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_f

    return-object p0

    :cond_f
    invoke-interface {p0}, Ljj$/util/stream/Node;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    sub-long v1, p3, p1

    invoke-static {v1, v2, p5}, Ljj$/util/stream/Nodes;->builder(JLjava/util/function/IntFunction;)Ljj$/util/stream/Node$Builder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljj$/util/stream/Node$Builder;->begin(J)V

    const/4 v4, 0x0

    :goto_1d
    int-to-long v5, v4

    cmp-long v7, v5, p1

    if-gez v7, :cond_30

    new-instance v5, Ljj$/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljj$/util/stream/Node$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v5}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_30

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_30
    invoke-interface {p0}, Ljj$/util/stream/Node;->count()J

    move-result-wide v4

    cmp-long v6, p3, v4

    if-nez v6, :cond_3c

    invoke-interface {v0, v3}, Ljj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_4b

    :cond_3c
    const/4 v4, 0x0

    :goto_3d
    int-to-long v5, v4

    cmp-long v7, v5, v1

    if-gez v7, :cond_4b

    invoke-interface {v0, v3}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_4b

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_4b
    :goto_4b
    invoke-interface {v3}, Ljj$/util/stream/Node$Builder;->end()V

    invoke-interface {v3}, Ljj$/util/stream/Node$Builder;->build()Ljj$/util/stream/Node;

    move-result-object v4

    return-object v4
.end method

.method public static synthetic lambda$truncate$0(Ljava/lang/Object;)V
    .registers 1

    return-void
.end method
