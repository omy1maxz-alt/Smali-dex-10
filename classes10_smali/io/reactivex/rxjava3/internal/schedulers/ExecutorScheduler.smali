.class public final Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;
.super Lio/reactivex/rxjava3/core/Scheduler;
.source "ExecutorScheduler.java"


# instance fields
.field final executor:Ljava/util/concurrent/Executor;

.field final fair:Z

.field final interruptibleWorker:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;ZZ)V
    .registers 4

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    iput-boolean p2, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->interruptibleWorker:Z

    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->fair:Z

    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;
    .registers 5

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->interruptibleWorker:Z

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->fair:Z

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker;-><init>(Ljava/util/concurrent/Executor;ZZ)V

    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 4

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    :try_start_4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1d

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectTask;

    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->interruptibleWorker:Z

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;Z)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->setFuture(Ljava/util/concurrent/Future;)V

    return-object v0

    :cond_1d
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->interruptibleWorker:Z

    if-eqz v0, :cond_2d

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;-><init>(Ljava/lang/Runnable;Lio/reactivex/rxjava3/disposables/DisposableContainer;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :cond_2d
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_37
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_37} :catch_38

    return-object v0

    :catch_38
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 7

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_24

    :try_start_a
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectTask;

    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->interruptibleWorker:Z

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;Z)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_1c
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_a .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_24
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedRunnable;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedRunnable;-><init>(Ljava/lang/Runnable;)V

    sget-object p1, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$SingleHolder;->HELPER:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v1, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedDispose;

    invoke-direct {v1, p0, v0}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedDispose;-><init>(Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedRunnable;)V

    invoke-virtual {p1, v1, p2, p3, p4}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iget-object p2, v0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedRunnable;->timed:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-object v0
.end method

.method public schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 15

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_29

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    :try_start_a
    new-instance v7, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectPeriodicTask;

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->interruptibleWorker:Z

    invoke-direct {v7, p1, v0}, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectPeriodicTask;-><init>(Ljava/lang/Runnable;Z)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v7, p1}, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_21
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_a .. :try_end_21} :catch_22

    return-object v7

    :catch_22
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_29
    invoke-super/range {p0 .. p6}, Lio/reactivex/rxjava3/core/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method
