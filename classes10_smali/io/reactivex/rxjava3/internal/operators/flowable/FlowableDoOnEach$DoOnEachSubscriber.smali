.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;
.super Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;
.source "FlowableDoOnEach.java"


# instance fields
.field final onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

.field final onComplete:Lio/reactivex/rxjava3/functions/Action;

.field final onError:Lio/reactivex/rxjava3/functions/Consumer;

.field final onNext:Lio/reactivex/rxjava3/functions/Consumer;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Action;)V
    .registers 6

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onNext:Lio/reactivex/rxjava3/functions/Consumer;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onComplete:Lio/reactivex/rxjava3/functions/Action;

    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onComplete:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_20

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :try_start_12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_18

    goto :goto_1f

    :catchall_18
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_1f
    return-void

    :catchall_20
    move-exception v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 8

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->done:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->done:Z

    :try_start_b
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_28

    :catchall_11
    move-exception v1

    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    new-instance v3, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v0

    invoke-direct {v3, v4}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_2f

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_2f
    :try_start_2f
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {p1}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_35

    goto :goto_3c

    :catchall_35
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_3c
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->sourceMode:I

    if-eqz v0, :cond_10

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onNext:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1b

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_1b
    move-exception p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_3
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->qs:Lio/reactivex/rxjava3/operators/QueueSubscription;

    invoke-interface {v3}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v3
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_4a

    if-eqz v3, :cond_3b

    :try_start_b
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onNext:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v4, v3}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_16

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V

    goto :goto_49

    :catchall_16
    move-exception v3

    :try_start_17
    invoke-static {v3}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_34

    :try_start_1a
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v4, v3}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_24

    :try_start_1f
    invoke-static {v3}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->throwIfThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :catchall_24
    move-exception v4

    invoke-static {v4}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    new-instance v5, Lio/reactivex/rxjava3/exceptions/CompositeException;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v3, v1, v0

    aput-object v4, v1, v2

    invoke-direct {v5, v1}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    throw v5
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v1}, Lio/reactivex/rxjava3/functions/Action;->run()V

    throw v0

    :cond_3b
    iget v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->sourceMode:I

    if-ne v0, v2, :cond_49

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onComplete:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V

    :cond_49
    :goto_49
    return-object v3

    :catchall_4a
    move-exception v3

    invoke-static {v3}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    :try_start_4e
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v4, v3}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_58

    invoke-static {v3}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->throwIfThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :catchall_58
    move-exception v4

    invoke-static {v4}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    new-instance v5, Lio/reactivex/rxjava3/exceptions/CompositeException;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v3, v1, v0

    aput-object v4, v1, v2

    invoke-direct {v5, v1}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    throw v5
.end method

.method public requestFusion(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->transitiveBoundaryFusion(I)I

    move-result p1

    return p1
.end method
