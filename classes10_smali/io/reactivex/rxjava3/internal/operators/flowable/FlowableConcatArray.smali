.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray;
.super Lio/reactivex/rxjava3/core/Flowable;
.source "FlowableConcatArray.java"


# instance fields
.field final delayError:Z

.field final sources:[Lorg/reactivestreams/Publisher;


# direct methods
.method public constructor <init>([Lorg/reactivestreams/Publisher;Z)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Flowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray;->sources:[Lorg/reactivestreams/Publisher;

    iput-boolean p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray;->delayError:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 5

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray;->sources:[Lorg/reactivestreams/Publisher;

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray;->delayError:Z

    invoke-direct {v0, v1, v2, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;-><init>([Lorg/reactivestreams/Publisher;ZLorg/reactivestreams/Subscriber;)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->onComplete()V

    return-void
.end method
