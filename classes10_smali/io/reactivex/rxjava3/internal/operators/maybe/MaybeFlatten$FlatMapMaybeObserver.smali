.class final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeFlatten.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/MaybeObserver;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# static fields
.field private static final serialVersionUID:J = 0x3cb9c044fe24c252L


# instance fields
.field final downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

.field final mapper:Lio/reactivex/rxjava3/functions/Function;

.field upstream:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/functions/Function;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->mapper:Lio/reactivex/rxjava3/functions/Function;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_f
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->mapper:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null MaybeSource"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/MaybeSource;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_1c

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver;-><init>(Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/MaybeSource;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    :cond_1b
    return-void

    :catchall_1c
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
