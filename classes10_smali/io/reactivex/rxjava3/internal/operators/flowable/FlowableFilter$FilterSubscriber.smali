.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFilter$FilterSubscriber;
.super Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;
.source "FlowableFilter.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/ConditionalSubscriber;


# instance fields
.field final filter:Lio/reactivex/rxjava3/functions/Predicate;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Predicate;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFilter$FilterSubscriber;->filter:Lio/reactivex/rxjava3/functions/Predicate;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFilter$FilterSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_d
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->qs:Lio/reactivex/rxjava3/operators/QueueSubscription;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFilter$FilterSubscriber;->filter:Lio/reactivex/rxjava3/functions/Predicate;

    :cond_4
    :goto_4
    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    invoke-interface {v1, v2}, Lio/reactivex/rxjava3/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    return-object v2

    :cond_13
    iget v2, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->sourceMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_4
.end method

.method public requestFusion(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->transitiveBoundaryFusion(I)I

    move-result p1

    return p1
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .registers 4

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->done:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->sourceMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return v1

    :cond_12
    :try_start_12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFilter$FilterSubscriber;->filter:Lio/reactivex/rxjava3/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_20

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_1f
    return v0

    :catchall_20
    move-exception p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableSubscriber;->fail(Ljava/lang/Throwable;)V

    return v1
.end method
