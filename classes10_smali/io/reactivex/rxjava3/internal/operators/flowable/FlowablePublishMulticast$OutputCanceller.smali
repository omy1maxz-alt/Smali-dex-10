.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;
.super Ljava/lang/Object;
.source "FlowablePublishMulticast.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;

.field final processor:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->downstream:Lorg/reactivestreams/Subscriber;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->processor:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->processor:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->dispose()V

    return-void
.end method

.method public onComplete()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->processor:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->processor:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->dispose()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->upstream:Lorg/reactivestreams/Subscription;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_f
    return-void
.end method

.method public request(J)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
