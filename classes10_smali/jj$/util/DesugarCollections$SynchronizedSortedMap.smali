.class Ljj$/util/DesugarCollections$SynchronizedSortedMap;
.super Ljj$/util/DesugarCollections$SynchronizedMap;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljj$/util/Map;


# static fields
.field private static final serialVersionUID:J = -0x7a194bdf48d1f3d1L


# instance fields
.field private final sm:Ljava/util/SortedMap;


# direct methods
.method constructor <init>(Ljava/util/SortedMap;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/DesugarCollections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    return-void
.end method

.method constructor <init>(Ljava/util/SortedMap;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/DesugarCollections$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    iput-object p1, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

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

.method public firstKey()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

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

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljj$/util/DesugarCollections$SynchronizedSortedMap;

    iget-object v2, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljj$/util/DesugarCollections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

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

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 7

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljj$/util/DesugarCollections$SynchronizedSortedMap;

    iget-object v2, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljj$/util/DesugarCollections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljj$/util/DesugarCollections$SynchronizedSortedMap;

    iget-object v2, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljj$/util/DesugarCollections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
