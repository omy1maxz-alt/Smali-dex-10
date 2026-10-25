.class final Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess$DoOnSuccess;
.super Ljava/lang/Object;
.source "SingleDoOnSuccess.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleObserver;


# instance fields
.field final downstream:Lio/reactivex/rxjava3/core/SingleObserver;

.field final synthetic this$0:Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess;Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 3

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess$DoOnSuccess;->this$0:Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess$DoOnSuccess;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess$DoOnSuccess;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess$DoOnSuccess;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess$DoOnSuccess;->this$0:Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess;->onSuccess:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_d

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess$DoOnSuccess;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_d
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess$DoOnSuccess;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
