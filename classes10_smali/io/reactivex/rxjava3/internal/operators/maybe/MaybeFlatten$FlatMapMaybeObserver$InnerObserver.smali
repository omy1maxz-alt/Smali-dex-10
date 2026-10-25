.class final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver;
.super Ljava/lang/Object;
.source "MaybeFlatten.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/MaybeObserver;


# instance fields
.field final synthetic this$0:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;)V
    .registers 2

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver;->this$0:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver;->this$0:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver;->this$0:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver;->this$0:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver;->this$0:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->downstream:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
