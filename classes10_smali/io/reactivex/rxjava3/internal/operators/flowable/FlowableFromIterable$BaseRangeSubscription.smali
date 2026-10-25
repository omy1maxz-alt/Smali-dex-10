.class abstract Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;
.super Lio/reactivex/rxjava3/internal/subscriptions/BasicQueueSubscription;
.source "FlowableFromIterable.java"


# static fields
.field private static final serialVersionUID:J = -0x1f442a7d211232e5L


# instance fields
.field volatile cancelled:Z

.field iterator:Ljava/util/Iterator;

.field once:Z


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/subscriptions/BasicQueueSubscription;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->cancelled:Z

    return-void
.end method

.method public final clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method abstract fastPath()V
.end method

.method public final isEmpty()Z
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->iterator:Ljava/util/Iterator;

    if-eqz v0, :cond_15

    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->once:Z

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->clear()V

    goto :goto_15

    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->iterator:Ljava/util/Iterator;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->once:Z

    if-nez v2, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->once:Z

    goto :goto_15

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    return-object v1

    :cond_15
    :goto_15
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Iterator.next() returned a null value"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public final request(J)V
    .registers 8

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_1d

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->fastPath()V

    goto :goto_20

    :cond_1d
    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->slowPath(J)V

    :cond_20
    :goto_20
    return-void
.end method

.method public final requestFusion(I)I
    .registers 2

    and-int/lit8 p1, p1, 0x1

    return p1
.end method

.method abstract slowPath(J)V
.end method
