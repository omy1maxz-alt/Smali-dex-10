.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureDrop;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableOnBackpressureDrop.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field final onDrop:Lio/reactivex/rxjava3/functions/Consumer;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    iput-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureDrop;->onDrop:Lio/reactivex/rxjava3/functions/Consumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureDrop$BackpressureDropSubscriber;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureDrop;->onDrop:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureDrop$BackpressureDropSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Consumer;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    return-void
.end method
