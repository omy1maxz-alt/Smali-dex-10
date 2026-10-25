.class public abstract Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScalarXMap;
.super Ljava/lang/Object;
.source "FlowableScalarXMap.java"


# direct methods
.method public static scalarXMap(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 3

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScalarXMap$ScalarXMapFlowable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScalarXMap$ScalarXMapFlowable;-><init>(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static tryScalarXMapSubscribe(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;)Z
    .registers 4

    instance-of v0, p0, Lio/reactivex/rxjava3/functions/Supplier;

    if-eqz v0, :cond_51

    const/4 v0, 0x1

    :try_start_5
    check-cast p0, Lio/reactivex/rxjava3/functions/Supplier;

    invoke-interface {p0}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_49

    if-nez p0, :cond_11

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    return v0

    :cond_11
    :try_start_11
    invoke-interface {p2, p0}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "The mapper returned a null Publisher"

    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lorg/reactivestreams/Publisher;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_41

    instance-of p2, p0, Lio/reactivex/rxjava3/functions/Supplier;

    if-eqz p2, :cond_3d

    :try_start_20
    check-cast p0, Lio/reactivex/rxjava3/functions/Supplier;

    invoke-interface {p0}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_35

    if-nez p0, :cond_2c

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    return v0

    :cond_2c
    new-instance p2, Lio/reactivex/rxjava3/internal/subscriptions/ScalarSubscription;

    invoke-direct {p2, p1, p0}, Lio/reactivex/rxjava3/internal/subscriptions/ScalarSubscription;-><init>(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    goto :goto_40

    :catchall_35
    move-exception p0

    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return v0

    :cond_3d
    invoke-interface {p0, p1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    :goto_40
    return v0

    :catchall_41
    move-exception p0

    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return v0

    :catchall_49
    move-exception p0

    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return v0

    :cond_51
    const/4 p0, 0x0

    return p0
.end method
