.class public final Lio/reactivex/rxjava3/internal/util/AtomicThrowable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "AtomicThrowable.java"


# static fields
.field private static final serialVersionUID:J = 0x36ce8ce03b5e1eabL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public terminate()Ljava/lang/Throwable;
    .registers 2

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public tryAddThrowable(Ljava/lang/Throwable;)Z
    .registers 2

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public tryAddThrowableOrReport(Ljava/lang/Throwable;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public tryTerminateAndReport()V
    .registers 3

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v1, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_d

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method public tryTerminateConsumer(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 4

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-interface {p1}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    goto :goto_11

    :cond_a
    sget-object v1, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_11

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    :cond_11
    :goto_11
    return-void
.end method

.method public tryTerminateConsumer(Lorg/reactivestreams/Subscriber;)V
    .registers 4

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_11

    :cond_a
    sget-object v1, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_11

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_11
    :goto_11
    return-void
.end method
