.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowableTake.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# static fields
.field private static final serialVersionUID:J = 0x1fc17b9fa19967edL


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;

.field remaining:J

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;J)V
    .registers 4

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->remaining:J

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onComplete()V
    .registers 6

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    iput-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->remaining:J

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_f
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    iput-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->remaining:J

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_13

    :cond_10
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_13
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 8

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_20

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->remaining:J

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v4, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    cmp-long p1, v0, v2

    if-nez p1, :cond_20

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_20
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 7

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    goto :goto_20

    :cond_19
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public request(J)V
    .registers 9

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    goto :goto_22

    :cond_11
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long v4, v0, v2

    invoke-virtual {p0, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_22
    :goto_22
    return-void
.end method
