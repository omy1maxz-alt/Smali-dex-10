.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;
.super Ljava/lang/Object;
.source "ObservableZip.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;

.field final queue:Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;

    new-instance p1, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    invoke-direct {p1, p2}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->queue:Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->done:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->done:Z

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->queue:Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->drain()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
