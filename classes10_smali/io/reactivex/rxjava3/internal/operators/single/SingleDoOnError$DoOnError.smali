.class final Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError$DoOnError;
.super Ljava/lang/Object;
.source "SingleDoOnError.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleObserver;


# instance fields
.field private final downstream:Lio/reactivex/rxjava3/core/SingleObserver;

.field final synthetic this$0:Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 3

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError$DoOnError;->this$0:Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError$DoOnError;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError$DoOnError;->this$0:Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_1b

    :catchall_8
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

    :goto_1b
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError$DoOnError;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError$DoOnError;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError$DoOnError;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
