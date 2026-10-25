.class public abstract Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# static fields
.field private static final MAIN_THREAD:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method public static synthetic $r8$lambda$rU6g57daHLH3vbmmB880Hk3ow8s()Lio/reactivex/rxjava3/core/Scheduler;
    .registers 1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->lambda$static$0()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->initMainThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Looper;Z)Lio/reactivex/rxjava3/core/Scheduler;
    .registers 2

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->internalFrom(Landroid/os/Looper;Z)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method private static internalFrom(Landroid/os/Looper;Z)Lio/reactivex/rxjava3/core/Scheduler;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz p1, :cond_15

    const/16 v1, 0x16

    if-ge v0, v1, :cond_15

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_d
    invoke-static {v0, v1}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Message;Z)V
    :try_end_10
    .catch Ljava/lang/NoSuchMethodError; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    const/4 p1, 0x0

    :goto_12
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    :cond_15
    new-instance v0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p1}, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler;-><init>(Landroid/os/Handler;Z)V

    return-object v0
.end method

.method private static synthetic lambda$static$0()Lio/reactivex/rxjava3/core/Scheduler;
    .registers 1

    sget-object v0, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers$MainHolder;->DEFAULT:Lio/reactivex/rxjava3/core/Scheduler;

    return-object v0
.end method

.method public static mainThread()Lio/reactivex/rxjava3/core/Scheduler;
    .registers 1

    sget-object v0, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-static {v0}, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->onMainThreadScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method
