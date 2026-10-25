.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;
.super Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;
.source "FlowableConcatArray.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;


# static fields
.field private static final serialVersionUID:J = -0x71382f6d553150acL


# instance fields
.field final delayError:Z

.field final downstream:Lorg/reactivestreams/Subscriber;

.field errors:Ljava/util/List;

.field index:I

.field produced:J

.field final sources:[Lorg/reactivestreams/Publisher;

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>([Lorg/reactivestreams/Publisher;ZLorg/reactivestreams/Subscriber;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;-><init>(Z)V

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->sources:[Lorg/reactivestreams/Publisher;

    iput-boolean p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->delayError:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 10

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_7d

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->sources:[Lorg/reactivestreams/Publisher;

    array-length v1, v0

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->index:I

    :cond_d
    :goto_d
    const/4 v3, 0x1

    if-ne v2, v1, :cond_38

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_27

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_37

    :cond_27
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    new-instance v2, Lio/reactivex/rxjava3/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_37

    :cond_32
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_37
    return-void

    :cond_38
    aget-object v4, v0, v2

    if-nez v4, :cond_61

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "A Publisher entry is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->delayError:Z

    if-eqz v5, :cond_5b

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    if-nez v5, :cond_55

    new-instance v5, Ljava/util/ArrayList;

    sub-int v6, v1, v2

    add-int/2addr v6, v3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    :cond_55
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_5b
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_61
    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->produced:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_6e

    iput-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->produced:J

    invoke-virtual {p0, v5, v6}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;->produced(J)V

    :cond_6e
    invoke-interface {v4, p0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->index:I

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_d

    :cond_7d
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->delayError:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->sources:[Lorg/reactivestreams/Publisher;

    array-length v1, v1

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->index:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    :cond_17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->onComplete()V

    goto :goto_23

    :cond_1e
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_23
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->produced:J

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 2

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;->setSubscription(Lorg/reactivestreams/Subscription;)V

    return-void
.end method
