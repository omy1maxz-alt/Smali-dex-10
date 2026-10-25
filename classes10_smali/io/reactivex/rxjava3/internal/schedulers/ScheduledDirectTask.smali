.class public final Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectTask;
.super Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;
.source "ScheduledDirectTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field private static final serialVersionUID:J = 0x1924f211b909b42fL


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;-><init>(Ljava/lang/Runnable;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->runner:Ljava/lang/Thread;

    const/4 v0, 0x0

    :try_start_7
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_14

    :try_start_c
    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->runner:Ljava/lang/Thread;

    return-object v0

    :catchall_14
    move-exception v1

    sget-object v2, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->runner:Ljava/lang/Thread;

    throw v1
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
