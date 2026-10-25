.class public final Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "ScheduledRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Callable;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# static fields
.field static final ASYNC_DISPOSED:Ljava/lang/Object;

.field static final DONE:Ljava/lang/Object;

.field static final PARENT_DISPOSED:Ljava/lang/Object;

.field static final SYNC_DISPOSED:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x54ef67182406fc25L


# instance fields
.field final actual:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lio/reactivex/rxjava3/disposables/DisposableContainer;)V
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->actual:Ljava/lang/Runnable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->run()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public dispose()V
    .registers 8

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_31

    sget-object v2, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    if-eq v1, v2, :cond_31

    sget-object v4, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    if-ne v1, v4, :cond_13

    goto :goto_31

    :cond_13
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-eq v5, v6, :cond_20

    const/4 v5, 0x1

    goto :goto_21

    :cond_20
    const/4 v5, 0x0

    :goto_21
    if-eqz v5, :cond_24

    move-object v2, v4

    :cond_24
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_31

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_31
    :goto_31
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    if-eq v0, v1, :cond_4b

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    if-eq v0, v1, :cond_4b

    if-nez v0, :cond_40

    goto :goto_4b

    :cond_40
    invoke-virtual {p0, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    check-cast v0, Lio/reactivex/rxjava3/disposables/DisposableContainer;

    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/disposables/DisposableContainer;->delete(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_4b
    :goto_4b
    return-void
.end method

.method public isDisposed()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    if-eq v1, v2, :cond_d

    sget-object v2, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    if-ne v1, v2, :cond_e

    :cond_d
    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public run()V
    .registers 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_b
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->actual:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_3f

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    if-eq v4, v5, :cond_27

    sget-object v5, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    invoke-virtual {p0, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    if-eqz v4, :cond_27

    check-cast v4, Lio/reactivex/rxjava3/disposables/DisposableContainer;

    invoke-interface {v4, p0}, Lio/reactivex/rxjava3/disposables/DisposableContainer;->delete(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_27
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    if-eq v3, v4, :cond_3b

    sget-object v4, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    if-eq v3, v4, :cond_3b

    sget-object v4, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_3b
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return-void

    :catchall_3f
    move-exception v4

    :try_start_40
    invoke-static {v4}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    throw v4
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v4

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    if-eq v5, v6, :cond_5c

    sget-object v6, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    invoke-virtual {p0, v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    if-eqz v5, :cond_5c

    check-cast v5, Lio/reactivex/rxjava3/disposables/DisposableContainer;

    invoke-interface {v5, p0}, Lio/reactivex/rxjava3/disposables/DisposableContainer;->delete(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_5c
    :goto_5c
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    if-eq v3, v5, :cond_71

    sget-object v5, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    if-eq v3, v5, :cond_71

    sget-object v5, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    goto :goto_5c

    :cond_71
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    throw v4
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .registers 5

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    if-ne v1, v2, :cond_a

    return-void

    :cond_a
    sget-object v2, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    if-ne v1, v2, :cond_13

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :cond_13
    sget-object v2, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1b

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :cond_1b
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    const-string v0, "Finished"

    goto :goto_35

    :cond_c
    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    const-string v0, "Disposed(Sync)"

    goto :goto_35

    :cond_13
    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    if-ne v0, v1, :cond_1a

    const-string v0, "Disposed(Async)"

    goto :goto_35

    :cond_1a
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    const-string v0, "Waiting"

    goto :goto_35

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
