.class public abstract Lio/reactivex/rxjava3/android/MainThreadDisposable;
.super Ljava/lang/Object;
.source "MainThreadDisposable.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# instance fields
.field private final unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/android/MainThreadDisposable;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/android/MainThreadDisposable;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Lio/reactivex/rxjava3/android/MainThreadDisposable;->onDispose()V

    goto :goto_24

    :cond_18
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    new-instance v1, Lio/reactivex/rxjava3/android/MainThreadDisposable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/reactivex/rxjava3/android/MainThreadDisposable$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/rxjava3/android/MainThreadDisposable;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_24
    :goto_24
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/android/MainThreadDisposable;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected abstract onDispose()V
.end method
