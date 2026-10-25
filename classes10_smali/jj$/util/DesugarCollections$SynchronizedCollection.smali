.class Ljj$/util/DesugarCollections$SynchronizedCollection;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;
.implements Ljj$/util/Collection;


# static fields
.field private static final serialVersionUID:J = 0x2a61f84d099c99b5L


# instance fields
.field final c:Ljava/util/Collection;

.field final mutex:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    iput-object p0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public clear()V
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-static {v1, p1}, Ljj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public isEmpty()Z
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parallelStream()Ljava/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/DesugarCollections$SynchronizedCollection;->parallelStream()Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public parallelStream()Ljj$/util/stream/Stream;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Ljj$/util/Collection$-EL;->parallelStream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-static {v1, p1}, Ljj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/DesugarCollections$SynchronizedCollection;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$Wrapper;->convert(Ljj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljj$/util/Spliterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Ljj$/util/Collection$-EL;->spliterator(Ljava/util/Collection;)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/DesugarCollections$SynchronizedCollection;->stream()Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljj$/util/stream/Stream;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Ljj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
