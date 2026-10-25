.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval;
.super Lio/reactivex/rxjava3/core/Observable;
.source "ObservableInterval.java"


# instance fields
.field final initialDelay:J

.field final period:J

.field final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)V
    .registers 7

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval;->initialDelay:J

    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval;->period:J

    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 10

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval$IntervalObserver;

    invoke-direct {v7, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval$IntervalObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    invoke-interface {p1, v7}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    instance-of p1, v0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;

    if-eqz p1, :cond_20

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Scheduler;->createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;

    move-result-object v0

    invoke-virtual {v7, v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval$IntervalObserver;->setResource(Lio/reactivex/rxjava3/disposables/Disposable;)V

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval;->initialDelay:J

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval;->period:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_2e

    :cond_20
    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval;->initialDelay:J

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval;->period:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v7, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval$IntervalObserver;->setResource(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :goto_2e
    return-void
.end method
