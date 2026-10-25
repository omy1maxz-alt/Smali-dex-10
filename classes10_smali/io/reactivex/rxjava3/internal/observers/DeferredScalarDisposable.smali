.class public Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;
.super Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;
.source "DeferredScalarDisposable.java"


# static fields
.field private static final serialVersionUID:J = -0x4c5c90f80ed9d471L


# instance fields
.field protected final downstream:Lio/reactivex/rxjava3/core/Observer;

.field protected value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    return-void
.end method

.method public final complete(Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    and-int/lit8 v1, v0, 0x36

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1b

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_22

    :cond_1b
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    :goto_22
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2c

    invoke-interface {v1}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    :cond_2c
    return-void
.end method

.method public dispose()V
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    return-void
.end method

.method public final error(Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    and-int/lit8 v0, v0, 0x36

    if-eqz v0, :cond_c

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final isDisposed()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final isEmpty()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    iput-object v2, p0, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-object v0

    :cond_13
    return-object v2
.end method

.method public final requestFusion(I)I
    .registers 3

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_a

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return v0

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
