.class public final synthetic Ljj$/util/SortedSet$-EL;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic spliterator(Ljava/util/SortedSet;)Ljj$/util/Spliterator;
    .registers 2

    instance-of v0, p0, Ljj$/util/SortedSet;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/SortedSet;

    invoke-interface {p0}, Ljj$/util/SortedSet;->spliterator()Ljj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Ljj$/util/SortedSet$-CC;->$default$spliterator(Ljava/util/SortedSet;)Ljj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
