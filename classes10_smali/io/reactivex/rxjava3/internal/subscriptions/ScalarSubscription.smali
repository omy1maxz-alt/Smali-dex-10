.class public final Lio/reactivex/rxjava3/internal/subscriptions/ScalarSubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ScalarSubscription.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/QueueSubscription;


# static fields
.field private static final serialVersionUID:J = -0x352a2655229aa299L


# instance fields
.field final subscriber:Lorg/reactivestreams/Subscriber;

.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/subscriptions/ScalarSubscription;->subscriber:Lorg/reactivestreams/Subscriber;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/subscriptions/ScalarSubscription;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscriptions/ScalarSubscription;->value:Ljava/lang/Object;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public request(J)V
    .registers 4

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscriptions/ScalarSubscription;->subscriber:Lorg/reactivestreams/Subscriber;

    iget-object p2, p0, Lio/reactivex/rxjava3/internal/subscriptions/ScalarSubscription;->value:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_20

    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_20
    return-void
.end method

.method public requestFusion(I)I
    .registers 2

    and-int/lit8 p1, p1, 0x1

    return p1
.end method
