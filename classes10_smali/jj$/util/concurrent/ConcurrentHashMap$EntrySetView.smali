.class final Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;
.super Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;
.implements Ljj$/util/Set;


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;-><init>(Ljj$/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .registers 6

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v3, 0x1

    :cond_12
    return v3
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->add(Ljava/util/Map$Entry;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v0, 0x1

    :cond_18
    goto :goto_5

    :cond_19
    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_29

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    if-eqz v0, :cond_29

    if-eq v4, v3, :cond_27

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_27
    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    move-object v1, v0

    if-eq v0, p0, :cond_16

    invoke-virtual {p0, v1}, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->containsAll(Ljava/util/Collection;)Z

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
    .registers 9

    if-eqz p1, :cond_28

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_27

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_11
    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_27

    new-instance v2, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2, v4, v5, v6}, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_11

    :cond_27
    return-void

    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, v1, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    if-eqz v1, :cond_1d

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_10
    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_1d

    invoke-virtual {v4}, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_10

    :cond_1d
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 7

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

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
    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$EntryIterator;

    const/4 v3, 0x0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Ljj$/util/concurrent/ConcurrentHashMap$EntryIterator;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIILjj$/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public synthetic parallelStream()Ljava/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->parallelStream()Ljj$/util/stream/Stream;

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
    .registers 6

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v3}, Ljj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljj$/util/concurrent/ConcurrentHashMap;->removeEntryIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$Wrapper;->convert(Ljj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljj$/util/Spliterator;
    .registers 11

    iget-object v7, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v8

    iget-object v1, v7, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v1

    if-nez v0, :cond_e

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_10

    :cond_e
    array-length v0, v1

    move v2, v0

    :goto_10
    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;

    const-wide/16 v3, 0x0

    cmp-long v5, v8, v3

    if-gez v5, :cond_1a

    move-wide v5, v3

    goto :goto_1b

    :cond_1a
    move-wide v5, v8

    :goto_1b
    const/4 v3, 0x0

    move v4, v2

    invoke-direct/range {v0 .. v7}, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIIJLjj$/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;->stream()Ljj$/util/stream/Stream;

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
