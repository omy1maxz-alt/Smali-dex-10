.class public abstract Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;
.super Ljava/lang/Object;
.source "RxAndroidPlugins.java"


# static fields
.field private static volatile onInitMainThreadHandler:Lio/reactivex/rxjava3/functions/Function;

.field private static volatile onMainThreadHandler:Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method static apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    :try_start_0
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    move-exception p0

    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static applyRequireNonNull(Lio/reactivex/rxjava3/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Scheduler;
    .registers 2

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Scheduler Callable returned null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Scheduler;
    .registers 2

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Scheduler Callable returned null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception p0

    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static initMainThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Scheduler;
    .registers 2

    if-eqz p0, :cond_10

    sget-object v0, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->onInitMainThreadHandler:Lio/reactivex/rxjava3/functions/Function;

    if-nez v0, :cond_b

    invoke-static {p0}, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->applyRequireNonNull(Lio/reactivex/rxjava3/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "scheduler == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onMainThreadScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;
    .registers 2

    if-eqz p0, :cond_e

    sget-object v0, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->onMainThreadHandler:Lio/reactivex/rxjava3/functions/Function;

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "scheduler == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
