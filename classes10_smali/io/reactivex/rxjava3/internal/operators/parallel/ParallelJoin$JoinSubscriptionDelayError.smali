.class final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;
.super Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;
.source "ParallelJoin.java"


# static fields
.field private static final serialVersionUID:J = -0x4fa158f1d44428dbL


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;-><init>(Lorg/reactivestreams/Subscriber;II)V

    return-void
.end method


# virtual methods
.method drain()V
    .registers 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drainLoop()V

    return-void
.end method

.method drainLoop()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->subscribers:[Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;

    array-length v2, v1

    iget-object v3, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->downstream:Lorg/reactivestreams/Subscriber;

    const/4 v5, 0x1

    :cond_8
    iget-object v6, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :cond_11
    cmp-long v13, v10, v6

    if-eqz v13, :cond_57

    iget-boolean v13, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->cancelled:Z

    if-eqz v13, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->cleanup()V

    return-void

    :cond_1d
    iget-object v13, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    if-nez v13, :cond_27

    const/4 v13, 0x1

    goto :goto_28

    :cond_27
    const/4 v13, 0x0

    :goto_28
    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_2a
    if-ge v14, v2, :cond_4b

    aget-object v4, v1, v14

    iget-object v12, v4, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/rxjava3/operators/SimplePlainQueue;

    if-eqz v12, :cond_48

    invoke-interface {v12}, Lio/reactivex/rxjava3/operators/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_48

    invoke-interface {v3, v12}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->requestOne()V

    const-wide/16 v16, 0x1

    add-long v10, v10, v16

    cmp-long v4, v10, v6

    if-nez v4, :cond_47

    goto :goto_57

    :cond_47
    const/4 v15, 0x0

    :cond_48
    add-int/lit8 v14, v14, 0x1

    goto :goto_2a

    :cond_4b
    if-eqz v13, :cond_55

    if-eqz v15, :cond_55

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_55
    if-eqz v15, :cond_11

    :cond_57
    :goto_57
    cmp-long v4, v10, v6

    if-nez v4, :cond_8d

    iget-boolean v4, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->cancelled:Z

    if-eqz v4, :cond_63

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->cleanup()V

    return-void

    :cond_63
    iget-object v4, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_6d

    const/4 v4, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v4, 0x0

    :goto_6e
    const/4 v6, 0x0

    :goto_6f
    if-ge v6, v2, :cond_82

    aget-object v7, v1, v6

    iget-object v7, v7, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/rxjava3/operators/SimplePlainQueue;

    if-eqz v7, :cond_7f

    invoke-interface {v7}, Lio/reactivex/rxjava3/operators/SimpleQueue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7f

    const/4 v12, 0x0

    goto :goto_83

    :cond_7f
    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    :cond_82
    const/4 v12, 0x1

    :goto_83
    if-eqz v4, :cond_8d

    if-eqz v12, :cond_8d

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_8d
    cmp-long v4, v10, v8

    if-eqz v4, :cond_96

    iget-object v4, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v4, v10, v11}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_96
    neg-int v4, v5

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_8

    return-void
.end method

.method onComplete()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drain()V

    return-void
.end method

.method onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drain()V

    :cond_10
    return-void
.end method

.method onNext(Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;Ljava/lang/Object;)V
    .registers 8

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_60

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_39

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, v0, v2

    if-eqz p2, :cond_33

    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_33
    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->request(J)V

    goto :goto_59

    :cond_39
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->getQueue()Lio/reactivex/rxjava3/operators/SimplePlainQueue;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/reactivex/rxjava3/operators/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_59

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->cancel()Z

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    new-instance p2, Lio/reactivex/rxjava3/exceptions/QueueOverflowException;

    invoke-direct {p2}, Lio/reactivex/rxjava3/exceptions/QueueOverflowException;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drainLoop()V

    return-void

    :cond_59
    :goto_59
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_83

    return-void

    :cond_60
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->getQueue()Lio/reactivex/rxjava3/operators/SimplePlainQueue;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/reactivex/rxjava3/operators/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7c

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->cancel()Z

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    new-instance p2, Lio/reactivex/rxjava3/exceptions/QueueOverflowException;

    invoke-direct {p2}, Lio/reactivex/rxjava3/exceptions/QueueOverflowException;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_7c
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_83

    return-void

    :cond_83
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drainLoop()V

    return-void
.end method
