.class public final synthetic Ljj$/util/Spliterator$-CC;
.super Ljava/lang/Object;
.source "Spliterator.java"


# direct methods
.method public static $default$forEachRemaining(Ljj$/util/Spliterator;Ljava/util/function/Consumer;)V
    .registers 3

    :cond_0
    invoke-interface {p0, p1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static $default$getComparator(Ljj$/util/Spliterator;)Ljava/util/Comparator;
    .registers 2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static $default$getExactSizeIfKnown(Ljj$/util/Spliterator;)J
    .registers 3

    invoke-interface {p0}, Ljj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_b

    const-wide/16 v0, -0x1

    goto :goto_f

    :cond_b
    invoke-interface {p0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    :goto_f
    return-wide v0
.end method

.method public static $default$hasCharacteristics(Ljj$/util/Spliterator;I)Z
    .registers 3

    invoke-interface {p0}, Ljj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
