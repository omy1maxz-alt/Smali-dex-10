.class final Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# static fields
.field private static final serialVersionUID:J = -0x219a85f0c5b2daecL


# instance fields
.field final actual:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;->actual:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;->actual:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    return-void

    :catchall_11
    move-exception v1

    :try_start_12
    invoke-static {v1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    throw v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    throw v1
.end method
