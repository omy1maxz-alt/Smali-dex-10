.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable;
.super Lio/reactivex/rxjava3/core/Flowable;
.source "FlowableFromIterable.java"


# instance fields
.field final source:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Flowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable;->source:Ljava/lang/Iterable;

    return-void
.end method

.method public static subscribe(Lorg/reactivestreams/Subscriber;Ljava/util/Iterator;)V
    .registers 4

    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_23

    if-nez v0, :cond_a

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_a
    instance-of v0, p0, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    if-eqz v0, :cond_1a

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;

    move-object v1, p0

    check-cast v1, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    invoke-direct {v0, v1, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;-><init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;Ljava/util/Iterator;)V

    invoke-interface {p0, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    goto :goto_22

    :cond_1a
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;-><init>(Lorg/reactivestreams/Subscriber;Ljava/util/Iterator;)V

    invoke-interface {p0, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :goto_22
    return-void

    :catchall_23
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p1, p0}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable;->source:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_a

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable;->subscribe(Lorg/reactivestreams/Subscriber;Ljava/util/Iterator;)V

    return-void

    :catchall_a
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
