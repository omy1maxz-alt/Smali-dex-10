.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableConcatMap.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# static fields
.field private static final serialVersionUID:J = -0x6077449f877ccfe7L


# instance fields
.field volatile active:Z

.field final bufferSize:I

.field volatile cancelled:Z

.field volatile done:Z

.field final downstream:Lio/reactivex/rxjava3/core/Observer;

.field final errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field final mapper:Lio/reactivex/rxjava3/functions/Function;

.field final observer:Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver;

.field queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

.field sourceMode:I

.field final tillTheEnd:Z

.field upstream:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/functions/Function;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->mapper:Lio/reactivex/rxjava3/functions/Function;

    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->bufferSize:I

    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->tillTheEnd:Z

    new-instance p2, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    new-instance p2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver;

    invoke-direct {p2, p1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->observer:Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->cancelled:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->observer:Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver;->dispose()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    return-void
.end method

.method drain()V
    .registers 8

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    :cond_d
    :goto_d
    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->active:Z

    if-nez v3, :cond_9e

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->cancelled:Z

    if-eqz v3, :cond_19

    invoke-interface {v1}, Lio/reactivex/rxjava3/operators/SimpleQueue;->clear()V

    return-void

    :cond_19
    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->tillTheEnd:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2f

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Lio/reactivex/rxjava3/operators/SimpleQueue;->clear()V

    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->cancelled:Z

    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/Observer;)V

    return-void

    :cond_2f
    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->done:Z

    :try_start_31
    invoke-interface {v1}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_8c

    if-nez v5, :cond_39

    const/4 v6, 0x1

    goto :goto_3a

    :cond_39
    const/4 v6, 0x0

    :goto_3a
    if-eqz v3, :cond_44

    if-eqz v6, :cond_44

    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->cancelled:Z

    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/Observer;)V

    return-void

    :cond_44
    if-nez v6, :cond_9e

    :try_start_46
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->mapper:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v3, v5}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "The mapper returned a null ObservableSource"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lio/reactivex/rxjava3/core/ObservableSource;
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_77

    instance-of v5, v3, Lio/reactivex/rxjava3/functions/Supplier;

    if-eqz v5, :cond_6f

    :try_start_57
    check-cast v3, Lio/reactivex/rxjava3/functions/Supplier;

    invoke-interface {v3}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    move-result-object v3
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_67

    if-eqz v3, :cond_d

    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->cancelled:Z

    if-nez v4, :cond_d

    invoke-interface {v0, v3}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_d

    :catchall_67
    move-exception v3

    invoke-static {v3}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    goto :goto_d

    :cond_6f
    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->active:Z

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->observer:Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver;

    invoke-interface {v3, v4}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    goto :goto_9e

    :catchall_77
    move-exception v3

    invoke-static {v3}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->cancelled:Z

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v4}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    invoke-interface {v1}, Lio/reactivex/rxjava3/operators/SimpleQueue;->clear()V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/Observer;)V

    return-void

    :catchall_8c
    move-exception v1

    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->cancelled:Z

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v3}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    invoke-virtual {v2, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/Observer;)V

    return-void

    :cond_9e
    :goto_9e
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_d

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->done:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->done:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->drain()V

    :cond_e
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->sourceMode:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/operators/SimpleQueue;->offer(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->drain()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_42

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    instance-of v0, p1, Lio/reactivex/rxjava3/operators/QueueDisposable;

    if-eqz v0, :cond_34

    check-cast p1, Lio/reactivex/rxjava3/operators/QueueDisposable;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/operators/QueueFuseable;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->sourceMode:I

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->done:Z

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->drain()V

    return-void

    :cond_27
    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->sourceMode:I

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void

    :cond_34
    new-instance p1, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->bufferSize:I

    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_42
    return-void
.end method
