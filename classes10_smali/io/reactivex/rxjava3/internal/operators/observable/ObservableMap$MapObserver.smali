.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap$MapObserver;
.super Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;
.source "ObservableMap.java"


# instance fields
.field final mapper:Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/functions/Function;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap$MapObserver;->mapper:Lio/reactivex/rxjava3/functions/Function;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->sourceMode:I

    if-eqz v0, :cond_10

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap$MapObserver;->mapper:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper function returned a null value."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_21

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_21
    move-exception p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/rxjava3/operators/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap$MapObserver;->mapper:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper function returned a null value."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0
.end method

.method public requestFusion(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->transitiveBoundaryFusion(I)I

    move-result p1

    return p1
.end method
