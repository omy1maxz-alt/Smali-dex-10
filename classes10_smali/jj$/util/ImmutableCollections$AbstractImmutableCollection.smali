.class abstract Ljj$/util/ImmutableCollections$AbstractImmutableCollection;
.super Ljava/util/AbstractCollection;
.source "ImmutableCollections.java"

# interfaces
.implements Ljj$/util/Collection;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public clear()V
    .registers 2

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public synthetic forEach(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Collection$-CC;->$default$forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic parallelStream()Ljava/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableCollection;->parallelStream()Ljj$/util/stream/Stream;

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

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .registers 3

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableCollection;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$Wrapper;->convert(Ljj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-static {p0}, Ljj$/util/Collection$-CC;->$default$spliterator(Ljava/util/Collection;)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableCollection;->stream()Ljj$/util/stream/Stream;

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
