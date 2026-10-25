.class final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "MaybeConcatArray.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/MaybeObserver;
.implements Lorg/reactivestreams/Subscription;


# static fields
.field private static final serialVersionUID:J = 0x30dc8174e7c3966aL


# instance fields
.field final current:Ljava/util/concurrent/atomic/AtomicReference;

.field final disposables:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

.field final downstream:Lorg/reactivestreams/Subscriber;

.field index:I

.field produced:J

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final sources:[Lio/reactivex/rxjava3/core/MaybeSource;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;[Lio/reactivex/rxjava3/core/MaybeSource;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->downstream:Lorg/reactivestreams/Subscriber;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->sources:[Lio/reactivex/rxjava3/core/MaybeSource;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->disposables:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/rxjava3/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/rxjava3/internal/util/NotificationLite;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->disposables:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->dispose()V

    return-void
.end method

.method drain()V
    .registers 12

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->disposables:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    :cond_d
    invoke-interface {v2}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_18

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5d

    sget-object v5, Lio/reactivex/rxjava3/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/rxjava3/internal/util/NotificationLite;

    const/4 v6, 0x1

    if-eq v3, v5, :cond_3e

    iget-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->produced:J

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-eqz v5, :cond_3b

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->produced:J

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_41

    :cond_3b
    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_41

    :cond_3e
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :goto_41
    if-eqz v6, :cond_5d

    invoke-interface {v2}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_5d

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->index:I

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->sources:[Lio/reactivex/rxjava3/core/MaybeSource;

    array-length v5, v4

    if-ne v3, v5, :cond_54

    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    :cond_54
    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->index:I

    aget-object v3, v4, v3

    invoke-interface {v3, p0}, Lio/reactivex/rxjava3/core/MaybeSource;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    :cond_5d
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_d

    return-void
.end method

.method public onComplete()V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/rxjava3/internal/util/NotificationLite;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->disposables:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->drain()V

    return-void
.end method

.method public request(J)V
    .registers 4

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->drain()V

    :cond_e
    return-void
.end method
