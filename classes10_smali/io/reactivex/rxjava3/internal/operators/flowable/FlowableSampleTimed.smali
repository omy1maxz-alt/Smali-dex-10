.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableSampleTimed.java"


# instance fields
.field final emitLast:Z

.field final onDropped:Lio/reactivex/rxjava3/functions/Consumer;

.field final period:J

.field final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;ZLio/reactivex/rxjava3/functions/Consumer;)V
    .registers 8

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;->period:J

    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    iput-boolean p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;->emitLast:Z

    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;->onDropped:Lio/reactivex/rxjava3/functions/Consumer;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 10

    new-instance v1, Lio/reactivex/rxjava3/subscribers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/subscribers/SerializedSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;->emitLast:Z

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedEmitLast;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;->period:J

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;->onDropped:Lio/reactivex/rxjava3/functions/Consumer;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedEmitLast;-><init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)V

    invoke-virtual {p1, v7}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    goto :goto_30

    :cond_1d
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedNoLast;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;->period:J

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;->onDropped:Lio/reactivex/rxjava3/functions/Consumer;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedNoLast;-><init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)V

    invoke-virtual {p1, v7}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    :goto_30
    return-void
.end method
