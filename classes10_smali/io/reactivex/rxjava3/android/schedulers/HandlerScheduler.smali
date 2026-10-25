.class final Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler;
.super Lio/reactivex/rxjava3/core/Scheduler;
.source "HandlerScheduler.java"


# instance fields
.field private final async:Z

.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Z)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    iput-boolean p2, p0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler;->async:Z

    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;
    .registers 4

    new-instance v0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler$HandlerWorker;

    iget-object v1, p0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    iget-boolean v2, p0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler;->async:Z

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler$HandlerWorker;-><init>(Landroid/os/Handler;Z)V

    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 7

    if-eqz p1, :cond_30

    if-eqz p4, :cond_27

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler$ScheduledRunnable;

    iget-object v1, p0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler$ScheduledRunnable;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    iget-boolean v1, p0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler;->async:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Message;Z)V

    :cond_1d
    iget-object v1, p0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-object v0

    :cond_27
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "run == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
