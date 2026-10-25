.class public final synthetic Ljj$/util/Comparator$-EL;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic reversed(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 2

    instance-of v0, p0, Ljj$/util/Comparator;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/Comparator;

    invoke-interface {p0}, Ljj$/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Ljj$/util/Comparator$-CC;->$default$reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 3

    instance-of v0, p0, Ljj$/util/Comparator;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/Comparator;

    invoke-interface {p0, p1}, Ljj$/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Ljj$/util/Comparator$-CC;->$default$thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;)Ljava/util/Comparator;
    .registers 3

    instance-of v0, p0, Ljj$/util/Comparator;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/Comparator;

    invoke-interface {p0, p1}, Ljj$/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Ljj$/util/Comparator$-CC;->$default$thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 4

    instance-of v0, p0, Ljj$/util/Comparator;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljj$/util/Comparator;->thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1, p2}, Ljj$/util/Comparator$-CC;->$default$thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic thenComparingDouble(Ljava/util/Comparator;Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .registers 3

    instance-of v0, p0, Ljj$/util/Comparator;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/Comparator;

    invoke-interface {p0, p1}, Ljj$/util/Comparator;->thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Ljj$/util/Comparator$-CC;->$default$thenComparingDouble(Ljava/util/Comparator;Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic thenComparingInt(Ljava/util/Comparator;Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;
    .registers 3

    instance-of v0, p0, Ljj$/util/Comparator;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/Comparator;

    invoke-interface {p0, p1}, Ljj$/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Ljj$/util/Comparator$-CC;->$default$thenComparingInt(Ljava/util/Comparator;Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic thenComparingLong(Ljava/util/Comparator;Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;
    .registers 3

    instance-of v0, p0, Ljj$/util/Comparator;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/Comparator;

    invoke-interface {p0, p1}, Ljj$/util/Comparator;->thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Ljj$/util/Comparator$-CC;->$default$thenComparingLong(Ljava/util/Comparator;Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method
