.class public final synthetic Ljj$/util/Spliterator$OfLong$-CC;
.super Ljava/lang/Object;
.source "Spliterator.java"


# direct methods
.method public static bridge synthetic $default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1}, Ljj$/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public static $default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V
    .registers 4

    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Ljava/util/function/LongConsumer;

    invoke-interface {p0, v0}, Ljj$/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_23

    :cond_b
    sget-boolean v0, Ljj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)"

    invoke-static {v0, v1}, Ljj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_18
    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljj$/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    :goto_23
    return-void
.end method

.method public static $default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/util/function/LongConsumer;)V
    .registers 3

    :cond_0
    invoke-interface {p0, p1}, Ljj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static bridge synthetic $default$tryAdvance(Ljj$/util/Spliterator$OfLong;Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1}, Ljj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public static $default$tryAdvance(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/util/function/LongConsumer;

    invoke-interface {p0, v0}, Ljj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0

    :cond_c
    sget-boolean v0, Ljj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)"

    invoke-static {v0, v1}, Ljj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_19
    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic $default$trySplit(Ljj$/util/Spliterator$OfLong;)Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-interface {p0}, Ljj$/util/Spliterator$OfLong;->trySplit()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$trySplit(Ljj$/util/Spliterator$OfLong;)Ljj$/util/Spliterator;
    .registers 2

    invoke-interface {p0}, Ljj$/util/Spliterator$OfLong;->trySplit()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
