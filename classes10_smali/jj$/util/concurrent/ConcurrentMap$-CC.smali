.class public final synthetic Ljj$/util/concurrent/ConcurrentMap$-CC;
.super Ljava/lang/Object;
.source "ConcurrentMap.java"


# direct methods
.method public static $default$compute(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6

    nop

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_5
    invoke-interface {p2, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_14

    invoke-interface {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_14
    invoke-interface {p0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    if-nez v2, :cond_5

    return-object v1

    :cond_1c
    if-eqz v0, :cond_24

    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_24
    const/4 v2, 0x0

    return-object v2
.end method

.method public static $default$computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 6

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    if-nez v0, :cond_19

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_19

    invoke-interface {p0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    if-nez v0, :cond_19

    goto :goto_1a

    :cond_19
    move-object v2, v1

    :goto_1a
    return-object v2
.end method

.method public static $default$computeIfPresent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1f

    invoke-interface {p2, p1, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-interface {p0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_1d

    :cond_17
    invoke-interface {p0, p1, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :goto_1d
    return-object v0

    :cond_1e
    goto :goto_3

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$forEach(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiConsumer;)V
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_1f} :catch_24

    nop

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :catch_24
    move-exception v2

    goto :goto_b

    :cond_26
    return-void
.end method

.method public static $default$getOrDefault(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_9

    move-object v0, v1

    goto :goto_a

    :cond_9
    move-object v0, p2

    :goto_a
    return-object v0
.end method

.method public static $default$merge(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 7

    invoke-static {p3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_a
    if-eqz v0, :cond_21

    invoke-interface {p3, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-interface {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_19
    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    return-object v2

    :cond_21
    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_a

    return-object p2
.end method

.method public static $default$replaceAll(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;)V
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/concurrent/ConcurrentMap$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljj$/util/concurrent/ConcurrentMap$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;)V

    invoke-static {p0, v0}, Ljj$/util/concurrent/ConcurrentMap$-EL;->forEach(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic $private$lambda$replaceAll$0(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    nop

    :cond_1
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, p3, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {p0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p3, v0

    if-nez v0, :cond_1

    nop

    :cond_13
    return-void
.end method
