.class public final Lio/reactivex/rxjava3/subjects/BehaviorSubject;
.super Lio/reactivex/rxjava3/subjects/Subject;
.source "BehaviorSubject.java"


# static fields
.field static final EMPTY:[Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

.field static final TERMINATED:[Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;


# instance fields
.field index:J

.field final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;

.field final readLock:Ljava/util/concurrent/locks/Lock;

.field final terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

.field final value:Ljava/util/concurrent/atomic/AtomicReference;

.field final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    sput-object v1, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->EMPTY:[Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    new-array v0, v0, [Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    sput-object v0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Lio/reactivex/rxjava3/subjects/Subject;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->writeLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->EMPTY:[Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;)Z
    .registers 6

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    sget-object v1, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    return v2

    :cond_e
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v3, v1

    iget-object v1, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v3}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public onComplete()V
    .registers 8

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    sget-object v2, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    iget-wide v5, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->index:J

    invoke-virtual {v4, v0, v5, v6}, Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;->emitNext(Ljava/lang/Object;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_22
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 8

    const-string v0, "onError called with a null Throwable."

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->nullCheck(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_12
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    iget-wide v4, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->index:J

    invoke-virtual {v3, p1, v4, v5}, Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;->emitNext(Ljava/lang/Object;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_28
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 8

    const-string v0, "onNext called with a null value."

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->nullCheck(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->setCurrent(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_2b

    aget-object v3, v0, v2

    iget-wide v4, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->index:J

    invoke-virtual {v3, p1, v4, v5}, Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;->emitNext(Ljava/lang/Object;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2b
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_b
    return-void
.end method

.method remove(Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;)V
    .registers 8

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    array-length v1, v0

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_15

    goto :goto_19

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_18
    const/4 v3, -0x1

    :goto_19
    if-gez v3, :cond_1c

    return-void

    :cond_1c
    const/4 v4, 0x1

    if-ne v1, v4, :cond_22

    sget-object v1, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->EMPTY:[Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    goto :goto_31

    :cond_22
    add-int/lit8 v5, v1, -0x1

    new-array v5, v5, [Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    :goto_31
    iget-object v2, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method setCurrent(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-wide v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->index:J

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method protected subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 4

    new-instance v0, Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;-><init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->add(Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-boolean p1, v0, Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz p1, :cond_16

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->remove(Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;)V

    goto :goto_2d

    :cond_16
    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;->emitFirst()V

    goto :goto_2d

    :cond_1a
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    sget-object v1, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-ne v0, v1, :cond_2a

    invoke-interface {p1}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    goto :goto_2d

    :cond_2a
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    :goto_2d
    return-void
.end method

.method terminate(Ljava/lang/Object;)[Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;
    .registers 3

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->setCurrent(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/rxjava3/subjects/BehaviorSubject$BehaviorDisposable;

    return-object p1
.end method
