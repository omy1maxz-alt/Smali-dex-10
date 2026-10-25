.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableBuffer.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# static fields
.field private static final serialVersionUID:J = -0x4df0a4abec27f371L


# instance fields
.field buffer:Ljava/util/Collection;

.field final bufferSupplier:Lio/reactivex/rxjava3/functions/Supplier;

.field done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;

.field index:I

.field final size:I

.field final skip:I

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;IILio/reactivex/rxjava3/functions/Supplier;)V
    .registers 5

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->size:I

    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->skip:I

    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->bufferSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onComplete()V
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->buffer:Ljava/util/Collection;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->buffer:Ljava/util/Collection;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->done:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->done:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->buffer:Ljava/util/Collection;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->buffer:Ljava/util/Collection;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->index:I

    add-int/lit8 v2, v1, 0x1

    if-nez v1, :cond_28

    :try_start_d
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->bufferSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1d

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->buffer:Ljava/util/Collection;

    goto :goto_28

    :catchall_1d
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->cancel()V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_28
    :goto_28
    if-eqz v0, :cond_3d

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->size:I

    if-ne p1, v1, :cond_3d

    const/4 p1, 0x0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->buffer:Ljava/util/Collection;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_3d
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->skip:I

    if-ne v2, p1, :cond_42

    const/4 v2, 0x0

    :cond_42
    iput v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->index:I

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_f
    return-void
.end method

.method public request(J)V
    .registers 9

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_32

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->size:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->multiplyCap(JJ)J

    move-result-wide v0

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->skip:I

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->size:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    sub-long/2addr p1, v4

    invoke-static {v2, v3, p1, p2}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->multiplyCap(JJ)J

    move-result-wide p1

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide p1

    invoke-interface {v2, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_3e

    :cond_32
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;->skip:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->multiplyCap(JJ)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_3e
    :goto_3e
    return-void
.end method
