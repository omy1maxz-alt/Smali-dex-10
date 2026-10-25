.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableFilter$FilterObserver;
.super Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;
.source "ObservableFilter.java"


# instance fields
.field final filter:Lio/reactivex/rxjava3/functions/Predicate;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/functions/Predicate;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFilter$FilterObserver;->filter:Lio/reactivex/rxjava3/functions/Predicate;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->sourceMode:I

    if-nez v0, :cond_17

    :try_start_4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFilter$FilterObserver;->filter:Lio/reactivex/rxjava3/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_12

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_1d

    :catchall_12
    move-exception p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->fail(Ljava/lang/Throwable;)V

    return-void

    :cond_17
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 3

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/rxjava3/operators/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFilter$FilterObserver;->filter:Lio/reactivex/rxjava3/functions/Predicate;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_10
    return-object v0
.end method

.method public requestFusion(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->transitiveBoundaryFusion(I)I

    move-result p1

    return p1
.end method
