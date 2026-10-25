.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate;
.super Lio/reactivex/rxjava3/core/Flowable;
.source "FlowableCreate.java"


# instance fields
.field final backpressure:Lio/reactivex/rxjava3/core/BackpressureStrategy;

.field final source:Lio/reactivex/rxjava3/core/FlowableOnSubscribe;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/FlowableOnSubscribe;Lio/reactivex/rxjava3/core/BackpressureStrategy;)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Flowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate;->source:Lio/reactivex/rxjava3/core/FlowableOnSubscribe;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate;->backpressure:Lio/reactivex/rxjava3/core/BackpressureStrategy;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 4

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$1;->$SwitchMap$io$reactivex$rxjava3$core$BackpressureStrategy:[I

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate;->backpressure:Lio/reactivex/rxjava3/core/BackpressureStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BufferAsyncEmitter;

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->bufferSize()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BufferAsyncEmitter;-><init>(Lorg/reactivestreams/Subscriber;I)V

    goto :goto_37

    :cond_20
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    goto :goto_37

    :cond_26
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$DropAsyncEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$DropAsyncEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    goto :goto_37

    :cond_2c
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$ErrorAsyncEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$ErrorAsyncEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    goto :goto_37

    :cond_32
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$MissingEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$MissingEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    :goto_37
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :try_start_3a
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate;->source:Lio/reactivex/rxjava3/core/FlowableOnSubscribe;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/FlowableOnSubscribe;->subscribe(Lio/reactivex/rxjava3/core/FlowableEmitter;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_40

    goto :goto_47

    :catchall_40
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_47
    return-void
.end method
