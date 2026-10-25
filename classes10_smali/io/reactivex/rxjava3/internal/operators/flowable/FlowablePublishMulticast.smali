.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowablePublishMulticast.java"


# instance fields
.field final delayError:Z

.field final prefetch:I

.field final selector:Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Function;IZ)V
    .registers 5

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast;->selector:Lio/reactivex/rxjava3/functions/Function;

    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast;->prefetch:I

    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast;->delayError:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 5

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast;->prefetch:I

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast;->delayError:Z

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;-><init>(IZ)V

    :try_start_9
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast;->selector:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "selector returned a null Publisher"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lorg/reactivestreams/Publisher;
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_24

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;

    invoke-direct {v2, p1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;)V

    invoke-interface {v1, v2}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    return-void

    :catchall_24
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
