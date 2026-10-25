.class public final Lokhttp4/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field private final cleanupRunnable:Ljava/lang/Runnable;

.field cleanupRunning:Z

.field private final connections:Ljava/util/Deque;

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field final routeDatabase:Lokhttp4/internal/connection/RouteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    const-string v7, "OkHttp ConnectionPool"

    invoke-static {v7, v0}, Lokhttp4/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lokhttp4/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const-wide/16 v2, 0x5

    invoke-direct {p0, v1, v2, v3, v0}, Lokhttp4/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp4/ConnectionPool$1;

    invoke-direct {v0, p0}, Lokhttp4/ConnectionPool$1;-><init>(Lokhttp4/ConnectionPool;)V

    iput-object v0, p0, Lokhttp4/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp4/ConnectionPool;->connections:Ljava/util/Deque;

    new-instance v0, Lokhttp4/internal/connection/RouteDatabase;

    invoke-direct {v0}, Lokhttp4/internal/connection/RouteDatabase;-><init>()V

    iput-object v0, p0, Lokhttp4/ConnectionPool;->routeDatabase:Lokhttp4/internal/connection/RouteDatabase;

    iput p1, p0, Lokhttp4/ConnectionPool;->maxIdleConnections:I

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp4/ConnectionPool;->keepAliveDurationNs:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_27

    return-void

    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "keepAliveDuration <= 0: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pruneAndGetAllocationCount(Lokhttp4/internal/connection/RealConnection;J)I
    .registers 10

    iget-object v0, p1, Lokhttp4/internal/connection/RealConnection;->allocations:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_19

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_19
    check-cast v3, Lokhttp4/internal/connection/StreamAllocation$StreamAllocationReference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp4/internal/connection/RealConnection;->route()Lokhttp4/Route;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object v5

    iget-object v3, v3, Lokhttp4/internal/connection/StreamAllocation$StreamAllocationReference;->callStackTrace:Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Lokhttp4/internal/platform/Platform;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, p1, Lokhttp4/internal/connection/RealConnection;->noNewStreams:Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v2, p0, Lokhttp4/ConnectionPool;->keepAliveDurationNs:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lokhttp4/internal/connection/RealConnection;->idleAtNanos:J

    return v1

    :cond_58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method


# virtual methods
.method cleanup(J)J
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp4/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp4/internal/connection/RealConnection;

    invoke-direct {p0, v7, p1, p2}, Lokhttp4/ConnectionPool;->pruneAndGetAllocationCount(Lokhttp4/internal/connection/RealConnection;J)I

    move-result v8

    if-lez v8, :cond_22

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_22
    add-int/lit8 v5, v5, 0x1

    iget-wide v8, v7, Lokhttp4/internal/connection/RealConnection;->idleAtNanos:J

    sub-long v8, p1, v8

    cmp-long v10, v8, v3

    if-lez v10, :cond_d

    move-object v2, v7

    move-wide v3, v8

    goto :goto_d

    :cond_2f
    iget-wide p1, p0, Lokhttp4/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v0, v3, p1

    if-gez v0, :cond_49

    iget v0, p0, Lokhttp4/ConnectionPool;->maxIdleConnections:I

    if-le v5, v0, :cond_3a

    goto :goto_49

    :cond_3a
    if-lez v5, :cond_3f

    sub-long/2addr p1, v3

    monitor-exit p0

    return-wide p1

    :cond_3f
    if-lez v6, :cond_43

    monitor-exit p0

    return-wide p1

    :cond_43
    iput-boolean v1, p0, Lokhttp4/ConnectionPool;->cleanupRunning:Z

    const-wide/16 p1, -0x1

    monitor-exit p0

    return-wide p1

    :cond_49
    :goto_49
    iget-object p1, p0, Lokhttp4/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {p1, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_59

    invoke-virtual {v2}, Lokhttp4/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lokhttp4/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_59
    move-exception p1

    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    goto :goto_5d

    :goto_5c
    throw p1

    :goto_5d
    goto :goto_5c
.end method

.method connectionBecameIdle(Lokhttp4/internal/connection/RealConnection;)Z
    .registers 3

    iget-boolean v0, p1, Lokhttp4/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v0, :cond_e

    iget v0, p0, Lokhttp4/ConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    return p1

    :cond_e
    :goto_e
    iget-object v0, p0, Lokhttp4/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method deduplicate(Lokhttp4/Address;Lokhttp4/internal/connection/StreamAllocation;)Ljava/net/Socket;
    .registers 6

    iget-object v0, p0, Lokhttp4/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp4/internal/connection/RealConnection;

    invoke-virtual {v1, p1, v2}, Lokhttp4/internal/connection/RealConnection;->isEligible(Lokhttp4/Address;Lokhttp4/Route;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lokhttp4/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lokhttp4/internal/connection/StreamAllocation;->connection()Lokhttp4/internal/connection/RealConnection;

    move-result-object v2

    if-eq v1, v2, :cond_6

    invoke-virtual {p2, v1}, Lokhttp4/internal/connection/StreamAllocation;->releaseAndAcquire(Lokhttp4/internal/connection/RealConnection;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    :cond_2a
    return-object v2
.end method

.method get(Lokhttp4/Address;Lokhttp4/internal/connection/StreamAllocation;Lokhttp4/Route;)Lokhttp4/internal/connection/RealConnection;
    .registers 7

    iget-object v0, p0, Lokhttp4/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp4/internal/connection/RealConnection;

    invoke-virtual {v1, p1, p3}, Lokhttp4/internal/connection/RealConnection;->isEligible(Lokhttp4/Address;Lokhttp4/Route;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 p1, 0x1

    invoke-virtual {p2, v1, p1}, Lokhttp4/internal/connection/StreamAllocation;->acquire(Lokhttp4/internal/connection/RealConnection;Z)V

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method put(Lokhttp4/internal/connection/RealConnection;)V
    .registers 4

    iget-boolean v0, p0, Lokhttp4/ConnectionPool;->cleanupRunning:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp4/ConnectionPool;->cleanupRunning:Z

    sget-object v0, Lokhttp4/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp4/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    iget-object v0, p0, Lokhttp4/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method
