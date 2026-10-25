.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableObserveOn.java"


# instance fields
.field final delayError:Z

.field final prefetch:I

.field final scheduler:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/core/Scheduler;ZI)V
    .registers 5

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;->delayError:Z

    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;->prefetch:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 7

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Scheduler;->createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;

    move-result-object v0

    instance-of v1, p1, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;

    check-cast p1, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;->delayError:Z

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;->prefetch:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;-><init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;Lio/reactivex/rxjava3/core/Scheduler$Worker;ZI)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    goto :goto_29

    :cond_1b
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;->delayError:Z

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;->prefetch:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/core/Scheduler$Worker;ZI)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    :goto_29
    return-void
.end method
