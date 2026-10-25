.class public final Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;
.super Ljava/lang/Object;
.source "MpscLinkedQueue.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/SimplePlainQueue;


# instance fields
.field private final consumerNode:Ljava/util/concurrent/atomic/AtomicReference;

.field private final producerNode:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->producerNode:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->consumerNode:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->spConsumerNode(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->xchgProducerNode(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    :goto_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    return-void
.end method

.method public isEmpty()Z
    .registers 3

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->lvConsumerNode()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    move-result-object v0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->lvProducerNode()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method lpConsumerNode()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->consumerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    return-object v0
.end method

.method lvConsumerNode()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->consumerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    return-object v0
.end method

.method lvProducerNode()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->producerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_10

    new-instance v0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->xchgProducerNode(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;->soNext(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)V

    const/4 p1, 0x1

    return p1

    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null is not a valid element"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->lpConsumerNode()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;->lvNext()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->spConsumerNode(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)V

    return-object v0

    :cond_12
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->lvProducerNode()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    move-result-object v1

    if-eq v0, v1, :cond_27

    :goto_18
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;->lvNext()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_18

    :cond_1f
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->spConsumerNode(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)V

    return-object v0

    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method spConsumerNode(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->consumerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method xchgProducerNode(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->producerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    return-object p1
.end method
