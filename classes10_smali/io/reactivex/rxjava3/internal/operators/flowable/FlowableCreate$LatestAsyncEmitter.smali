.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;
.super Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;
.source "FlowableCreate.java"


# static fields
.field private static final serialVersionUID:J = 0x37d61f4a35bdda6fL


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final queue:Ljava/util/concurrent/atomic/AtomicReference;

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method drain()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_18
    const/4 v11, 0x0

    const/4 v12, 0x0

    cmp-long v13, v9, v5

    if-eqz v13, :cond_4f

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_28

    invoke-virtual {v2, v12}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_28
    iget-boolean v14, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    invoke-virtual {v2, v12}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_33

    const/16 v16, 0x1

    goto :goto_35

    :cond_33
    const/16 v16, 0x0

    :goto_35
    if-eqz v14, :cond_45

    if-eqz v16, :cond_45

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_41

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->errorDownstream(Ljava/lang/Throwable;)Z

    goto :goto_44

    :cond_41
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->completeDownstream()V

    :goto_44
    return-void

    :cond_45
    if-eqz v16, :cond_48

    goto :goto_4f

    :cond_48
    invoke-interface {v1, v15}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_18

    :cond_4f
    :goto_4f
    if-nez v13, :cond_74

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-virtual {v2, v12}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_5b
    iget-boolean v5, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_64

    const/4 v11, 0x1

    :cond_64
    if-eqz v5, :cond_74

    if-eqz v11, :cond_74

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_70

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->errorDownstream(Ljava/lang/Throwable;)Z

    goto :goto_73

    :cond_70
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->completeDownstream()V

    :goto_73
    return-void

    :cond_74
    cmp-long v5, v9, v7

    if-eqz v5, :cond_7b

    invoke-static {v0, v9, v10}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_7b
    iget-object v5, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v4, v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_11

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1f

    :cond_b
    if-nez p1, :cond_17

    const-string p1, "onNext called with a null value."

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->createNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_17
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->drain()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method onRequested()V
    .registers 1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->drain()V

    return-void
.end method

.method onUnsubscribed()V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public signalError(Ljava/lang/Throwable;)Z
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_14

    :cond_b
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->drain()V

    return p1

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return p1
.end method
