.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableDistinctUntilChanged.java"


# instance fields
.field final comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

.field final keySelector:Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/BiPredicate;)V
    .registers 4

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;->keySelector:Lio/reactivex/rxjava3/functions/Function;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;->comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 6

    instance-of v0, p1, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    if-eqz v0, :cond_15

    check-cast p1, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;->keySelector:Lio/reactivex/rxjava3/functions/Function;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;->comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;-><init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/BiPredicate;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    goto :goto_23

    :cond_15
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;->keySelector:Lio/reactivex/rxjava3/functions/Function;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;->comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/BiPredicate;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    :goto_23
    return-void
.end method
