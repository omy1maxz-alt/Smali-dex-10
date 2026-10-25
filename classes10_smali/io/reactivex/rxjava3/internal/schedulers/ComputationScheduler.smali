.class public final Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;
.super Lio/reactivex/rxjava3/core/Scheduler;
.source "ComputationScheduler.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport;


# static fields
.field static final MAX_THREADS:I

.field static final NONE:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

.field static final SHUTDOWN_WORKER:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

.field static final THREAD_FACTORY:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const-string v1, "rx3.computation-threads"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->cap(II)I

    move-result v0

    sput v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->MAX_THREADS:I

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    new-instance v1, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v3, "RxComputationShutdown"

    invoke-direct {v1, v3}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->SHUTDOWN_WORKER:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->dispose()V

    const-string v0, "rx3.computation-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v3, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v4, "RxComputationThreadPool"

    invoke-direct {v3, v4, v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->THREAD_FACTORY:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    invoke-direct {v0, v2, v3}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->NONE:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->shutdown()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->THREAD_FACTORY:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    invoke-direct {p0, v0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->NONE:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->start()V

    return-void
.end method

.method static cap(II)I
    .registers 2

    if-lez p1, :cond_6

    if-le p1, p0, :cond_5

    goto :goto_6

    :cond_5
    move p0, p1

    :cond_6
    :goto_6
    return p0
.end method


# virtual methods
.method public createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;
    .registers 3

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->getEventLoop()Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;-><init>(Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;)V

    return-object v0
.end method

.method public createWorkers(ILio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;)V
    .registers 4

    const-string v0, "number > 0 required"

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    invoke-virtual {v0, p1, p2}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->createWorkers(ILio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;)V

    return-void
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 6

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->getEventLoop()Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 15

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->getEventLoop()Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public start()V
    .registers 4

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    sget v1, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->MAX_THREADS:I

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->NONE:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->shutdown()V

    :cond_16
    return-void
.end method
