.class public final synthetic Ljj$/util/Set$-CC;
.super Ljava/lang/Object;
.source "Set.java"


# direct methods
.method public static $default$spliterator(Ljava/util/Set;)Ljj$/util/Spliterator;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljj$/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Collection;)Ljava/util/Set;
    .registers 2

    instance-of v0, p0, Ljj$/util/ImmutableCollections$AbstractImmutableSet;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    return-object v0

    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport3;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static of()Ljava/util/Set;
    .registers 1

    invoke-static {}, Ljj$/util/ImmutableCollections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    new-instance v0, Ljj$/util/ImmutableCollections$Set12;

    invoke-direct {v0, p0}, Ljj$/util/ImmutableCollections$Set12;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3

    new-instance v0, Ljj$/util/ImmutableCollections$Set12;

    invoke-direct {v0, p0, p1}, Ljj$/util/ImmutableCollections$Set12;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 6

    new-instance v0, Ljj$/util/ImmutableCollections$SetN;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 7

    new-instance v0, Ljj$/util/ImmutableCollections$SetN;

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

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 8

    new-instance v0, Ljj$/util/ImmutableCollections$SetN;

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

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 9

    new-instance v0, Ljj$/util/ImmutableCollections$SetN;

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

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 10

    new-instance v0, Ljj$/util/ImmutableCollections$SetN;

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

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 11

    new-instance v0, Ljj$/util/ImmutableCollections$SetN;

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

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 12

    new-instance v0, Ljj$/util/ImmutableCollections$SetN;

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

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 13

    new-instance v0, Ljj$/util/ImmutableCollections$SetN;

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

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Ljava/util/Set;
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_24

    new-instance v0, Ljj$/util/ImmutableCollections$SetN;

    invoke-direct {v0, p0}, Ljj$/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0

    :pswitch_b  #0x2
    new-instance v0, Ljj$/util/ImmutableCollections$Set12;

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-direct {v0, v1, v2}, Ljj$/util/ImmutableCollections$Set12;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_16  #0x1
    new-instance v0, Ljj$/util/ImmutableCollections$Set12;

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$Set12;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_1e  #0x0
    invoke-static {}, Ljj$/util/ImmutableCollections;->emptySet()Ljava/util/Set;

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
