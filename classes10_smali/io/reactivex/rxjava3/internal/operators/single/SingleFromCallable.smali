.class public final Lio/reactivex/rxjava3/internal/operators/single/SingleFromCallable;
.super Lio/reactivex/rxjava3/core/Single;
.source "SingleFromCallable.java"


# instance fields
.field final callable:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFromCallable;->callable:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 5

    invoke-static {}, Lio/reactivex/rxjava3/disposables/Disposable$-CC;->empty()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    :cond_e
    :try_start_e
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFromCallable;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The callable returned a null value"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_23

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :cond_22
    return-void

    :catchall_23
    move-exception v1

    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_34

    :cond_31
    invoke-static {v1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_34
    return-void
.end method
