.class final Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$NextObserver;
.super Ljava/lang/Object;
.source "CompletableAndThenCompletable.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/CompletableObserver;


# instance fields
.field final downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

.field final parent:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$NextObserver;->parent:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$NextObserver;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$NextObserver;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$NextObserver;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$NextObserver;->parent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
