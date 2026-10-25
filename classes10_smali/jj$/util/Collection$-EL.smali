.class public final synthetic Ljj$/util/Collection$-EL;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V
    .registers 3

    instance-of v0, p0, Ljj$/util/Collection;

    if-eqz v0, :cond_a

    check-cast p0, Ljj$/util/Collection;

    invoke-interface {p0, p1}, Ljj$/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :cond_a
    invoke-static {p0, p1}, Ljj$/util/Collection$-CC;->$default$forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic parallelStream(Ljava/util/Collection;)Ljj$/util/stream/Stream;
    .registers 2

    instance-of v0, p0, Ljj$/util/Collection;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/Collection;

    invoke-interface {p0}, Ljj$/util/Collection;->parallelStream()Ljj$/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Ljj$/util/Collection$-CC;->$default$parallelStream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .registers 3

    instance-of v0, p0, Ljj$/util/Collection;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/Collection;

    invoke-interface {p0, p1}, Ljj$/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_b
    invoke-static {p0, p1}, Ljj$/util/Collection$-CC;->$default$removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic spliterator(Ljava/util/Collection;)Ljj$/util/Spliterator;
    .registers 2

    instance-of v0, p0, Ljj$/util/Collection;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/Collection;

    invoke-interface {p0}, Ljj$/util/Collection;->spliterator()Ljj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_16

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Ljj$/util/DesugarLinkedHashSet;->spliterator(Ljava/util/LinkedHashSet;)Ljj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_16
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_21

    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Ljj$/util/SortedSet$-CC;->$default$spliterator(Ljava/util/SortedSet;)Ljj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_21
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_2c

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljj$/util/Set$-CC;->$default$spliterator(Ljava/util/Set;)Ljj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_2c
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_37

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljj$/util/List$-CC;->$default$spliterator(Ljava/util/List;)Ljj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_37
    invoke-static {p0}, Ljj$/util/Collection$-CC;->$default$spliterator(Ljava/util/Collection;)Ljj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;
    .registers 2

    instance-of v0, p0, Ljj$/util/Collection;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/Collection;

    invoke-interface {p0}, Ljj$/util/Collection;->stream()Ljj$/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Ljj$/util/Collection$-CC;->$default$stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 3

    instance-of v0, p0, Ljj$/util/Collection;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/Collection;

    invoke-interface {p0, p1}, Ljj$/util/Collection;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Ljj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
