.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;
.super Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;
.source "FlowableDistinctUntilChanged.java"


# instance fields
.field final comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

.field hasValue:Z

.field final keySelector:Lio/reactivex/rxjava3/functions/Function;

.field last:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/BiPredicate;)V
    .registers 4

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;-><init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->keySelector:Lio/reactivex/rxjava3/functions/Function;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_d
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 6

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->qs:Lio/reactivex/rxjava3/operators/QueueSubscription;

    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->keySelector:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->hasValue:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1a

    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->hasValue:Z

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->last:Ljava/lang/Object;

    return-object v0

    :cond_1a
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->last:Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, Lio/reactivex/rxjava3/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->last:Ljava/lang/Object;

    return-object v0

    :cond_27
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->last:Ljava/lang/Object;

    iget v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->sourceMode:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0
.end method

.method public requestFusion(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->transitiveBoundaryFusion(I)I

    move-result p1

    return p1
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .registers 7

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->sourceMode:I

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    const/4 v0, 0x1

    :try_start_12
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->keySelector:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v2, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->hasValue:Z

    if-eqz v3, :cond_29

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->last:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lio/reactivex/rxjava3/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iput-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->last:Ljava/lang/Object;

    if-eqz v3, :cond_2d

    return v1

    :cond_29
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->hasValue:Z

    iput-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;->last:Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_33

    :cond_2d
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return v0

    :catchall_33
    move-exception p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->fail(Ljava/lang/Throwable;)V

    return v0
.end method
