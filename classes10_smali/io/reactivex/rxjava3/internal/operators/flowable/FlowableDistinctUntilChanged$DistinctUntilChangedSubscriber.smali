.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;
.super Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;
.source "FlowableDistinctUntilChanged.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/ConditionalSubscriber;


# instance fields
.field final comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

.field hasValue:Z

.field final keySelector:Lio/reactivex/rxjava3/functions/Function;

.field last:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/BiPredicate;)V
    .registers 4

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->keySelector:Lio/reactivex/rxjava3/functions/Function;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_d
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 6

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->qs:Lio/reactivex/rxjava3/operators/QueueSubscription;

    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->keySelector:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->hasValue:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1a

    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->hasValue:Z

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->last:Ljava/lang/Object;

    return-object v0

    :cond_1a
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->last:Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, Lio/reactivex/rxjava3/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->last:Ljava/lang/Object;

    return-object v0

    :cond_27
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->last:Ljava/lang/Object;

    iget v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->sourceMode:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0
.end method

.method public requestFusion(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->transitiveBoundaryFusion(I)I

    move-result p1

    return p1
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .registers 7

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->sourceMode:I

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return v2

    :cond_11
    :try_start_11
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->keySelector:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->hasValue:Z

    if-eqz v3, :cond_28

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->last:Ljava/lang/Object;

    invoke-interface {v3, v4, v0}, Lio/reactivex/rxjava3/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->last:Ljava/lang/Object;

    if-eqz v3, :cond_2c

    return v1

    :cond_28
    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->hasValue:Z

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;->last:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_32

    :cond_2c
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return v2

    :catchall_32
    move-exception p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->fail(Ljava/lang/Throwable;)V

    return v2
.end method
