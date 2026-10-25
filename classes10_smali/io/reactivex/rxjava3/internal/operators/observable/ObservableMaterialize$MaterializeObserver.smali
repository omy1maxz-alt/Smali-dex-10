.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize$MaterializeObserver;
.super Ljava/lang/Object;
.source "ObservableMaterialize.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# instance fields
.field final downstream:Lio/reactivex/rxjava3/core/Observer;

.field upstream:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .registers 3

    invoke-static {}, Lio/reactivex/rxjava3/core/Notification;->createOnComplete()Lio/reactivex/rxjava3/core/Notification;

    move-result-object v0

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Notification;->createOnError(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/Notification;

    move-result-object p1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p1}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Notification;->createOnNext(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Notification;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_f
    return-void
.end method
