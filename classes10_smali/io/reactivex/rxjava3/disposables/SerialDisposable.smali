.class public final Lio/reactivex/rxjava3/disposables/SerialDisposable;
.super Ljava/lang/Object;
.source "SerialDisposable.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# instance fields
.field final resource:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/disposables/SerialDisposable;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/disposables/SerialDisposable;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public get()Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/disposables/SerialDisposable;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/Disposable;

    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_10

    invoke-static {}, Lio/reactivex/rxjava3/disposables/Disposable$-CC;->disposed()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public isDisposed()Z
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/disposables/SerialDisposable;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public set(Lio/reactivex/rxjava3/disposables/Disposable;)Z
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/disposables/SerialDisposable;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result p1

    return p1
.end method
