.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;
.super Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;
.source "FlowableObserveOn.java"


# static fields
.field private static final serialVersionUID:J = 0x8f22a8b85feb275L


# instance fields
.field consumed:J

.field final downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;Lio/reactivex/rxjava3/core/Scheduler$Worker;ZI)V
    .registers 5

    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;-><init>(Lio/reactivex/rxjava3/core/Scheduler$Worker;ZI)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    return-void
.end method


# virtual methods
.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    instance-of v0, p1, Lio/reactivex/rxjava3/operators/QueueSubscription;

    if-eqz v0, :cond_38

    move-object v0, p1

    check-cast v0, Lio/reactivex/rxjava3/operators/QueueSubscription;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/operators/QueueFuseable;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    iput v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->sourceMode:I

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->done:Z

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/FlowableSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return-void

    :cond_25
    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    iput v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->sourceMode:I

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/core/FlowableSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void

    :cond_38
    new-instance v0, Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->prefetch:I

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/core/FlowableSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_4c
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->sourceMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_25

    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->limit:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_23

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v3, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_25

    :cond_23
    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    :cond_25
    :goto_25
    return-object v0
.end method

.method runAsync()V
    .registers 15

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->produced:J

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    const/4 v6, 0x1

    const/4 v7, 0x1

    :cond_a
    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    :cond_10
    :goto_10
    cmp-long v10, v2, v8

    if-eqz v10, :cond_59

    iget-boolean v11, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->done:Z

    :try_start_16
    invoke-interface {v1}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v12
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_42

    if-nez v12, :cond_1e

    const/4 v13, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v13, 0x0

    :goto_1f
    invoke-virtual {p0, v11, v13, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;)Z

    move-result v11

    if-eqz v11, :cond_26

    return-void

    :cond_26
    if-eqz v13, :cond_29

    goto :goto_59

    :cond_29
    invoke-interface {v0, v12}, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v10

    const-wide/16 v11, 0x1

    if-eqz v10, :cond_32

    add-long/2addr v2, v11

    :cond_32
    add-long/2addr v4, v11

    iget v10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->limit:I

    int-to-long v10, v10

    cmp-long v12, v4, v10

    if-nez v12, :cond_10

    iget-object v10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v10, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    const-wide/16 v4, 0x0

    goto :goto_10

    :catchall_42
    move-exception v2

    invoke-static {v2}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iput-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v3}, Lorg/reactivestreams/Subscription;->cancel()V

    invoke-interface {v1}, Lio/reactivex/rxjava3/operators/SimpleQueue;->clear()V

    invoke-interface {v0, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void

    :cond_59
    :goto_59
    if-nez v10, :cond_68

    iget-boolean v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->done:Z

    invoke-interface {v1}, Lio/reactivex/rxjava3/operators/SimpleQueue;->isEmpty()Z

    move-result v9

    invoke-virtual {p0, v8, v9, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;)Z

    move-result v8

    if-eqz v8, :cond_68

    return-void

    :cond_68
    iput-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->produced:J

    iput-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    neg-int v7, v7

    invoke-virtual {p0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_a

    return-void
.end method

.method runBackfused()V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_2
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    if-eqz v2, :cond_7

    return-void

    :cond_7
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->done:Z

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    if-eqz v2, :cond_28

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_22

    :cond_1d
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_22
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void

    :cond_28
    neg-int v1, v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_2

    return-void
.end method

.method runSync()V
    .registers 11

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->produced:J

    const/4 v4, 0x1

    const/4 v5, 0x1

    :cond_8
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    :cond_e
    :goto_e
    cmp-long v8, v2, v6

    if-eqz v8, :cond_46

    :try_start_12
    invoke-interface {v1}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v8
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_32

    iget-boolean v9, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    if-eqz v9, :cond_1b

    return-void

    :cond_1b
    if-nez v8, :cond_28

    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void

    :cond_28
    invoke-interface {v0, v8}, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_e

    :catchall_32
    move-exception v1

    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void

    :cond_46
    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    if-eqz v6, :cond_4b

    return-void

    :cond_4b
    invoke-interface {v1}, Lio/reactivex/rxjava3/operators/SimpleQueue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5c

    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void

    :cond_5c
    iput-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->produced:J

    neg-int v5, v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_8

    return-void
.end method
