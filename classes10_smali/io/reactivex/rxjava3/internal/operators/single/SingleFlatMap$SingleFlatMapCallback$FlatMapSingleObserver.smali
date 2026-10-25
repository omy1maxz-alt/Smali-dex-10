.class final Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback$FlatMapSingleObserver;
.super Ljava/lang/Object;
.source "SingleFlatMap.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleObserver;


# instance fields
.field final downstream:Lio/reactivex/rxjava3/core/SingleObserver;

.field final parent:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback$FlatMapSingleObserver;->parent:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback$FlatMapSingleObserver;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback$FlatMapSingleObserver;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback$FlatMapSingleObserver;->parent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback$FlatMapSingleObserver;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
