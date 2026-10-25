.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;
.super Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;
.source "FlowableFilter.java"


# instance fields
.field final filter:Lio/reactivex/rxjava3/functions/Predicate;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;Lio/reactivex/rxjava3/functions/Predicate;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;-><init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->filter:Lio/reactivex/rxjava3/functions/Predicate;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_d
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->qs:Lio/reactivex/rxjava3/operators/QueueSubscription;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->filter:Lio/reactivex/rxjava3/functions/Predicate;

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
    iget v2, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->sourceMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_4
.end method

.method public requestFusion(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->transitiveBoundaryFusion(I)I

    move-result p1

    return p1
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .registers 5

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->sourceMode:I

    if-eqz v0, :cond_12

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_12
    const/4 v0, 0x1

    :try_start_13
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->filter:Lio/reactivex/rxjava3/functions/Predicate;

    invoke-interface {v2, p1}, Lio/reactivex/rxjava3/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_25

    if-eqz v2, :cond_24

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    invoke-interface {v2, p1}, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1

    :catchall_25
    move-exception p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BasicFuseableConditionalSubscriber;->fail(Ljava/lang/Throwable;)V

    return v0
.end method
