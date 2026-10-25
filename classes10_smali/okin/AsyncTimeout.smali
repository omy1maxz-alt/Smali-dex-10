.class public Lokin/AsyncTimeout;
.super Lokin/Timeout;
.source "AsyncTimeout.java"


# static fields
.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field static head:Lokin/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Lokin/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lokin/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lokin/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokin/Timeout;-><init>()V

    return-void
.end method

.method static awaitTimeout()Lokin/AsyncTimeout;
    .registers 9

    const-class v0, Lokin/AsyncTimeout;

    sget-object v1, Lokin/AsyncTimeout;->head:Lokin/AsyncTimeout;

    iget-object v1, v1, Lokin/AsyncTimeout;->next:Lokin/AsyncTimeout;

    const/4 v2, 0x0

    if-nez v1, :cond_26

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-wide v5, Lokin/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    sget-object v0, Lokin/AsyncTimeout;->head:Lokin/AsyncTimeout;

    iget-object v0, v0, Lokin/AsyncTimeout;->next:Lokin/AsyncTimeout;

    if-nez v0, :cond_25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v3, Lokin/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_25

    sget-object v2, Lokin/AsyncTimeout;->head:Lokin/AsyncTimeout;

    :cond_25
    return-object v2

    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lokin/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_41

    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    :cond_41
    sget-object v0, Lokin/AsyncTimeout;->head:Lokin/AsyncTimeout;

    iget-object v3, v1, Lokin/AsyncTimeout;->next:Lokin/AsyncTimeout;

    iput-object v3, v0, Lokin/AsyncTimeout;->next:Lokin/AsyncTimeout;

    iput-object v2, v1, Lokin/AsyncTimeout;->next:Lokin/AsyncTimeout;

    return-object v1
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lokin/AsyncTimeout;)Z
    .registers 4

    const-class v0, Lokin/AsyncTimeout;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lokin/AsyncTimeout;->head:Lokin/AsyncTimeout;

    :goto_5
    if-eqz v1, :cond_17

    iget-object v2, v1, Lokin/AsyncTimeout;->next:Lokin/AsyncTimeout;

    if-ne v2, p0, :cond_15

    iget-object v2, p0, Lokin/AsyncTimeout;->next:Lokin/AsyncTimeout;

    iput-object v2, v1, Lokin/AsyncTimeout;->next:Lokin/AsyncTimeout;

    const/4 v1, 0x0

    iput-object v1, p0, Lokin/AsyncTimeout;->next:Lokin/AsyncTimeout;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_15
    move-object v1, v2

    goto :goto_5

    :cond_17
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    monitor-exit v0

    goto :goto_1e

    :goto_1d
    throw p0

    :goto_1e
    goto :goto_1d
.end method

.method private remainingNanos(J)J
    .registers 5

    iget-wide v0, p0, Lokin/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lokin/AsyncTimeout;JZ)V
    .registers 10

    const-class v0, Lokin/AsyncTimeout;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lokin/AsyncTimeout;->head:Lokin/AsyncTimeout;

    if-nez v1, :cond_16

    new-instance v1, Lokin/AsyncTimeout;

    invoke-direct {v1}, Lokin/AsyncTimeout;-><init>()V

    sput-object v1, Lokin/AsyncTimeout;->head:Lokin/AsyncTimeout;

    new-instance v1, Lokin/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Lokin/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2f

    if-eqz p3, :cond_2f

    invoke-virtual {p0}, Lokin/Timeout;->deadlineNanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lokin/AsyncTimeout;->timeoutAt:J

    goto :goto_3f

    :cond_2f
    cmp-long v5, p1, v3

    if-eqz v5, :cond_37

    add-long/2addr p1, v1

    iput-wide p1, p0, Lokin/AsyncTimeout;->timeoutAt:J

    goto :goto_3f

    :cond_37
    if-eqz p3, :cond_64

    invoke-virtual {p0}, Lokin/Timeout;->deadlineNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lokin/AsyncTimeout;->timeoutAt:J

    :goto_3f
    invoke-direct {p0, v1, v2}, Lokin/AsyncTimeout;->remainingNanos(J)J

    move-result-wide p1

    sget-object p3, Lokin/AsyncTimeout;->head:Lokin/AsyncTimeout;

    :goto_45
    iget-object v3, p3, Lokin/AsyncTimeout;->next:Lokin/AsyncTimeout;

    if-eqz v3, :cond_55

    invoke-direct {v3, v1, v2}, Lokin/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_52

    goto :goto_55

    :cond_52
    iget-object p3, p3, Lokin/AsyncTimeout;->next:Lokin/AsyncTimeout;

    goto :goto_45

    :cond_55
    :goto_55
    iget-object p1, p3, Lokin/AsyncTimeout;->next:Lokin/AsyncTimeout;

    iput-object p1, p0, Lokin/AsyncTimeout;->next:Lokin/AsyncTimeout;

    iput-object p0, p3, Lokin/AsyncTimeout;->next:Lokin/AsyncTimeout;

    sget-object p0, Lokin/AsyncTimeout;->head:Lokin/AsyncTimeout;

    if-ne p3, p0, :cond_62

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_6a

    :cond_62
    monitor-exit v0

    return-void

    :cond_64
    :try_start_64
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception p0

    monitor-exit v0

    goto :goto_6e

    :goto_6d
    throw p0

    :goto_6e
    goto :goto_6d
.end method


# virtual methods
.method public final enter()V
    .registers 7

    iget-boolean v0, p0, Lokin/AsyncTimeout;->inQueue:Z

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lokin/Timeout;->timeoutNanos()J

    move-result-wide v0

    invoke-virtual {p0}, Lokin/Timeout;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_15

    if-nez v2, :cond_15

    return-void

    :cond_15
    const/4 v3, 0x1

    iput-boolean v3, p0, Lokin/AsyncTimeout;->inQueue:Z

    invoke-static {p0, v0, v1, v2}, Lokin/AsyncTimeout;->scheduleTimeout(Lokin/AsyncTimeout;JZ)V

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3

    invoke-virtual {p0}, Lokin/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    :cond_7
    invoke-virtual {p0, p1}, Lokin/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method final exit(Z)V
    .registers 3

    invoke-virtual {p0}, Lokin/AsyncTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_9

    goto :goto_f

    :cond_9
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lokin/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_f
    :goto_f
    return-void
.end method

.method public final exit()Z
    .registers 3

    iget-boolean v0, p0, Lokin/AsyncTimeout;->inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iput-boolean v1, p0, Lokin/AsyncTimeout;->inQueue:Z

    invoke-static {p0}, Lokin/AsyncTimeout;->cancelScheduledTimeout(Lokin/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_d

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_d
    return-object v0
.end method

.method public final sink(Lokin/Sink;)Lokin/Sink;
    .registers 3

    new-instance v0, Lokin/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lokin/AsyncTimeout$1;-><init>(Lokin/AsyncTimeout;Lokin/Sink;)V

    return-object v0
.end method

.method public final source(Lokin/Source;)Lokin/Source;
    .registers 3

    new-instance v0, Lokin/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lokin/AsyncTimeout$2;-><init>(Lokin/AsyncTimeout;Lokin/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .registers 1

    return-void
.end method
