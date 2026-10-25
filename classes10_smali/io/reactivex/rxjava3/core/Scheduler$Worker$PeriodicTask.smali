.class final Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field count:J

.field final decoratedRun:Ljava/lang/Runnable;

.field lastNowNanoseconds:J

.field final periodInNanoseconds:J

.field final sd:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

.field startInNanoseconds:J

.field final synthetic this$0:Lio/reactivex/rxjava3/core/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Scheduler$Worker;JLjava/lang/Runnable;JLio/reactivex/rxjava3/internal/disposables/SequentialDisposable;J)V
    .registers 10

    iput-object p1, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->this$0:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->decoratedRun:Ljava/lang/Runnable;

    iput-object p7, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->sd:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    iput-wide p8, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->periodInNanoseconds:J

    iput-wide p5, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->lastNowNanoseconds:J

    iput-wide p2, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->startInNanoseconds:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    iget-object v0, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->decoratedRun:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->sd:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->this$0:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-wide v4, Lio/reactivex/rxjava3/core/Scheduler;->CLOCK_DRIFT_TOLERANCE_NANOSECONDS:J

    add-long v6, v2, v4

    iget-wide v8, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->lastNowNanoseconds:J

    const-wide/16 v10, 0x1

    cmp-long v0, v6, v8

    if-ltz v0, :cond_35

    iget-wide v6, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->periodInNanoseconds:J

    add-long/2addr v8, v6

    add-long/2addr v8, v4

    cmp-long v0, v2, v8

    if-ltz v0, :cond_2a

    goto :goto_35

    :cond_2a
    iget-wide v4, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->startInNanoseconds:J

    iget-wide v8, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->count:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->count:J

    mul-long v8, v8, v6

    add-long/2addr v4, v8

    goto :goto_45

    :cond_35
    :goto_35
    iget-wide v4, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->periodInNanoseconds:J

    add-long v6, v2, v4

    iget-wide v8, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->count:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->count:J

    mul-long v4, v4, v8

    sub-long v4, v6, v4

    iput-wide v4, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->startInNanoseconds:J

    move-wide v4, v6

    :goto_45
    iput-wide v2, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->lastNowNanoseconds:J

    sub-long/2addr v4, v2

    iget-object v0, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->sd:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    iget-object v2, p0, Lio/reactivex/rxjava3/core/Scheduler$Worker$PeriodicTask;->this$0:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-virtual {v2, p0, v4, v5, v1}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_53
    return-void
.end method
