.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableFlatMapMaybe.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# static fields
.field private static final serialVersionUID:J = 0x775a28d5b42d01b7L


# instance fields
.field final active:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile cancelled:Z

.field final delayErrors:Z

.field final downstream:Lorg/reactivestreams/Subscriber;

.field final errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field final mapper:Lio/reactivex/rxjava3/functions/Function;

.field final maxConcurrency:I

.field final queue:Ljava/util/concurrent/atomic/AtomicReference;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final set:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;ZI)V
    .registers 5

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->mapper:Lio/reactivex/rxjava3/functions/Function;

    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->delayErrors:Z

    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->maxConcurrency:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->set:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static checkTerminate(ZLio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;)Z
    .registers 2

    if-eqz p0, :cond_c

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_a
    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->cancelled:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->set:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    return-void
.end method

.method clear()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;->clear()V

    :cond_d
    return-void
.end method

.method drain()V
    .registers 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->drainLoop()V

    :cond_9
    return-void
.end method

.method drainLoop()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x1

    const/4 v5, 0x1

    :cond_a
    iget-object v6, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_13
    const/4 v12, 0x0

    cmp-long v13, v10, v6

    if-eqz v13, :cond_69

    iget-boolean v14, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->cancelled:Z

    if-eqz v14, :cond_20

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->clear()V

    return-void

    :cond_20
    iget-boolean v14, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->delayErrors:Z

    if-nez v14, :cond_37

    iget-object v14, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Throwable;

    if-eqz v14, :cond_37

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->clear()V

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v2, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_37
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    if-nez v14, :cond_3f

    const/4 v14, 0x1

    goto :goto_40

    :cond_3f
    const/4 v14, 0x0

    :goto_40
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    if-eqz v15, :cond_4d

    invoke-virtual {v15}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v15

    goto :goto_4e

    :cond_4d
    const/4 v15, 0x0

    :goto_4e
    if-nez v15, :cond_53

    const/16 v16, 0x1

    goto :goto_55

    :cond_53
    const/16 v16, 0x0

    :goto_55
    if-eqz v14, :cond_5f

    if-eqz v16, :cond_5f

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v2, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_5f
    if-eqz v16, :cond_62

    goto :goto_69

    :cond_62
    invoke-interface {v1, v15}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    goto :goto_13

    :cond_69
    :goto_69
    if-nez v13, :cond_ac

    iget-boolean v6, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->cancelled:Z

    if-eqz v6, :cond_73

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->clear()V

    return-void

    :cond_73
    iget-boolean v6, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->delayErrors:Z

    if-nez v6, :cond_8a

    iget-object v6, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_8a

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->clear()V

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v2, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_8a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v6, :cond_92

    const/4 v6, 0x1

    goto :goto_93

    :cond_92
    const/4 v6, 0x0

    :goto_93
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    if-eqz v7, :cond_a1

    invoke-virtual {v7}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a2

    :cond_a1
    const/4 v12, 0x1

    :cond_a2
    if-eqz v6, :cond_ac

    if-eqz v12, :cond_ac

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v2, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_ac
    cmp-long v6, v10, v8

    if-eqz v6, :cond_c1

    iget-object v6, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v6, v10, v11}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget v6, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->maxConcurrency:I

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_c1

    iget-object v6, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v6, v10, v11}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_c1
    neg-int v5, v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_a

    return-void
.end method

.method getOrCreateQueue()Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    new-instance v0, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;-><init>(I)V

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return-object v0

    :cond_1e
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    return-object v0
.end method

.method innerComplete(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber$InnerObserver;)V
    .registers 7

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->set:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->delete(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-wide/16 v0, 0x1

    const v2, 0x7fffffff

    if-nez p1, :cond_4b

    const/4 p1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    if-nez v4, :cond_21

    const/4 p1, 0x1

    :cond_21
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    invoke-static {p1, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->checkTerminate(ZLio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;)Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_37
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->maxConcurrency:I

    if-eq p1, v2, :cond_40

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_40
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_47

    return-void

    :cond_47
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->drainLoop()V

    goto :goto_5c

    :cond_4b
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->maxConcurrency:I

    if-eq p1, v2, :cond_59

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_59
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->drain()V

    :goto_5c
    return-void
.end method

.method innerError(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber$InnerObserver;Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->set:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->delete(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_32

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->delayErrors:Z

    if-nez p1, :cond_1c

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->set:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    goto :goto_2a

    :cond_1c
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->maxConcurrency:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_2a

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_2a
    :goto_2a
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->drain()V

    :cond_32
    return-void
.end method

.method innerSuccess(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber$InnerObserver;Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->set:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->delete(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_6a

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_1c

    const/4 p1, 0x1

    :cond_1c
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_57

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->checkTerminate(ZLio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;)Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_43
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->maxConcurrency:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_60

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_60

    :cond_57
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->getOrCreateQueue()Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    move-result-object p1

    monitor-enter p1

    :try_start_5c
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_67

    :cond_60
    :goto_60
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_7f

    return-void

    :catchall_67
    move-exception p2

    :try_start_68
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p2

    :cond_6a
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->getOrCreateQueue()Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    move-result-object p1

    monitor-enter p1

    :try_start_6f
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_83

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_7f

    return-void

    :cond_7f
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->drainLoop()V

    return-void

    :catchall_83
    move-exception p2

    :try_start_84
    monitor-exit p1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw p2
.end method

.method public onComplete()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->delayErrors:Z

    if-nez p1, :cond_16

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->set:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    :cond_16
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->drain()V

    :cond_19
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->mapper:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null MaybeSource"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/MaybeSource;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_27

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber$InnerObserver;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber$InnerObserver;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;)V

    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->cancelled:Z

    if-nez v1, :cond_26

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->set:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/MaybeSource;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    :cond_26
    return-void

    :catchall_27
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_23

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->maxConcurrency:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1f

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_23

    :cond_1f
    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_23
    :goto_23
    return-void
.end method

.method public request(J)V
    .registers 4

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;->drain()V

    :cond_e
    return-void
.end method
