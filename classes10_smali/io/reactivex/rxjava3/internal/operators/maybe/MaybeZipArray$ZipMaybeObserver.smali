.class final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeZipArray.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/MaybeObserver;


# static fields
.field private static final serialVersionUID:J = 0x2e204f2d0e121106L


# instance fields
.field final index:I

.field final parent:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->parent:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;

    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->index:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->parent:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->index:I

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->innerComplete(I)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->parent:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->index:I

    invoke-virtual {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->innerError(Ljava/lang/Throwable;I)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 2

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->parent:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->index:I

    invoke-virtual {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->innerSuccess(Ljava/lang/Object;I)V

    return-void
.end method
