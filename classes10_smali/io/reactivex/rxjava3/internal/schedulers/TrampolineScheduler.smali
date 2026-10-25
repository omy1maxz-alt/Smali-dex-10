.class public final Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;
.super Lio/reactivex/rxjava3/core/Scheduler;
.source "TrampolineScheduler.java"


# static fields
.field private static final INSTANCE:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;->INSTANCE:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler;-><init>()V

    return-void
.end method

.method public static instance()Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;
    .registers 1

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;->INSTANCE:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;

    return-object v0
.end method


# virtual methods
.method public createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;-><init>()V

    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 2

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 5

    :try_start_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_16

    :catch_b
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_16
    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1
.end method
