.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableFlatMapMaybe.java"


# instance fields
.field final delayErrors:Z

.field final mapper:Lio/reactivex/rxjava3/functions/Function;

.field final maxConcurrency:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Function;ZI)V
    .registers 5

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe;->mapper:Lio/reactivex/rxjava3/functions/Function;

    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe;->delayErrors:Z

    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe;->maxConcurrency:I

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 7

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe;->mapper:Lio/reactivex/rxjava3/functions/Function;

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe;->delayErrors:Z

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe;->maxConcurrency:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;ZI)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    return-void
.end method
