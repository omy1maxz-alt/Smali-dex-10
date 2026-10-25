.class public abstract Lio/reactivex/rxjava3/internal/util/QueueDrainHelper;
.super Ljava/lang/Object;
.source "QueueDrainHelper.java"


# direct methods
.method public static createQueue(I)Lio/reactivex/rxjava3/operators/SimpleQueue;
    .registers 2

    if-gez p0, :cond_9

    new-instance v0, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    neg-int p0, p0

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;-><init>(I)V

    return-object v0

    :cond_9
    new-instance v0, Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;-><init>(I)V

    return-object v0
.end method

.method static isCancelled(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z
    .registers 1

    :try_start_0
    invoke-interface {p0}, Lio/reactivex/rxjava3/functions/BooleanSupplier;->getAsBoolean()Z

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p0

    :catchall_5
    move-exception p0

    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static postComplete(Lorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/rxjava3/functions/BooleanSupplier;)V
    .registers 19

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2b

    return-void

    :cond_2b
    or-long v9, v0, v2

    move-object/from16 v2, p2

    invoke-virtual {v2, v0, v1, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v3

    if-eqz v3, :cond_1c

    cmp-long v3, v0, v6

    if-eqz v3, :cond_43

    move-object v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-static/range {v9 .. v14}, Lio/reactivex/rxjava3/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z

    :cond_43
    return-void
.end method

.method static postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z
    .registers 15

    const-wide/high16 v0, -0x8000000000000000L

    and-long v2, p0, v0

    :cond_4
    :goto_4
    const/4 v4, 0x1

    cmp-long v5, v2, p0

    if-eqz v5, :cond_21

    invoke-static {p5}, Lio/reactivex/rxjava3/internal/util/QueueDrainHelper;->isCancelled(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z

    move-result v5

    if-eqz v5, :cond_10

    return v4

    :cond_10
    invoke-interface {p3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1a

    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return v4

    :cond_1a
    invoke-interface {p2, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_4

    :cond_21
    invoke-static {p5}, Lio/reactivex/rxjava3/internal/util/QueueDrainHelper;->isCancelled(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z

    move-result p0

    if-eqz p0, :cond_28

    return v4

    :cond_28
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_32

    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return v4

    :cond_32
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    cmp-long v4, p0, v2

    if-nez v4, :cond_4

    const-wide p0, 0x7fffffffffffffffL

    and-long/2addr v2, p0

    neg-long v2, v2

    invoke-virtual {p4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    and-long/2addr p0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, p0, v4

    if-nez v6, :cond_4e

    const/4 p0, 0x0

    return p0

    :cond_4e
    and-long p0, v2, v0

    move-wide v7, p0

    move-wide p0, v2

    move-wide v2, v7

    goto :goto_4
.end method

.method public static postCompleteRequest(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z
    .registers 20

    move-wide v0, p0

    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, v2

    const-wide/high16 v6, -0x8000000000000000L

    and-long v8, v2, v6

    invoke-static {v4, v5, p0, p1}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v4

    or-long/2addr v4, v8

    move-object/from16 v12, p4

    invoke-virtual {v12, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    cmp-long v4, v2, v6

    if-nez v4, :cond_2f

    or-long v8, v0, v6

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-static/range {v8 .. v13}, Lio/reactivex/rxjava3/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z

    const/4 v0, 0x1

    return v0

    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method public static request(Lorg/reactivestreams/Subscription;I)V
    .registers 4

    if-gez p1, :cond_8

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_9

    :cond_8
    int-to-long v0, p1

    :goto_9
    invoke-interface {p0, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
