.class final Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# static fields
.field private static final serialVersionUID:J = -0x3201fa934be19cacL


# instance fields
.field final run:Ljava/lang/Runnable;

.field final tasks:Lio/reactivex/rxjava3/disposables/DisposableContainer;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lio/reactivex/rxjava3/disposables/DisposableContainer;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->run:Ljava/lang/Runnable;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->tasks:Lio/reactivex/rxjava3/disposables/DisposableContainer;

    return-void
.end method


# virtual methods
.method cleanup()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->tasks:Lio/reactivex/rxjava3/disposables/DisposableContainer;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/disposables/DisposableContainer;->delete(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_7
    return-void
.end method

.method public dispose()V
    .registers 4

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_8

    goto :goto_2e

    :cond_8
    const/4 v1, 0x4

    if-nez v0, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->cleanup()V

    goto :goto_2e

    :cond_16
    const/4 v0, 0x1

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->thread:Ljava/lang/Thread;

    :cond_28
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->cleanup()V

    :goto_2e
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public run()V
    .registers 6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_58

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->thread:Ljava/lang/Thread;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_56

    const/4 v0, 0x3

    const/4 v3, 0x2

    :try_start_17
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->run:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_36

    iput-object v2, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->thread:Ljava/lang/Thread;

    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->cleanup()V

    goto :goto_58

    :cond_28
    :goto_28
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v0, :cond_32

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_28

    :cond_32
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_58

    :catchall_36
    move-exception v4

    :try_start_37
    invoke-static {v4}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v4

    iput-object v2, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->thread:Ljava/lang/Thread;

    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_52

    :goto_44
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v0, :cond_4e

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_44

    :cond_4e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_55

    :cond_52
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->cleanup()V

    :goto_55
    throw v4

    :cond_56
    iput-object v2, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->thread:Ljava/lang/Thread;

    :cond_58
    :goto_58
    return-void
.end method
