.class public final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;
.super Lio/reactivex/rxjava3/core/Flowable;
.source "ParallelJoin.java"


# instance fields
.field final delayErrors:Z

.field final prefetch:I

.field final source:Lio/reactivex/rxjava3/parallel/ParallelFlowable;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/parallel/ParallelFlowable;IZ)V
    .registers 4

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Flowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;->source:Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;->prefetch:I

    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;->delayErrors:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 5

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;->delayErrors:Z

    if-eqz v0, :cond_12

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;->source:Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->parallelism()I

    move-result v1

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;->prefetch:I

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;-><init>(Lorg/reactivestreams/Subscriber;II)V

    goto :goto_1f

    :cond_12
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscription;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;->source:Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->parallelism()I

    move-result v1

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;->prefetch:I

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscription;-><init>(Lorg/reactivestreams/Subscriber;II)V

    :goto_1f
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;->source:Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->subscribers:[Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
