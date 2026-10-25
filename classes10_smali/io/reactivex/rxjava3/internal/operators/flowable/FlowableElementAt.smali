.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAt;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableElementAt.java"


# instance fields
.field final defaultValue:Ljava/lang/Object;

.field final errorOnFewer:Z

.field final index:J


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;JLjava/lang/Object;Z)V
    .registers 6

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAt;->index:J

    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAt;->defaultValue:Ljava/lang/Object;

    iput-boolean p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAt;->errorOnFewer:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 10

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAt;->index:J

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAt;->defaultValue:Ljava/lang/Object;

    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAt;->errorOnFewer:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JLjava/lang/Object;Z)V

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    return-void
.end method
