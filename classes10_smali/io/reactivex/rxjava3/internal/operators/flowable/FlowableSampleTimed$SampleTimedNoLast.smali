.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedNoLast;
.super Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;
.source "FlowableSampleTimed.java"


# static fields
.field private static final serialVersionUID:J = -0x63165c33f8fff493L


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method


# virtual methods
.method complete()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public run()V
    .registers 1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->emit()V

    return-void
.end method
