.class final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterConditionalSubscriber;
.super Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;
.source "ParallelFilter.java"


# instance fields
.field final downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;Lio/reactivex/rxjava3/functions/Predicate;)V
    .registers 3

    invoke-direct {p0, p2}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Predicate;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->done:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->done:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/FlowableSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_f
    return-void
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .registers 4

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->done:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    :try_start_5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->predicate:Lio/reactivex/rxjava3/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_14

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catchall_14
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->cancel()V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    :cond_1e
    return v1
.end method
