.class public final synthetic Ljj$/util/Spliterator$OfDouble$-CC;
.super Ljava/lang/Object;
.source "Spliterator.java"


# direct methods
.method public static bridge synthetic $default$forEachRemaining(Ljj$/util/Spliterator$OfDouble;Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljj$/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public static $default$forEachRemaining(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V
    .registers 4

    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, v0}, Ljj$/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_23

    :cond_b
    sget-boolean v0, Ljj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)"

    invoke-static {v0, v1}, Ljj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_18
    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljj$/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    :goto_23
    return-void
.end method

.method public static $default$forEachRemaining(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/DoubleConsumer;)V
    .registers 3

    :cond_0
    invoke-interface {p0, p1}, Ljj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static bridge synthetic $default$tryAdvance(Ljj$/util/Spliterator$OfDouble;Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public static $default$tryAdvance(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, v0}, Ljj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0

    :cond_c
    sget-boolean v0, Ljj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)"

    invoke-static {v0, v1}, Ljj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_19
    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic $default$trySplit(Ljj$/util/Spliterator$OfDouble;)Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-interface {p0}, Ljj$/util/Spliterator$OfDouble;->trySplit()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$trySplit(Ljj$/util/Spliterator$OfDouble;)Ljj$/util/Spliterator;
    .registers 2

    invoke-interface {p0}, Ljj$/util/Spliterator$OfDouble;->trySplit()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
