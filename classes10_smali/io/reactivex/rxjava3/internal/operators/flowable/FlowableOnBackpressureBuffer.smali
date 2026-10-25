.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableOnBackpressureBuffer.java"


# instance fields
.field final bufferSize:I

.field final delayError:Z

.field final onOverflow:Lio/reactivex/rxjava3/functions/Action;

.field final unbounded:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;IZZLio/reactivex/rxjava3/functions/Action;)V
    .registers 6

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;->bufferSize:I

    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;->unbounded:Z

    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;->delayError:Z

    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;->onOverflow:Lio/reactivex/rxjava3/functions/Action;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 10

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer$BackpressureBufferSubscriber;

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;->bufferSize:I

    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;->unbounded:Z

    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;->delayError:Z

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;->onOverflow:Lio/reactivex/rxjava3/functions/Action;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer$BackpressureBufferSubscriber;-><init>(Lorg/reactivestreams/Subscriber;IZZLio/reactivex/rxjava3/functions/Action;)V

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    return-void
.end method
