.class abstract Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableSampleTimed.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;


# static fields
.field private static final serialVersionUID:J = -0x30d108f96c89b153L


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;

.field final onDropped:Lio/reactivex/rxjava3/functions/Consumer;

.field final period:J

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field final timer:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

.field final unit:Ljava/util/concurrent/TimeUnit;

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)V
    .registers 8

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->timer:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->period:J

    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->onDropped:Lio/reactivex/rxjava3/functions/Consumer;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->cancelTimer()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method cancelTimer()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->timer:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method abstract complete()V
.end method

.method emit()V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_20

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_2c

    :cond_20
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->cancel()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-static {}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;->createDefault()Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onComplete()V
    .registers 1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->cancelTimer()V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->complete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->cancelTimer()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->onDropped:Lio/reactivex/rxjava3/functions/Consumer;

    if-eqz v0, :cond_1f

    :try_start_a
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    goto :goto_1f

    :catchall_e
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->cancelTimer()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 10

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_28

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->timer:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->period:J

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v2, p0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/rxjava3/core/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_28
    return-void
.end method

.method public request(J)V
    .registers 4

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_b
    return-void
.end method
