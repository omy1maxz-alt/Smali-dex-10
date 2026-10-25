.class public abstract Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;
.super Ljava/lang/Object;
.source "BasicFuseableObserver.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;
.implements Lio/reactivex/rxjava3/operators/QueueDisposable;


# instance fields
.field protected done:Z

.field protected final downstream:Lio/reactivex/rxjava3/core/Observer;

.field protected qd:Lio/reactivex/rxjava3/operators/QueueDisposable;

.field protected sourceMode:I

.field protected upstream:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    return-void
.end method


# virtual methods
.method protected afterDownstream()V
    .registers 1

    return-void
.end method

.method protected beforeDownstream()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/rxjava3/operators/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/SimpleQueue;->clear()V

    return-void
.end method

.method public dispose()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method

.method protected final fail(Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/rxjava3/operators/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/SimpleQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onComplete()V
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->done:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->done:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->done:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_20

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    instance-of v0, p1, Lio/reactivex/rxjava3/operators/QueueDisposable;

    if-eqz v0, :cond_12

    check-cast p1, Lio/reactivex/rxjava3/operators/QueueDisposable;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/rxjava3/operators/QueueDisposable;

    :cond_12
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->beforeDownstream()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->afterDownstream()V

    :cond_20
    return-void
.end method

.method protected final transitiveBoundaryFusion(I)I
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/rxjava3/operators/QueueDisposable;

    if-eqz v0, :cond_11

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_11

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/operators/QueueFuseable;->requestFusion(I)I

    move-result p1

    if-eqz p1, :cond_10

    iput p1, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->sourceMode:I

    :cond_10
    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method
