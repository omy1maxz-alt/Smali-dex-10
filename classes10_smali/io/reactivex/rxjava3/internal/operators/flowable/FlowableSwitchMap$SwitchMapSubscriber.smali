.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableSwitchMap.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# static fields
.field static final CANCELLED:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

.field private static final serialVersionUID:J = -0x3072c973d405526bL


# instance fields
.field final active:Ljava/util/concurrent/atomic/AtomicReference;

.field final bufferSize:I

.field volatile cancelled:Z

.field final delayErrors:Z

.field volatile done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;

.field final errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field final mapper:Lio/reactivex/rxjava3/functions/Function;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile unique:J

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;JI)V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->CANCELLED:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->cancel()V

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->mapper:Lio/reactivex/rxjava3/functions/Function;

    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->bufferSize:I

    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->delayErrors:Z

    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->cancelled:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->cancelled:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->disposeInner()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    :cond_14
    return-void
.end method

.method disposeInner()V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->CANCELLED:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    if-eq v0, v1, :cond_11

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->cancel()V

    :cond_11
    return-void
.end method

.method drain()V
    .registers 18

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v2, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    const/4 v4, 0x1

    :cond_c
    :goto_c
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->cancelled:Z

    if-eqz v0, :cond_11

    return-void

    :cond_11
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->done:Z

    if-eqz v0, :cond_46

    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->delayErrors:Z

    if-eqz v0, :cond_27

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_46

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_27
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->disposeInner()V

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_3a
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_46

    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    :cond_46
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    const/4 v6, 0x0

    if-eqz v5, :cond_56

    iget-object v0, v5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    move-object v7, v0

    goto :goto_57

    :cond_56
    move-object v7, v6

    :goto_57
    if-eqz v7, :cond_11d

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :goto_62
    cmp-long v15, v12, v8

    if-eqz v15, :cond_c7

    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->cancelled:Z

    if-eqz v0, :cond_6b

    return-void

    :cond_6b
    iget-boolean v0, v5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->done:Z

    :try_start_6d
    invoke-interface {v7}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v16
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_74

    move-object/from16 v3, v16

    goto :goto_86

    :catchall_74
    move-exception v0

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {v5}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->cancel()V

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    move-object/from16 v3, v16

    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-object v3, v6

    const/4 v0, 0x1

    :goto_86
    if-nez v3, :cond_8b

    const/16 v16, 0x1

    goto :goto_8d

    :cond_8b
    const/16 v16, 0x0

    :goto_8d
    iget-object v14, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v14

    if-eq v5, v14, :cond_97

    :goto_95
    const/4 v14, 0x1

    goto :goto_c8

    :cond_97
    if-eqz v0, :cond_bd

    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->delayErrors:Z

    if-nez v0, :cond_b5

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_ad

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_ad
    if-eqz v16, :cond_bd

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v5, v6}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_95

    :cond_b5
    if-eqz v16, :cond_bd

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v5, v6}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_95

    :cond_bd
    if-eqz v16, :cond_c0

    goto :goto_c7

    :cond_c0
    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    goto :goto_62

    :cond_c7
    :goto_c7
    const/4 v14, 0x0

    :goto_c8
    if-nez v15, :cond_ff

    iget-boolean v0, v5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->done:Z

    if-eqz v0, :cond_ff

    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->delayErrors:Z

    if-nez v0, :cond_f2

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_e5

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->disposeInner()V

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_e5
    invoke-interface {v7}, Lio/reactivex/rxjava3/operators/SimpleQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ff

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v5, v6}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_f2
    invoke-interface {v7}, Lio/reactivex/rxjava3/operators/SimpleQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ff

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v5, v6}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_ff
    cmp-long v0, v12, v10

    if-eqz v0, :cond_119

    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->cancelled:Z

    if-nez v0, :cond_119

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v0, v8, v6

    if-eqz v0, :cond_116

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v6, v12

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_116
    invoke-virtual {v5, v12, v13}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->request(J)V

    :cond_119
    if-eqz v14, :cond_11d

    goto/16 :goto_c

    :cond_11d
    neg-int v0, v4

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_c

    return-void
.end method

.method public onComplete()V
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->done:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->done:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->delayErrors:Z

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->disposeInner()V

    :cond_13
    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->done:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->drain()V

    goto :goto_1d

    :cond_1a
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_1d
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->unique:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->unique:J

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->cancel()V

    :cond_19
    :try_start_19
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->mapper:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v2, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The publisher returned is null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/reactivestreams/Publisher;
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_46

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->bufferSize:I

    invoke-direct {v2, p0, v0, v1, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;JI)V

    :cond_2d
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->CANCELLED:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    if-ne v0, v1, :cond_3a

    goto :goto_45

    :cond_3a
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1, v2}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    :goto_45
    return-void

    :catchall_46
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_f
    return-void
.end method

.method public request(J)V
    .registers 6

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-wide p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->unique:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1e

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_21

    :cond_1e
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->drain()V

    :cond_21
    :goto_21
    return-void
.end method
