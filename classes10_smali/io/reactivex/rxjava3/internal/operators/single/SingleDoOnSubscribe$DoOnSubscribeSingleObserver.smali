.class final Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;
.super Ljava/lang/Object;
.source "SingleDoOnSubscribe.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleObserver;


# instance fields
.field done:Z

.field final downstream:Lio/reactivex/rxjava3/core/SingleObserver;

.field final onSubscribe:Lio/reactivex/rxjava3/functions/Consumer;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/functions/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->onSubscribe:Lio/reactivex/rxjava3/functions/Consumer;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->done:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->onSubscribe:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void

    :catchall_b
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->done:Z

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
