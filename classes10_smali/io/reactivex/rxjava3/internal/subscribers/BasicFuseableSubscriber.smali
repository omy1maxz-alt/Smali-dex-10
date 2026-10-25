.class public abstract Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;
.super Ljava/lang/Object;
.source "BasicFuseableSubscriber.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;
.implements Lio/reactivex/rxjava3/operators/QueueSubscription;


# instance fields
.field protected done:Z

.field protected final downstream:Lorg/reactivestreams/Subscriber;

.field protected qs:Lio/reactivex/rxjava3/operators/QueueSubscription;

.field protected sourceMode:I

.field protected upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method protected afterDownstream()V
    .registers 1

    return-void
.end method

.method protected beforeDownstream()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->qs:Lio/reactivex/rxjava3/operators/QueueSubscription;

    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/SimpleQueue;->clear()V

    return-void
.end method

.method protected final fail(Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->qs:Lio/reactivex/rxjava3/operators/QueueSubscription;

    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/SimpleQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onComplete()V
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->done:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_20

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    instance-of v0, p1, Lio/reactivex/rxjava3/operators/QueueSubscription;

    if-eqz v0, :cond_12

    check-cast p1, Lio/reactivex/rxjava3/operators/QueueSubscription;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->qs:Lio/reactivex/rxjava3/operators/QueueSubscription;

    :cond_12
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->beforeDownstream()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->afterDownstream()V

    :cond_20
    return-void
.end method

.method public request(J)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method

.method protected final transitiveBoundaryFusion(I)I
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->qs:Lio/reactivex/rxjava3/operators/QueueSubscription;

    if-eqz v0, :cond_11

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_11

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/operators/QueueFuseable;->requestFusion(I)I

    move-result p1

    if-eqz p1, :cond_10

    iput p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->sourceMode:I

    :cond_10
    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method
