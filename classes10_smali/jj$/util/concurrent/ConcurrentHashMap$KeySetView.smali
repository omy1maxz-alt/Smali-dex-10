.class public Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;
.super Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;
.implements Ljj$/util/Set;


# static fields
.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;-><init>(Ljj$/util/concurrent/ConcurrentHashMap;)V

    iput-object p2, p0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->value:Ljava/lang/Object;

    move-object v1, v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    return v2

    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->value:Ljava/lang/Object;

    move-object v2, v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v2, v5}, Ljj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    goto :goto_a

    :cond_1f
    return v0

    :cond_20
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    move-object v1, v0

    if-eq v0, p0, :cond_16

    invoke-virtual {p0, v1}, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 7

    if-eqz p1, :cond_1f

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_11
    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_1e

    iget-object v2, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_11

    :cond_1e
    return-void

    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getMap()Ljj$/util/concurrent/ConcurrentHashMap;
    .registers 2

    invoke-super {p0}, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->getMap()Ljj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public getMappedValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_5

    :cond_15
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 7

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, v5, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v1

    if-nez v0, :cond_a

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_c

    :cond_a
    array-length v0, v1

    move v2, v0

    :goto_c
    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$KeyIterator;

    const/4 v3, 0x0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Ljj$/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIILjj$/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public synthetic parallelStream()Ljava/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->parallelStream()Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parallelStream()Ljj$/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Ljj$/util/Collection$-CC;->$default$parallelStream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public synthetic removeIf(Ljava/util/function/Predicate;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Collection$-CC;->$default$removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$Wrapper;->convert(Ljj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljj$/util/Spliterator;
    .registers 12

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v1

    iget-object v3, v0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v3

    if-nez v3, :cond_e

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_10

    :cond_e
    array-length v3, v5

    move v6, v3

    :goto_10
    new-instance v4, Ljj$/util/concurrent/ConcurrentHashMap$KeySpliterator;

    const-wide/16 v7, 0x0

    cmp-long v3, v1, v7

    if-gez v3, :cond_1a

    move-wide v9, v7

    goto :goto_1b

    :cond_1a
    move-wide v9, v1

    :goto_1b
    const/4 v7, 0x0

    move v8, v6

    invoke-direct/range {v4 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$KeySpliterator;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIIJ)V

    return-object v4
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;->stream()Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic stream()Ljj$/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Ljj$/util/Collection$-CC;->$default$stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
