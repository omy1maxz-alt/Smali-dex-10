.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableTake.java"


# instance fields
.field final n:J


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;J)V
    .registers 4

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake;->n:J

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 6

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake;->n:J

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;-><init>(Lorg/reactivestreams/Subscriber;J)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    return-void
.end method
