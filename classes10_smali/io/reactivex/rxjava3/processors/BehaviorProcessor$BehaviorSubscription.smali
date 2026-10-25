.class final Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "BehaviorProcessor.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;
.implements Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;


# static fields
.field private static final serialVersionUID:J = 0x2db3b5785ea03c8eL


# instance fields
.field volatile cancelled:Z

.field final downstream:Lorg/reactivestreams/Subscriber;

.field emitting:Z

.field fastPath:Z

.field index:J

.field next:Z

.field queue:Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

.field final state:Lio/reactivex/rxjava3/processors/BehaviorProcessor;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/processors/BehaviorProcessor;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    iput-object p2, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->state:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->state:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->remove(Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;)V

    :cond_c
    return-void
.end method

.method emitFirst()V
    .registers 5

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-eqz v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->next:Z

    if-eqz v0, :cond_12

    monitor-exit p0

    return-void

    :cond_12
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->state:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    iget-object v1, v0, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-wide v2, v0, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->index:J

    iput-wide v2, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->index:J

    iget-object v0, v0, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    iput-boolean v2, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->emitting:Z

    iput-boolean v1, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->next:Z

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_3e

    if-eqz v0, :cond_3d

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    return-void

    :cond_3a
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->emitLoop()V

    :cond_3d
    return-void

    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method emitLoop()V
    .registers 3

    :goto_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->queue:Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->emitting:Z

    monitor-exit p0

    return-void

    :cond_f
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->queue:Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_17

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->forEachWhile(Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;)V

    goto :goto_0

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method emitNext(Ljava/lang/Object;J)V
    .registers 7

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->fastPath:Z

    if-nez v0, :cond_37

    monitor-enter p0

    :try_start_a
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-eqz v0, :cond_10

    monitor-exit p0

    return-void

    :cond_10
    iget-wide v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->index:J

    cmp-long v2, v0, p2

    if-nez v2, :cond_18

    monitor-exit p0

    return-void

    :cond_18
    iget-boolean p2, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->emitting:Z

    if-eqz p2, :cond_2d

    iget-object p2, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->queue:Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    if-nez p2, :cond_28

    new-instance p2, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    iput-object p2, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->queue:Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    :cond_28
    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_2d
    const/4 p2, 0x1

    iput-boolean p2, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->next:Z

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_34

    iput-boolean p2, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->fastPath:Z

    goto :goto_37

    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1

    :cond_37
    :goto_37
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->test(Ljava/lang/Object;)Z

    return-void
.end method

.method public request(J)V
    .registers 4

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_9
    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .registers 8

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return v1

    :cond_12
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_22
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_43

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, v2, v0

    if-eqz p1, :cond_41

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_41
    const/4 p1, 0x0

    return p1

    :cond_43
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancel()V

    iget-object p1, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-static {}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;->createDefault()Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return v1
.end method
