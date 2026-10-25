.class public final Lio/reactivex/rxjava3/processors/PublishProcessor;
.super Lio/reactivex/rxjava3/processors/FlowableProcessor;
.source "PublishProcessor.java"


# static fields
.field static final EMPTY:[Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

.field static final TERMINATED:[Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;


# instance fields
.field error:Ljava/lang/Throwable;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    sput-object v1, Lio/reactivex/rxjava3/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    new-array v0, v0, [Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    sput-object v0, Lio/reactivex/rxjava3/processors/PublishProcessor;->EMPTY:[Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/processors/FlowableProcessor;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/processors/PublishProcessor;->EMPTY:[Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/rxjava3/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create()Lio/reactivex/rxjava3/processors/PublishProcessor;
    .registers 1

    new-instance v0, Lio/reactivex/rxjava3/processors/PublishProcessor;

    invoke-direct {v0}, Lio/reactivex/rxjava3/processors/PublishProcessor;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;)Z
    .registers 6

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    sget-object v1, Lio/reactivex/rxjava3/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    return v2

    :cond_e
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v3, v1

    iget-object v1, p0, Lio/reactivex/rxjava3/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v3}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public onComplete()V
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;->onComplete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1f
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    const-string v0, "onError called with a null Throwable."

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->nullCheck(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_13

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_13
    iput-object p1, p0, Lio/reactivex/rxjava3/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_29
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6

    const-string v0, "onNext called with a null value."

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->nullCheck(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_19
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_e

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void

    :cond_e
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method

.method remove(Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;)V
    .registers 8

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    sget-object v1, Lio/reactivex/rxjava3/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    if-eq v0, v1, :cond_3f

    sget-object v1, Lio/reactivex/rxjava3/processors/PublishProcessor;->EMPTY:[Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_11

    goto :goto_3f

    :cond_11
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_1e

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1b

    goto :goto_1f

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1e
    const/4 v3, -0x1

    :goto_1f
    if-gez v3, :cond_22

    return-void

    :cond_22
    const/4 v4, 0x1

    if-ne v1, v4, :cond_28

    sget-object v1, Lio/reactivex/rxjava3/processors/PublishProcessor;->EMPTY:[Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    goto :goto_37

    :cond_28
    add-int/lit8 v5, v1, -0x1

    new-array v5, v5, [Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    :goto_37
    iget-object v2, p0, Lio/reactivex/rxjava3/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3f
    :goto_3f
    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 4

    new-instance v0, Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/processors/PublishProcessor;)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/processors/PublishProcessor;->add(Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/processors/PublishProcessor;->remove(Lio/reactivex/rxjava3/processors/PublishProcessor$PublishSubscription;)V

    goto :goto_23

    :cond_18
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_20

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_23

    :cond_20
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_23
    :goto_23
    return-void
.end method
