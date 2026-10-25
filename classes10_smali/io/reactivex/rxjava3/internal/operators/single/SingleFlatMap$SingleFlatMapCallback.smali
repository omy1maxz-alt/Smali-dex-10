.class final Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SingleFlatMap.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleObserver;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# static fields
.field private static final serialVersionUID:J = 0x2d371b6f5a492ef4L


# instance fields
.field final downstream:Lio/reactivex/rxjava3/core/SingleObserver;

.field final mapper:Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/functions/Function;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback;->mapper:Lio/reactivex/rxjava3/functions/Function;

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

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 2

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_b
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback;->mapper:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The single returned by the mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/SingleSource;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_1e

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback$FlatMapSingleObserver;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback$FlatMapSingleObserver;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/core/SingleObserver;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/SingleSource;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    :cond_1d
    return-void

    :catchall_1e
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
