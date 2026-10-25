.class final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "MaybeZipArray.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# static fields
.field private static final serialVersionUID:J = -0x4d1e29153b0426a9L


# instance fields
.field final downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

.field final observers:[Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

.field values:[Ljava/lang/Object;

.field final zipper:Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/MaybeObserver;ILio/reactivex/rxjava3/functions/Function;)V
    .registers 5

    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->zipper:Lio/reactivex/rxjava3/functions/Function;

    new-array p1, p2, [Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    const/4 p3, 0x0

    :goto_a
    if-ge p3, p2, :cond_16

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    invoke-direct {v0, p0, p3}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;-><init>(Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;I)V

    aput-object v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_16
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->observers:[Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-lez v1, :cond_17

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->observers:[Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    array-length v2, v1

    :goto_a
    if-ge v0, v2, :cond_14

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method disposeExcept(I)V
    .registers 6

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->observers:[Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_e

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    :goto_e
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v1, :cond_18

    aget-object v2, v0, p1

    invoke-virtual {v2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->dispose()V

    goto :goto_e

    :cond_18
    return-void
.end method

.method innerComplete(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->disposeExcept(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {p1}, Lio/reactivex/rxjava3/core/MaybeObserver;->onComplete()V

    :cond_12
    return-void
.end method

.method innerError(Ljava/lang/Throwable;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->disposeExcept(I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {p2, p1}, Lio/reactivex/rxjava3/core/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_13
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_16
    return-void
.end method

.method innerSuccess(Ljava/lang/Object;I)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    if-eqz v0, :cond_6

    aput-object p1, v0, p2

    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2b

    const/4 p1, 0x0

    :try_start_d
    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->zipper:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {p2, v0}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "The zipper returned a null value"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_20

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {p1, p2}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2b

    :catchall_20
    move-exception p2

    invoke-static {p2}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {p1, p2}, Lio/reactivex/rxjava3/core/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
