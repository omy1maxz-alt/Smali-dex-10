.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureLatest$BackpressureLatestSubscriber;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractBackpressureThrottlingSubscriber;
.source "FlowableOnBackpressureLatest.java"


# static fields
.field private static final serialVersionUID:J = 0x24360dbf312449bL


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractBackpressureThrottlingSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractBackpressureThrottlingSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractBackpressureThrottlingSubscriber;->drain()V

    return-void
.end method
