.class public final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher;
.super Lio/reactivex/rxjava3/parallel/ParallelFlowable;
.source "ParallelFromPublisher.java"


# instance fields
.field final parallelism:I

.field final prefetch:I

.field final source:Lorg/reactivestreams/Publisher;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;II)V
    .registers 4

    invoke-direct {p0}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher;->source:Lorg/reactivestreams/Publisher;

    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher;->parallelism:I

    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher;->prefetch:I

    return-void
.end method


# virtual methods
.method public parallelism()I
    .registers 2

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher;->parallelism:I

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .registers 5

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSubscribe(Lio/reactivex/rxjava3/parallel/ParallelFlowable;[Lorg/reactivestreams/Subscriber;)[Lorg/reactivestreams/Subscriber;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->validate([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher;->prefetch:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;-><init>([Lorg/reactivestreams/Subscriber;I)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
