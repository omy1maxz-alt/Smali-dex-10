.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;
.super Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;
.source "ObservableDistinctUntilChanged.java"


# instance fields
.field final comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

.field hasValue:Z

.field final keySelector:Lio/reactivex/rxjava3/functions/Function;

.field last:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/BiPredicate;)V
    .registers 4

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->keySelector:Lio/reactivex/rxjava3/functions/Function;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->sourceMode:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->keySelector:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->hasValue:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lio/reactivex/rxjava3/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    if-eqz v1, :cond_2b

    return-void

    :cond_26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->hasValue:Z

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_31

    :cond_2b
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_31
    move-exception p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 5

    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/rxjava3/operators/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->keySelector:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->hasValue:Z

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->hasValue:Z

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    return-object v0

    :cond_1a
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lio/reactivex/rxjava3/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    return-object v0

    :cond_27
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    goto :goto_0
.end method

.method public requestFusion(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/observers/BasicFuseableObserver;->transitiveBoundaryFusion(I)I

    move-result p1

    return p1
.end method
