.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableConcatMap.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;


# static fields
.field private static final serialVersionUID:J = 0x245ca3bdfb16b82cL


# instance fields
.field final downstream:Lio/reactivex/rxjava3/core/Observer;

.field final parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;

    return-void
.end method


# virtual methods
.method dispose()V
    .registers 1

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->active:Z

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-boolean p1, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->tillTheEnd:Z

    if-nez p1, :cond_13

    iget-object p1, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_13
    const/4 p1, 0x0

    iput-boolean p1, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->active:Z

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->drain()V

    :cond_19
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 2

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
