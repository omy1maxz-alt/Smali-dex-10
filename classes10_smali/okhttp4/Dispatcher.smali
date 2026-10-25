.class public final Lokhttp4/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private idleCallback:Ljava/lang/Runnable;

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private final readyAsyncCalls:Ljava/util/Deque;

.field private final runningAsyncCalls:Ljava/util/Deque;

.field private final runningSyncCalls:Ljava/util/Deque;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lokhttp4/Dispatcher;->maxRequests:I

    const/4 v0, 0x5

    iput v0, p0, Lokhttp4/Dispatcher;->maxRequestsPerHost:I

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp4/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp4/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp4/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    return-void
.end method

.method private finished(Ljava/util/Deque;Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lokhttp4/Dispatcher;->idleCallback:Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1e

    invoke-direct {p0}, Lokhttp4/Dispatcher;->promoteAndExecute()Z

    move-result p2

    if-nez p2, :cond_15

    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_15
    return-void

    :cond_16
    :try_start_16
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Call wasn\'t in-flight!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method private promoteAndExecute()Z
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_6
    iget-object v1, p0, Lokhttp4/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp4/RealCall$AsyncCall;

    iget-object v3, p0, Lokhttp4/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    iget v4, p0, Lokhttp4/Dispatcher;->maxRequests:I

    if-lt v3, v4, :cond_23

    goto :goto_38

    :cond_23
    invoke-direct {p0, v2}, Lokhttp4/Dispatcher;->runningCallsForHost(Lokhttp4/RealCall$AsyncCall;)I

    move-result v3

    iget v4, p0, Lokhttp4/Dispatcher;->maxRequestsPerHost:I

    if-lt v3, v4, :cond_2c

    goto :goto_c

    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lokhttp4/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_38
    :goto_38
    invoke-virtual {p0}, Lokhttp4/Dispatcher;->runningCallsCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_41

    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_5a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_47
    if-ge v2, v3, :cond_59

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp4/RealCall$AsyncCall;

    invoke-virtual {p0}, Lokhttp4/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp4/RealCall$AsyncCall;->executeOn(Ljava/util/concurrent/ExecutorService;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_59
    return v1

    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    goto :goto_5e

    :goto_5d
    throw v0

    :goto_5e
    goto :goto_5d
.end method

.method private runningCallsForHost(Lokhttp4/RealCall$AsyncCall;)I
    .registers 6

    iget-object v0, p0, Lokhttp4/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp4/RealCall$AsyncCall;

    invoke-virtual {v2}, Lokhttp4/RealCall$AsyncCall;->get()Lokhttp4/RealCall;

    move-result-object v3

    iget-boolean v3, v3, Lokhttp4/RealCall;->forWebSocket:Z

    if-eqz v3, :cond_1c

    goto :goto_7

    :cond_1c
    invoke-virtual {v2}, Lokhttp4/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp4/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2d
    return v1
.end method


# virtual methods
.method declared-synchronized executed(Lokhttp4/RealCall;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp4/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized executorService()Ljava/util/concurrent/ExecutorService;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp4/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_21

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp Dispatcher"

    const/4 v8, 0x0

    invoke-static {v1, v8}, Lokhttp4/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lokhttp4/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_21
    iget-object v0, p0, Lokhttp4/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method finished(Lokhttp4/RealCall$AsyncCall;)V
    .registers 3

    iget-object v0, p0, Lokhttp4/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-direct {p0, v0, p1}, Lokhttp4/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;)V

    return-void
.end method

.method finished(Lokhttp4/RealCall;)V
    .registers 3

    iget-object v0, p0, Lokhttp4/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-direct {p0, v0, p1}, Lokhttp4/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized runningCallsCount()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp4/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lokhttp4/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
