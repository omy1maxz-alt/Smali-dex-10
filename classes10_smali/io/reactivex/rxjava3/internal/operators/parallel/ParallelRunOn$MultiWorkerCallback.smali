.class final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;
.super Ljava/lang/Object;
.source "ParallelRunOn.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;


# instance fields
.field final parents:[Lorg/reactivestreams/Subscriber;

.field final subscribers:[Lorg/reactivestreams/Subscriber;

.field final synthetic this$0:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;)V
    .registers 4

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->this$0:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->subscribers:[Lorg/reactivestreams/Subscriber;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->parents:[Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method public onWorker(ILio/reactivex/rxjava3/core/Scheduler$Worker;)V
    .registers 6

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->this$0:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->subscribers:[Lorg/reactivestreams/Subscriber;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->parents:[Lorg/reactivestreams/Subscriber;

    invoke-virtual {v0, p1, v1, v2, p2}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn;->createSubscriber(I[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    return-void
.end method
