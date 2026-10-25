.class public Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;
.super Lio/reactivex/rxjava3/core/Scheduler$Worker;
.source "NewThreadWorker.java"


# instance fields
.field volatile disposed:Z

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler$Worker;-><init>()V

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerPoolFactory;->create(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->disposed:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->disposed:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_c
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->disposed:Z

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 11

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->disposed:Z

    if-eqz v0, :cond_7

    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_7
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/disposables/DisposableContainer;)Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

.method public scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/disposables/DisposableContainer;)Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;
    .registers 9

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;

    invoke-direct {v0, p1, p5}, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;-><init>(Ljava/lang/Runnable;Lio/reactivex/rxjava3/disposables/DisposableContainer;)V

    if-eqz p5, :cond_12

    invoke-interface {p5, v0}, Lio/reactivex/rxjava3/disposables/DisposableContainer;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result p1

    if-nez p1, :cond_12

    return-object v0

    :cond_12
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_1f

    :try_start_18
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_25

    :cond_1f
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_25
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_28
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_18 .. :try_end_28} :catch_29

    goto :goto_32

    :catch_29
    move-exception p1

    if-eqz p5, :cond_2f

    invoke-interface {p5, v0}, Lio/reactivex/rxjava3/disposables/DisposableContainer;->remove(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_2f
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_32
    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 8

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectTask;

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;Z)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_17

    :try_start_10
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_1d

    :cond_17
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_1d
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_20
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_10 .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1
.end method

.method public schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 15

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-gtz v2, :cond_2d

    new-instance p4, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;

    iget-object p5, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p4, p1, p5}, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    cmp-long p1, p2, v0

    if-gtz p1, :cond_1c

    :try_start_15
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, p4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_22

    :cond_1c
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, p4, p2, p3, p6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_22
    invoke-virtual {p4, p1}, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->setFirst(Ljava/util/concurrent/Future;)V
    :try_end_25
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_15 .. :try_end_25} :catch_26

    return-object p4

    :catch_26
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_2d
    new-instance v7, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectPeriodicTask;

    const/4 v0, 0x1

    invoke-direct {v7, p1, v0}, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectPeriodicTask;-><init>(Ljava/lang/Runnable;Z)V

    :try_start_33
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v7, p1}, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_40
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_33 .. :try_end_40} :catch_41

    return-object v7

    :catch_41
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1
.end method

.method public shutdown()V
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->disposed:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->disposed:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_c
    return-void
.end method
