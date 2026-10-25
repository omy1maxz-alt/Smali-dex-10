.class Ljj$/util/DesugarCollections$SynchronizedMap;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Ljj$/util/Map;


# static fields
.field private static final serialVersionUID:J = 0x1b73f9094b4b397bL


# instance fields
.field private transient entrySet:Ljava/util/Set;

.field private transient keySet:Ljava/util/Set;

.field private final m:Ljava/util/Map;

.field final mutex:Ljava/lang/Object;

.field private transient values:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    iput-object p0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    iput-object p2, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

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
.method public clear()V
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Ljj$/util/Map$-EL;->compute(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

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

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Ljj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

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

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Ljj$/util/Map$-EL;->computeIfPresent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

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

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

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

.method public entrySet()Ljava/util/Set;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_16

    new-instance v1, Ljj$/util/DesugarCollections$SynchronizedSet;

    iget-object v2, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljj$/util/DesugarCollections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->entrySet:Ljava/util/Set;

    :cond_16
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->entrySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1}, Ljj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Ljj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

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

.method public isEmpty()Z
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

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

.method public keySet()Ljava/util/Set;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->keySet:Ljava/util/Set;

    if-nez v1, :cond_16

    new-instance v1, Ljj$/util/DesugarCollections$SynchronizedSet;

    iget-object v2, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljj$/util/DesugarCollections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->keySet:Ljava/util/Set;

    :cond_16
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->keySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2, p3}, Ljj$/util/Map$-EL;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

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

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public putAll(Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Ljj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Ljj$/util/Map$-EL;->remove(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Ljj$/util/Map$-EL;->replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2, p3}, Ljj$/util/Map$-EL;->replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1}, Ljj$/util/Map$-EL;->replaceAll(Ljava/util/Map;Ljava/util/function/BiFunction;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

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

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

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

.method public values()Ljava/util/Collection;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->values:Ljava/util/Collection;

    if-nez v1, :cond_16

    new-instance v1, Ljj$/util/DesugarCollections$SynchronizedCollection;

    iget-object v2, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljj$/util/DesugarCollections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->values:Ljava/util/Collection;

    :cond_16
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedMap;->values:Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method
