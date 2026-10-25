.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval$IntervalObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableInterval.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;
.implements Ljava/lang/Runnable;


# static fields
.field private static final serialVersionUID:J = 0x4cffcf692d13b6fL


# instance fields
.field count:J

.field final downstream:Lio/reactivex/rxjava3/core/Observer;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval$IntervalObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public run()V
    .registers 6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval$IntervalObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval$IntervalObserver;->count:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval$IntervalObserver;->count:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public setResource(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 2

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
