.class public final synthetic Ljj$/util/List$-CC;
.super Ljava/lang/Object;
.source "List.java"


# direct methods
.method public static $default$replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_7

    :cond_19
    return-void
.end method

.method public static $default$sort(Ljava/util/List;Ljava/util/Comparator;)V
    .registers 7

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1a

    aget-object v4, v0, v3

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1a
    return-void
.end method

.method public static $default$spliterator(Ljava/util/List;)Ljj$/util/Spliterator;
    .registers 2

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, Ljj$/util/AbstractList$RandomAccessSpliterator;

    invoke-direct {v0, p0}, Ljj$/util/AbstractList$RandomAccessSpliterator;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_a
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljj$/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Collection;)Ljava/util/List;
    .registers 2

    invoke-static {p0}, Ljj$/util/ImmutableCollections;->listCopy(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static of()Ljava/util/List;
    .registers 1

    invoke-static {}, Ljj$/util/ImmutableCollections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    new-instance v0, Ljj$/util/ImmutableCollections$List12;

    invoke-direct {v0, p0}, Ljj$/util/ImmutableCollections$List12;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    new-instance v0, Ljj$/util/ImmutableCollections$List12;

    invoke-direct {v0, p0, p1}, Ljj$/util/ImmutableCollections$List12;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 6

    new-instance v0, Ljj$/util/ImmutableCollections$ListN;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 7

    new-instance v0, Ljj$/util/ImmutableCollections$ListN;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 8

    new-instance v0, Ljj$/util/ImmutableCollections$ListN;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 9

    new-instance v0, Ljj$/util/ImmutableCollections$ListN;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 10

    new-instance v0, Ljj$/util/ImmutableCollections$ListN;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 11

    new-instance v0, Ljj$/util/ImmutableCollections$ListN;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 12

    new-instance v0, Ljj$/util/ImmutableCollections$ListN;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    const/16 v2, 0x8

    aput-object p8, v1, v2

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 13

    new-instance v0, Ljj$/util/ImmutableCollections$ListN;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    const/16 v2, 0x8

    aput-object p8, v1, v2

    const/16 v2, 0x9

    aput-object p9, v1, v2

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Ljava/util/List;
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_24

    new-instance v0, Ljj$/util/ImmutableCollections$ListN;

    invoke-direct {v0, p0}, Ljj$/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0

    :pswitch_b  #0x2
    new-instance v0, Ljj$/util/ImmutableCollections$List12;

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-direct {v0, v1, v2}, Ljj$/util/ImmutableCollections$List12;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_16  #0x1
    new-instance v0, Ljj$/util/ImmutableCollections$List12;

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$List12;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_1e  #0x0
    invoke-static {}, Ljj$/util/ImmutableCollections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_16  #00000001
        :pswitch_b  #00000002
    .end packed-switch
.end method
