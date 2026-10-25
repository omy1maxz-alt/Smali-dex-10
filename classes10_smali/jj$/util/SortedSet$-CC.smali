.class public final synthetic Ljj$/util/SortedSet$-CC;
.super Ljava/lang/Object;
.source "SortedSet.java"


# direct methods
.method public static $default$spliterator(Ljava/util/SortedSet;)Ljj$/util/Spliterator;
    .registers 3

    new-instance v0, Ljj$/util/SortedSet$1;

    const/16 v1, 0x15

    invoke-direct {v0, p0, p0, v1}, Ljj$/util/SortedSet$1;-><init>(Ljava/util/SortedSet;Ljava/util/Collection;I)V

    return-object v0
.end method
