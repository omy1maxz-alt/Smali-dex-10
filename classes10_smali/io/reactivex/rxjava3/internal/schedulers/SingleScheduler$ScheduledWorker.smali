.class final Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler$ScheduledWorker;
.super Lio/reactivex/rxjava3/core/Scheduler$Worker;
.source "SingleScheduler.java"


# instance fields
.field volatile disposed:Z

.field final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field final tasks:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler$Worker;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler$ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler$ScheduledWorker;->tasks:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler$ScheduledWorker;->disposed:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler$ScheduledWorker;->disposed:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler$ScheduledWorker;->tasks:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    :cond_c
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler$ScheduledWorker;->disposed:Z

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 8

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler$ScheduledWorker;->disposed:Z

    if-eqz v0, :cond_7

    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_7
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler$ScheduledWorker;->tasks:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;-><init>(Ljava/lang/Runnable;Lio/reactivex/rxjava3/disposables/DisposableContainer;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler$ScheduledWorker;->tasks:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_24

    :try_start_1d
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler$ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_2a

    :cond_24
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler$ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_2a
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_2d
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1d .. :try_end_2d} :catch_2e

    return-object v0

    :catch_2e
    move-exception p1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler$ScheduledWorker;->dispose()V

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1
.end method
