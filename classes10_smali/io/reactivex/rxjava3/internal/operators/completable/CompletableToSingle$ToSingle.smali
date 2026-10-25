.class final Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle$ToSingle;
.super Ljava/lang/Object;
.source "CompletableToSingle.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/CompletableObserver;


# instance fields
.field private final observer:Lio/reactivex/rxjava3/core/SingleObserver;

.field final synthetic this$0:Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 3

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle$ToSingle;->this$0:Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/rxjava3/core/SingleObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle$ToSingle;->this$0:Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;->completionValueSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    if-eqz v1, :cond_15

    :try_start_6
    invoke-interface {v1}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    goto :goto_17

    :catchall_b
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_15
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;->completionValue:Ljava/lang/Object;

    :goto_17
    if-nez v0, :cond_26

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/rxjava3/core/SingleObserver;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The value supplied is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_2b

    :cond_26
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :goto_2b
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
