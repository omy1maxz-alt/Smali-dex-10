.class final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeObserveOn.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/MaybeObserver;
.implements Lio/reactivex/rxjava3/disposables/Disposable;
.implements Ljava/lang/Runnable;


# static fields
.field private static final serialVersionUID:J = 0x76f356c87ebda749L


# instance fields
.field final downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

.field error:Ljava/lang/Throwable;

.field final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->error:Ljava/lang/Throwable;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 2

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_b
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->value:Ljava/lang/Object;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->error:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->error:Ljava/lang/Throwable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_d
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->value:Ljava/lang/Object;

    if-eqz v0, :cond_19

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->value:Ljava/lang/Object;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_19
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onComplete()V

    :goto_1e
    return-void
.end method
