.class final Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedDispose;
.super Ljava/lang/Object;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final dr:Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedRunnable;

.field final synthetic this$0:Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedRunnable;)V
    .registers 3

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedDispose;->this$0:Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedDispose;->dr:Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedRunnable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedDispose;->dr:Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedRunnable;

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedRunnable;->direct:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$DelayedDispose;->this$0:Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;

    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
