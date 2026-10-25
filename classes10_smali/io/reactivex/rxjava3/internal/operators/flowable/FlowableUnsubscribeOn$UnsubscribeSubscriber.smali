.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "FlowableUnsubscribeOn.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# static fields
.field private static final serialVersionUID:J = 0xe16dfcddd56a9f0L


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;

.field final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/core/Scheduler;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber$Cancellation;

    invoke-direct {v1, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber$Cancellation;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_12
    return-void
.end method

.method public onComplete()V
    .registers 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_b
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_f
    return-void
.end method

.method public request(J)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
