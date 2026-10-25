.class public final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeCallbackObserver.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/MaybeObserver;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# static fields
.field private static final serialVersionUID:J = -0x5455abeb2f86e01aL


# instance fields
.field final onComplete:Lio/reactivex/rxjava3/functions/Action;

.field final onError:Lio/reactivex/rxjava3/functions/Consumer;

.field final onSuccess:Lio/reactivex/rxjava3/functions/Consumer;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V
    .registers 4

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;->onSuccess:Lio/reactivex/rxjava3/functions/Consumer;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;->onComplete:Lio/reactivex/rxjava3/functions/Action;

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
    .registers 2

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :try_start_5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;->onComplete:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_12

    :catchall_b
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :try_start_5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_20

    :catchall_b
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_20
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 2

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :try_start_5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;->onSuccess:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_12

    :catchall_b
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method
