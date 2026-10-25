.class abstract Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;
.super Ljava/lang/Object;
.source "ParallelFilter.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/ConditionalSubscriber;
.implements Lorg/reactivestreams/Subscription;


# instance fields
.field done:Z

.field final predicate:Lio/reactivex/rxjava3/functions/Predicate;

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/functions/Predicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->predicate:Lio/reactivex/rxjava3/functions/Predicate;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .registers 4

    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->done:Z

    if-nez p1, :cond_11

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_11
    return-void
.end method

.method public final request(J)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
