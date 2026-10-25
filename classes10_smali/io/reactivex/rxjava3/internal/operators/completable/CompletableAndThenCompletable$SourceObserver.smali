.class final Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$SourceObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CompletableAndThenCompletable.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/CompletableObserver;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# static fields
.field private static final serialVersionUID:J = -0x38ec1727c243e8a6L


# instance fields
.field final actualObserver:Lio/reactivex/rxjava3/core/CompletableObserver;

.field final next:Lio/reactivex/rxjava3/core/CompletableSource;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/CompletableObserver;Lio/reactivex/rxjava3/core/CompletableSource;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$SourceObserver;->actualObserver:Lio/reactivex/rxjava3/core/CompletableObserver;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$SourceObserver;->next:Lio/reactivex/rxjava3/core/CompletableSource;

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

.method public onComplete()V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$SourceObserver;->next:Lio/reactivex/rxjava3/core/CompletableSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$NextObserver;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$SourceObserver;->actualObserver:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-direct {v1, p0, v2}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$NextObserver;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/core/CompletableObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/CompletableSource;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$SourceObserver;->actualObserver:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 2

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$SourceObserver;->actualObserver:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_b
    return-void
.end method
