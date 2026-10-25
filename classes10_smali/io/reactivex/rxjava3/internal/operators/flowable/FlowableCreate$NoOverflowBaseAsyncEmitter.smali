.class abstract Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$NoOverflowBaseAsyncEmitter;
.super Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;
.source "FlowableCreate.java"


# static fields
.field private static final serialVersionUID:J = 0x3948ba7d6479d0d1L


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method


# virtual methods
.method public final onNext(Ljava/lang/Object;)V
    .registers 7

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_13

    const-string p1, "onNext called with a null value."

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->createNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_28

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_2b

    :cond_28
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$NoOverflowBaseAsyncEmitter;->onOverflow()V

    :goto_2b
    return-void
.end method

.method abstract onOverflow()V
.end method
