.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;
.super Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;
.source "FlowableFromIterable.java"


# static fields
.field private static final serialVersionUID:J = -0x53954cbe186540ffL


# instance fields
.field final downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;Ljava/util/Iterator;)V
    .registers 3

    invoke-direct {p0, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;-><init>(Ljava/util/Iterator;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->iterator:Ljava/util/Iterator;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    :cond_4
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->cancelled:Z

    if-eqz v2, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_3d

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->cancelled:Z

    if-eqz v3, :cond_12

    return-void

    :cond_12
    if-nez v2, :cond_1f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Iterator.next() returned a null value"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1f
    invoke-interface {v1, v2}, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->cancelled:Z

    if-eqz v2, :cond_27

    return-void

    :cond_27
    :try_start_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_35

    if-nez v2, :cond_4

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->cancelled:Z

    if-nez v0, :cond_34

    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_34
    return-void

    :catchall_35
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_3d
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method slowPath(J)V
    .registers 11

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->iterator:Ljava/util/Iterator;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->downstream:Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    const-wide/16 v2, 0x0

    :cond_6
    move-wide v4, v2

    :cond_7
    :goto_7
    cmp-long v6, v4, p1

    if-eqz v6, :cond_53

    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->cancelled:Z

    if-eqz v6, :cond_10

    return-void

    :cond_10
    :try_start_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_4b

    iget-boolean v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->cancelled:Z

    if-eqz v7, :cond_19

    return-void

    :cond_19
    if-nez v6, :cond_26

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Iterator.next() returned a null value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_26
    invoke-interface {v1, v6}, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v6

    iget-boolean v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->cancelled:Z

    if-eqz v7, :cond_2f

    return-void

    :cond_2f
    :try_start_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_43

    if-nez v7, :cond_3d

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;->cancelled:Z

    if-nez p1, :cond_3c

    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_3c
    return-void

    :cond_3d
    if-eqz v6, :cond_7

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_7

    :catchall_43
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_4b
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_53
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    cmp-long v6, v4, p1

    if-nez v6, :cond_7

    neg-long p1, v4

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    cmp-long v4, p1, v2

    if-nez v4, :cond_6

    return-void
.end method
