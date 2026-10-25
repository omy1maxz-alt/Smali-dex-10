.class public final synthetic Ljj$/util/List$-EL;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V
    .registers 3

    instance-of v0, p0, Ljj$/util/List;

    if-eqz v0, :cond_a

    check-cast p0, Ljj$/util/List;

    invoke-interface {p0, p1}, Ljj$/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    return-void

    :cond_a
    invoke-static {p0, p1}, Ljj$/util/List$-CC;->$default$replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public static synthetic sort(Ljava/util/List;Ljava/util/Comparator;)V
    .registers 3

    instance-of v0, p0, Ljj$/util/List;

    if-eqz v0, :cond_a

    check-cast p0, Ljj$/util/List;

    invoke-interface {p0, p1}, Ljj$/util/List;->sort(Ljava/util/Comparator;)V

    return-void

    :cond_a
    invoke-static {p0, p1}, Ljj$/util/List$-CC;->$default$sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static synthetic spliterator(Ljava/util/List;)Ljj$/util/Spliterator;
    .registers 2

    instance-of v0, p0, Ljj$/util/List;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/List;

    invoke-interface {p0}, Ljj$/util/List;->spliterator()Ljj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Ljj$/util/List$-CC;->$default$spliterator(Ljava/util/List;)Ljj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
