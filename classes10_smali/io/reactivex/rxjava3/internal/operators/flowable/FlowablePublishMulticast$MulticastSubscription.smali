.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowablePublishMulticast.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# static fields
.field private static final serialVersionUID:J = 0x783f9b81a81b45ffL


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;

.field emitted:J

.field final parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_14

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->remove(Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->drain()V

    :cond_14
    return-void
.end method

.method public isCancelled()Z
    .registers 6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public request(J)V
    .registers 4

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->addCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->drain()V

    :cond_e
    return-void
.end method
