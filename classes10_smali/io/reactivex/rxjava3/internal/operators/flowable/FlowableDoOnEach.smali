.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableDoOnEach.java"


# instance fields
.field final onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

.field final onComplete:Lio/reactivex/rxjava3/functions/Action;

.field final onError:Lio/reactivex/rxjava3/functions/Consumer;

.field final onNext:Lio/reactivex/rxjava3/functions/Consumer;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Action;)V
    .registers 6

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;->onNext:Lio/reactivex/rxjava3/functions/Consumer;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;->onComplete:Lio/reactivex/rxjava3/functions/Action;

    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;->onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 10

    instance-of v0, p1, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;

    move-object v2, p1

    check-cast v2, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;->onNext:Lio/reactivex/rxjava3/functions/Consumer;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;->onComplete:Lio/reactivex/rxjava3/functions/Action;

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;->onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;-><init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Action;)V

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    goto :goto_2f

    :cond_1b
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;->onNext:Lio/reactivex/rxjava3/functions/Consumer;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;->onComplete:Lio/reactivex/rxjava3/functions/Action;

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;->onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Action;)V

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    :goto_2f
    return-void
.end method
