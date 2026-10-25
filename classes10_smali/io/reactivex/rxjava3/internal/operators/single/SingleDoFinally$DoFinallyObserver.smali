.class final Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SingleDoFinally.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleObserver;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# static fields
.field private static final serialVersionUID:J = 0x3907ba0b13897e3dL


# instance fields
.field final downstream:Lio/reactivex/rxjava3/core/SingleObserver;

.field final onFinally:Lio/reactivex/rxjava3/functions/Action;

.field upstream:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/functions/Action;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;->onFinally:Lio/reactivex/rxjava3/functions/Action;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;->runFinally()V

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;->runFinally()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_f
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;->runFinally()V

    return-void
.end method

.method runFinally()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_8
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;->onFinally:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_15

    :catchall_e
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    return-void
.end method
