.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableFlatMap.java"


# instance fields
.field final bufferSize:I

.field final delayErrors:Z

.field final mapper:Lio/reactivex/rxjava3/functions/Function;

.field final maxConcurrency:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Function;ZII)V
    .registers 6

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap;->mapper:Lio/reactivex/rxjava3/functions/Function;

    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap;->delayErrors:Z

    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap;->maxConcurrency:I

    iput p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap;->bufferSize:I

    return-void
.end method

.method public static subscribe(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;ZII)Lio/reactivex/rxjava3/core/FlowableSubscriber;
    .registers 12

    new-instance v6, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;ZII)V

    return-object v6
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 7

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap;->mapper:Lio/reactivex/rxjava3/functions/Function;

    invoke-static {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScalarXMap;->tryScalarXMapSubscribe(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap;->mapper:Lio/reactivex/rxjava3/functions/Function;

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap;->delayErrors:Z

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap;->maxConcurrency:I

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap;->bufferSize:I

    invoke-static {p1, v1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap;->subscribe(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;ZII)Lio/reactivex/rxjava3/core/FlowableSubscriber;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    return-void
.end method
