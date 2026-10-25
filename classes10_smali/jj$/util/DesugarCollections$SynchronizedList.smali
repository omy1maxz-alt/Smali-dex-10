.class Ljj$/util/DesugarCollections$SynchronizedList;
.super Ljj$/util/DesugarCollections$SynchronizedCollection;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/List;
.implements Ljj$/util/List;


# static fields
.field private static final serialVersionUID:J = -0x6b9c101c7cbbef84L


# instance fields
.field final list:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/DesugarCollections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/DesugarCollections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object p1, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    instance-of v0, v0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_e

    new-instance v0, Ljj$/util/DesugarCollections$SynchronizedRandomAccessList;

    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljj$/util/DesugarCollections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;)V

    goto :goto_f

    :cond_e
    move-object v0, p0

    :goto_f
    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

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

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public get(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

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

.method public indexOf(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

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

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

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

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

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

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-static {v1, p1}, Ljj$/util/List$-EL;->replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

.method public sort(Ljava/util/Comparator;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-static {v1, p1}, Ljj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public subList(II)Ljava/util/List;
    .registers 7

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljj$/util/DesugarCollections$SynchronizedList;

    iget-object v2, p0, Ljj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Ljj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljj$/util/DesugarCollections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
