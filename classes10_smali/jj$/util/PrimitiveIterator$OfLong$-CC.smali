.class public final synthetic Ljj$/util/PrimitiveIterator$OfLong$-CC;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"


# direct methods
.method public static bridge synthetic $default$forEachRemaining(Ljj$/util/PrimitiveIterator$OfLong;Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1}, Ljj$/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public static $default$forEachRemaining(Ljj$/util/PrimitiveIterator$OfLong;Ljava/util/function/Consumer;)V
    .registers 4

    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Ljava/util/function/LongConsumer;

    invoke-interface {p0, v0}, Ljj$/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_26

    :cond_b
    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Ljj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)"

    invoke-static {v0, v1}, Ljj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1b
    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljj$/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    :goto_26
    return-void
.end method

.method public static $default$forEachRemaining(Ljj$/util/PrimitiveIterator$OfLong;Ljava/util/function/LongConsumer;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-interface {p0}, Ljj$/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p0}, Ljj$/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    goto :goto_3

    :cond_11
    return-void
.end method

.method public static $default$next(Ljj$/util/PrimitiveIterator$OfLong;)Ljava/lang/Long;
    .registers 3

    sget-boolean v0, Ljj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling PrimitiveIterator.OfLong.nextLong()"

    invoke-static {v0, v1}, Ljj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_d
    invoke-interface {p0}, Ljj$/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$next(Ljj$/util/PrimitiveIterator$OfLong;)Ljava/lang/Object;
    .registers 2

    invoke-interface {p0}, Ljj$/util/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
