.class Ljj$/util/DesugarCollections$SynchronizedSet;
.super Ljj$/util/DesugarCollections$SynchronizedCollection;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljj$/util/Set;


# static fields
.field private static final serialVersionUID:J = 0x6c3c27902eedf3cL


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/DesugarCollections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/DesugarCollections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedSet;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedSet;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

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
