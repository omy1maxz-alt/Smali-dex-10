.class final Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;
.super Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;
.source "IoScheduler.java"


# instance fields
.field expirationTime:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;->expirationTime:J

    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .registers 3

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;->expirationTime:J

    return-wide v0
.end method

.method public setExpirationTime(J)V
    .registers 3

    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;->expirationTime:J

    return-void
.end method
