.class public final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;
.super Lio/reactivex/rxjava3/parallel/ParallelFlowable;
.source "ParallelRunOn.java"


# instance fields
.field final prefetch:I

.field final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field final source:Lio/reactivex/rxjava3/parallel/ParallelFlowable;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/parallel/ParallelFlowable;Lio/reactivex/rxjava3/core/Scheduler;I)V
    .registers 4

    invoke-direct {p0}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;->source:Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;->prefetch:I

    return-void
.end method


# virtual methods
.method createSubscriber(I[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V
    .registers 8

    aget-object p2, p2, p1

    new-instance v0, Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;->prefetch:I

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;-><init>(I)V

    instance-of v1, p2, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    if-eqz v1, :cond_19

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;

    check-cast p2, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;->prefetch:I

    invoke-direct {v1, p2, v2, v0, p4}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;-><init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;ILio/reactivex/rxjava3/operators/SpscArrayQueue;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    aput-object v1, p3, p1

    goto :goto_22

    :cond_19
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;->prefetch:I

    invoke-direct {v1, p2, v2, v0, p4}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;-><init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/rxjava3/operators/SpscArrayQueue;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    aput-object v1, p3, p1

    :goto_22
    return-void
.end method

.method public parallelism()I
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;->source:Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->parallelism()I

    move-result v0

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .registers 6

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSubscribe(Lio/reactivex/rxjava3/parallel/ParallelFlowable;[Lorg/reactivestreams/Subscriber;)[Lorg/reactivestreams/Subscriber;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->validate([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    array-length v0, p1

    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    instance-of v3, v2, Lio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport;

    if-eqz v3, :cond_1f

    check-cast v2, Lio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport;

    new-instance v3, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;

    invoke-direct {v3, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;-><init>(Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;)V

    invoke-interface {v2, v0, v3}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport;->createWorkers(ILio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;)V

    goto :goto_2e

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-ge v2, v0, :cond_2e

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v3}, Lio/reactivex/rxjava3/core/Scheduler;->createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v1, v3}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;->createSubscriber(I[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2e
    :goto_2e
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;->source:Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
