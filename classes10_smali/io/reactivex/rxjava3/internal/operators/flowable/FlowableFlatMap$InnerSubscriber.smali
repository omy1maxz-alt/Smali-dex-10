.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableFlatMap.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# static fields
.field private static final serialVersionUID:J = -0x3fec6c572fe7d027L


# instance fields
.field final bufferSize:I

.field volatile done:Z

.field fusionMode:I

.field final id:J

.field final limit:I

.field final parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;

.field produced:J

.field volatile queue:Lio/reactivex/rxjava3/operators/SimpleQueue;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;IJ)V
    .registers 5

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->id:J

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;

    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->bufferSize:I

    shr-int/lit8 p1, p2, 0x2

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->limit:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onComplete()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->innerError(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->fusionMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;

    invoke-virtual {v0, p1, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->tryEmit(Ljava/lang/Object;Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)V

    goto :goto_10

    :cond_b
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drain()V

    :goto_10
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 5

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2e

    instance-of v0, p1, Lio/reactivex/rxjava3/operators/QueueSubscription;

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Lio/reactivex/rxjava3/operators/QueueSubscription;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/operators/QueueFuseable;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    iput v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->fusionMode:I

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->done:Z

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drain()V

    return-void

    :cond_21
    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    iput v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->fusionMode:I

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    :cond_28
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->bufferSize:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_2e
    return-void
.end method

.method requestMore(J)V
    .registers 6

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->fusionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->produced:J

    add-long/2addr v0, p1

    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->limit:I

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1d

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->produced:J

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/reactivestreams/Subscription;

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_1f

    :cond_1d
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->produced:J

    :cond_1f
    :goto_1f
    return-void
.end method
