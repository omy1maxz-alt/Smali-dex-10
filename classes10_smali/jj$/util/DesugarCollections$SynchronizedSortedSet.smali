.class Ljj$/util/DesugarCollections$SynchronizedSortedSet;
.super Ljj$/util/DesugarCollections$SynchronizedSet;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/SortedSet;
.implements Ljj$/util/SortedSet;


# static fields
.field private static final serialVersionUID:J = 0x78adb1384b50312eL


# instance fields
.field private final ss:Ljava/util/SortedSet;


# direct methods
.method constructor <init>(Ljava/util/SortedSet;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/DesugarCollections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    return-void
.end method

.method constructor <init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/DesugarCollections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object p1, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

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

.method public first()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

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

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljj$/util/DesugarCollections$SynchronizedSortedSet;

    iget-object v2, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v2, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljj$/util/DesugarCollections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public last()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

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

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljj$/util/DesugarCollections$SynchronizedSortedSet;

    iget-object v2, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v2, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljj$/util/DesugarCollections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljj$/util/DesugarCollections$SynchronizedSortedSet;

    iget-object v2, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v2, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljj$/util/DesugarCollections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
