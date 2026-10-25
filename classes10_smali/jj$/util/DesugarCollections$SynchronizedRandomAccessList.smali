.class Ljj$/util/DesugarCollections$SynchronizedRandomAccessList;
.super Ljj$/util/DesugarCollections$SynchronizedList;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field private static final serialVersionUID:J = 0x153e0c6c865668d2L


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/DesugarCollections$SynchronizedList;-><init>(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/DesugarCollections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/util/DesugarCollections$SynchronizedList;

    iget-object v1, p0, Ljj$/util/DesugarCollections$SynchronizedRandomAccessList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljj$/util/DesugarCollections$SynchronizedList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .registers 7

    iget-object v0, p0, Ljj$/util/DesugarCollections$SynchronizedRandomAccessList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljj$/util/DesugarCollections$SynchronizedRandomAccessList;

    iget-object v2, p0, Ljj$/util/DesugarCollections$SynchronizedRandomAccessList;->list:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Ljj$/util/DesugarCollections$SynchronizedRandomAccessList;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljj$/util/DesugarCollections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
