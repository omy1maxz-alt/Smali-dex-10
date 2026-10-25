.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableBuffer.java"


# instance fields
.field final bufferSupplier:Lio/reactivex/rxjava3/functions/Supplier;

.field final size:I

.field final skip:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;IILio/reactivex/rxjava3/functions/Supplier;)V
    .registers 5

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->size:I

    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->skip:I

    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->bufferSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 7

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->size:I

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->skip:I

    if-ne v0, v1, :cond_13

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->bufferSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;-><init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/rxjava3/functions/Supplier;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    goto :goto_36

    :cond_13
    if-le v1, v0, :cond_26

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->size:I

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->skip:I

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->bufferSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;-><init>(Lorg/reactivestreams/Subscriber;IILio/reactivex/rxjava3/functions/Supplier;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    goto :goto_36

    :cond_26
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->size:I

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->skip:I

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->bufferSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;-><init>(Lorg/reactivestreams/Subscriber;IILio/reactivex/rxjava3/functions/Supplier;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    :goto_36
    return-void
.end method
