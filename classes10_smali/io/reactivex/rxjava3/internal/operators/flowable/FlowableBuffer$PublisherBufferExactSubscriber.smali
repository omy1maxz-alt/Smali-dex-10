.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;
.super Ljava/lang/Object;
.source "FlowableBuffer.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# instance fields
.field buffer:Ljava/util/Collection;

.field final bufferSupplier:Lio/reactivex/rxjava3/functions/Supplier;

.field done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;

.field index:I

.field final size:I

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/rxjava3/functions/Supplier;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->size:I

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->bufferSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onComplete()V
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->buffer:Ljava/util/Collection;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->buffer:Ljava/util/Collection;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->done:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->buffer:Ljava/util/Collection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->buffer:Ljava/util/Collection;

    if-nez v0, :cond_24

    :try_start_9
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->bufferSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_19

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->buffer:Ljava/util/Collection;

    goto :goto_24

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->cancel()V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_24
    :goto_24
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->index:I

    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->size:I

    if-ne p1, v1, :cond_3b

    const/4 p1, 0x0

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->index:I

    const/4 p1, 0x0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->buffer:Ljava/util/Collection;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_3b
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->index:I

    :goto_3d
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_f
    return-void
.end method

.method public request(J)V
    .registers 6

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->size:I

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->multiplyCap(JJ)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_12
    return-void
.end method
