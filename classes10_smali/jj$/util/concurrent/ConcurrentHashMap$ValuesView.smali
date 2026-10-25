.class final Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;
.super Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;
.implements Ljj$/util/Collection;


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;-><init>(Ljj$/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljj$/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 7

    if-eqz p1, :cond_1f

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

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

    iget-object v2, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_11

    :cond_1e
    return-void

    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 7

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

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
    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ValueIterator;

    const/4 v3, 0x0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Ljj$/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIILjj$/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public synthetic parallelStream()Ljava/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;->parallelStream()Ljj$/util/stream/Stream;

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

.method public final remove(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    return v1

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5

    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_7

    :cond_1c
    return v0

    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljj$/util/concurrent/ConcurrentHashMap;->removeValueIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$Wrapper;->convert(Ljj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljj$/util/Spliterator;
    .registers 12

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

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
    new-instance v4, Ljj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;

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

    invoke-direct/range {v4 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIIJ)V

    return-object v4
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;->stream()Ljj$/util/stream/Stream;

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
