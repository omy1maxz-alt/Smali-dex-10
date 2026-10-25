.class public final Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromRunnable;
.super Lio/reactivex/rxjava3/core/Completable;
.source "CompletableFromRunnable.java"


# instance fields
.field final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Completable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromRunnable;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .registers 4

    invoke-static {}, Lio/reactivex/rxjava3/disposables/Disposable$-CC;->empty()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_2d

    :try_start_d
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1c

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-interface {p1}, Lio/reactivex/rxjava3/core/CompletableObserver;->onComplete()V

    goto :goto_2d

    :catchall_1c
    move-exception v1

    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_2d

    :cond_2a
    invoke-static {v1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_2d
    :goto_2d
    return-void
.end method
