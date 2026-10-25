.class final Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler$ScheduledRunnable;
.super Ljava/lang/Object;
.source "HandlerScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# instance fields
.field private final delegate:Ljava/lang/Runnable;

.field private volatile disposed:Z

.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler$ScheduledRunnable;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler$ScheduledRunnable;->delegate:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler$ScheduledRunnable;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler$ScheduledRunnable;->disposed:Z

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler$ScheduledRunnable;->disposed:Z

    return v0
.end method

.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler$ScheduledRunnable;->delegate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_a
    return-void
.end method
