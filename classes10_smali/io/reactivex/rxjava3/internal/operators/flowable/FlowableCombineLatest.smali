.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;
.super Lio/reactivex/rxjava3/core/Flowable;
.source "FlowableCombineLatest.java"


# instance fields
.field final array:[Lorg/reactivestreams/Publisher;

.field final bufferSize:I

.field final combiner:Lio/reactivex/rxjava3/functions/Function;

.field final delayErrors:Z

.field final iterable:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>([Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/Function;IZ)V
    .registers 5

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Flowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;->array:[Lorg/reactivestreams/Publisher;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;->iterable:Ljava/lang/Iterable;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;->combiner:Lio/reactivex/rxjava3/functions/Function;

    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;->bufferSize:I

    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;->delayErrors:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 11

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;->array:[Lorg/reactivestreams/Publisher;

    const/4 v1, 0x0

    if-nez v0, :cond_3d

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/reactivestreams/Publisher;

    :try_start_9
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;->iterable:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/reactivestreams/Publisher;

    array-length v5, v0

    if-ne v3, v5, :cond_28

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    new-array v5, v5, [Lorg/reactivestreams/Publisher;

    invoke-static {v0, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_28
    add-int/lit8 v5, v3, 0x1

    const-string v6, "The Iterator returned a null Publisher"

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lorg/reactivestreams/Publisher;

    aput-object v4, v0, v3
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_35

    move v3, v5

    goto :goto_10

    :catchall_35
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_3d
    array-length v3, v0

    :cond_3e
    move v8, v3

    if-nez v8, :cond_45

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_45
    const/4 v2, 0x1

    if-ne v8, v2, :cond_58

    aget-object v0, v0, v1

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap$MapSubscriber;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest$SingletonArrayFunc;

    invoke-direct {v2, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest$SingletonArrayFunc;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;)V

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap$MapSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_58
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;->combiner:Lio/reactivex/rxjava3/functions/Function;

    iget v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;->bufferSize:I

    iget-boolean v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;->delayErrors:Z

    move-object v2, v1

    move-object v3, p1

    move v5, v8

    invoke-direct/range {v2 .. v7}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;IIZ)V

    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    invoke-virtual {v1, v0, v8}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->subscribe([Lorg/reactivestreams/Publisher;I)V

    return-void
.end method
