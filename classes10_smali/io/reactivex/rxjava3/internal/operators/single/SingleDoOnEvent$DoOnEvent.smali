.class final Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent$DoOnEvent;
.super Ljava/lang/Object;
.source "SingleDoOnEvent.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleObserver;


# instance fields
.field private final downstream:Lio/reactivex/rxjava3/core/SingleObserver;

.field final synthetic this$0:Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 3

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent$DoOnEvent;->this$0:Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent$DoOnEvent;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent$DoOnEvent;->this$0:Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;->onEvent:Lio/reactivex/rxjava3/functions/BiConsumer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lio/reactivex/rxjava3/functions/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_1c

    :catchall_9
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

    :goto_1c
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent$DoOnEvent;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent$DoOnEvent;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent$DoOnEvent;->this$0:Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;->onEvent:Lio/reactivex/rxjava3/functions/BiConsumer;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lio/reactivex/rxjava3/functions/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent$DoOnEvent;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_e
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent$DoOnEvent;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
