.class public final synthetic Ljj$/util/Set$-EL;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic spliterator(Ljava/util/Set;)Ljj$/util/Spliterator;
    .registers 2

    instance-of v0, p0, Ljj$/util/Set;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/Set;

    invoke-interface {p0}, Ljj$/util/Set;->spliterator()Ljj$/util/Spliterator;

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
    invoke-static {p0}, Ljj$/util/Set$-CC;->$default$spliterator(Ljava/util/Set;)Ljj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
