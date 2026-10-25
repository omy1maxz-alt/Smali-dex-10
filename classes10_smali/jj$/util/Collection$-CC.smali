.class public final synthetic Ljj$/util/Collection$-CC;
.super Ljava/lang/Object;
.source "Collection.java"


# direct methods
.method public static $default$forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_7

    :cond_15
    return-void
.end method

.method public static $default$parallelStream(Ljava/util/Collection;)Ljj$/util/stream/Stream;
    .registers 3

    invoke-static {p0}, Ljj$/util/Collection$-EL;->spliterator(Ljava/util/Collection;)Ljj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static $default$removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_8

    :cond_1d
    return v0
.end method

.method public static $default$spliterator(Ljava/util/Collection;)Ljj$/util/Spliterator;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljj$/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static $default$stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;
    .registers 3

    invoke-static {p0}, Ljj$/util/Collection$-EL;->spliterator(Ljava/util/Collection;)Ljj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static $default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
