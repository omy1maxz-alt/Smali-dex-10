.class final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;
.super Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;
.source "ParallelRunOn.java"


# static fields
.field private static final serialVersionUID:J = 0xeeb976b788f368aL


# instance fields
.field final downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;ILio/reactivex/rxjava3/operators/SpscArrayQueue;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V
    .registers 5

    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;-><init>(ILio/reactivex/rxjava3/operators/SpscArrayQueue;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    return-void
.end method


# virtual methods
.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_15

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/core/FlowableSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_15
    return-void
.end method

.method public run()V
    .registers 19

    move-object/from16 v0, p0

    iget v1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->consumed:I

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    iget-object v3, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    iget v4, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->limit:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    :cond_c
    iget-object v7, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :cond_15
    :goto_15
    cmp-long v13, v11, v7

    if-eqz v13, :cond_67

    iget-boolean v14, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->cancelled:Z

    if-eqz v14, :cond_21

    invoke-virtual {v2}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    return-void

    :cond_21
    iget-boolean v14, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->done:Z

    if-eqz v14, :cond_35

    iget-object v15, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->error:Ljava/lang/Throwable;

    if-eqz v15, :cond_35

    invoke-virtual {v2}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    invoke-interface {v3, v15}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void

    :cond_35
    invoke-virtual {v2}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    if-nez v15, :cond_40

    const/16 v17, 0x1

    goto :goto_42

    :cond_40
    const/16 v17, 0x0

    :goto_42
    if-eqz v14, :cond_4f

    if-eqz v17, :cond_4f

    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void

    :cond_4f
    if-eqz v17, :cond_52

    goto :goto_67

    :cond_52
    invoke-interface {v3, v15}, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5b

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_15

    iget-object v13, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    int-to-long v14, v1

    invoke-interface {v13, v14, v15}, Lorg/reactivestreams/Subscription;->request(J)V

    const/4 v1, 0x0

    goto :goto_15

    :cond_67
    :goto_67
    if-nez v13, :cond_94

    iget-boolean v7, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->cancelled:Z

    if-eqz v7, :cond_71

    invoke-virtual {v2}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    return-void

    :cond_71
    iget-boolean v7, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->done:Z

    if-eqz v7, :cond_94

    iget-object v7, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->error:Ljava/lang/Throwable;

    if-eqz v7, :cond_85

    invoke-virtual {v2}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    invoke-interface {v3, v7}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void

    :cond_85
    invoke-virtual {v2}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_94

    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void

    :cond_94
    cmp-long v7, v11, v9

    if-eqz v7, :cond_9d

    iget-object v7, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v7, v11, v12}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_9d
    iput v1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->consumed:I

    neg-int v6, v6

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_c

    return-void
.end method
