.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableScalarXMap.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/QueueDisposable;
.implements Ljava/lang/Runnable;


# static fields
.field private static final serialVersionUID:J = 0x35dc0e519322c4a3L


# instance fields
.field final observer:Lio/reactivex/rxjava3/core/Observer;

.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->observer:Lio/reactivex/rxjava3/core/Observer;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method

.method public dispose()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public isDisposed()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isEmpty()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->value:Ljava/lang/Object;

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestFusion(I)I
    .registers 3

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_8

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return v0

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .registers 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->observer:Lio/reactivex/rxjava3/core/Observer;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->value:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v1, :cond_24

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->observer:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    :cond_24
    return-void
.end method
