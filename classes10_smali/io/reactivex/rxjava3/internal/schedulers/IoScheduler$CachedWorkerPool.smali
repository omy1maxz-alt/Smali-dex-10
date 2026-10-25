.class final Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;
.super Ljava/lang/Object;
.source "IoScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final allWorkers:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final evictorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final evictorTask:Ljava/util/concurrent/Future;

.field private final expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private final keepAliveTime:J

.field private final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_a

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    goto :goto_c

    :cond_a
    const-wide/16 p1, 0x0

    :goto_c
    move-wide v4, p1

    iput-wide v4, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->keepAliveTime:J

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->allWorkers:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iput-object p4, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-eqz p3, :cond_32

    const/4 p1, 0x1

    sget-object p2, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->EVICTOR_THREAD_FACTORY:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, v4

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    goto :goto_34

    :cond_32
    const/4 p1, 0x0

    move-object p2, p1

    :goto_34
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    return-void
.end method

.method static evictExpiredWorkers(Ljava/util/concurrent/ConcurrentLinkedQueue;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V
    .registers 9

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;

    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;->getExpirationTime()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_2c

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p1, v3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->remove(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    goto :goto_e

    :cond_2c
    return-void
.end method

.method static now()J
    .registers 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method get()Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->allWorkers:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->SHUTDOWN_THREAD_WORKER:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;

    return-object v0

    :cond_b
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;

    if-eqz v0, :cond_b

    return-object v0

    :cond_1e
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->allWorkers:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-object v0
.end method

.method release(Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;)V
    .registers 6

    invoke-static {}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->keepAliveTime:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;->setExpirationTime(J)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->allWorkers:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->evictExpiredWorkers(Ljava/util/concurrent/ConcurrentLinkedQueue;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    return-void
.end method

.method shutdown()V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->allWorkers:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_d
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_14
    return-void
.end method
