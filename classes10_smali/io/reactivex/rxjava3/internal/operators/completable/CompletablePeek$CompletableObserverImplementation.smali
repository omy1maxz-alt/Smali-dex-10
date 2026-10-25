.class final Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;
.super Ljava/lang/Object;
.source "CompletablePeek.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/CompletableObserver;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# instance fields
.field final downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

.field final synthetic this$0:Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;

.field upstream:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .registers 3

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onDispose:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_f

    :catchall_8
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_f
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method

.method doAfter()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_f

    :catchall_8
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_f
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onComplete:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onTerminate:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1e

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onComplete()V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->doAfter()V

    return-void

    :catchall_1e
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_a

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onTerminate:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_19

    goto :goto_2c

    :catchall_19
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

    move-object p1, v1

    :goto_2c
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->doAfter()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onSubscribe:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_17

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_16

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/CompletableObserver;)V

    return-void
.end method
