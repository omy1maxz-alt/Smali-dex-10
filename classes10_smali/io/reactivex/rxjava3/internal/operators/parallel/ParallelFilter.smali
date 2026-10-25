.class public final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter;
.super Lio/reactivex/rxjava3/parallel/ParallelFlowable;
.source "ParallelFilter.java"


# instance fields
.field final predicate:Lio/reactivex/rxjava3/functions/Predicate;

.field final source:Lio/reactivex/rxjava3/parallel/ParallelFlowable;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/parallel/ParallelFlowable;Lio/reactivex/rxjava3/functions/Predicate;)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter;->source:Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter;->predicate:Lio/reactivex/rxjava3/functions/Predicate;

    return-void
.end method


# virtual methods
.method public parallelism()I
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter;->source:Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->parallelism()I

    move-result v0

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .registers 8

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSubscribe(Lio/reactivex/rxjava3/parallel/ParallelFlowable;[Lorg/reactivestreams/Subscriber;)[Lorg/reactivestreams/Subscriber;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->validate([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    array-length v0, p1

    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_2f

    aget-object v3, p1, v2

    instance-of v4, v3, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    if-eqz v4, :cond_23

    new-instance v4, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterConditionalSubscriber;

    check-cast v3, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter;->predicate:Lio/reactivex/rxjava3/functions/Predicate;

    invoke-direct {v4, v3, v5}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterConditionalSubscriber;-><init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;Lio/reactivex/rxjava3/functions/Predicate;)V

    aput-object v4, v1, v2

    goto :goto_2c

    :cond_23
    new-instance v4, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterSubscriber;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter;->predicate:Lio/reactivex/rxjava3/functions/Predicate;

    invoke-direct {v4, v3, v5}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Predicate;)V

    aput-object v4, v1, v2

    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2f
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter;->source:Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
