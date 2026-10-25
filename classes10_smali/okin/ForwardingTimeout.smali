.class public Lokin/ForwardingTimeout;
.super Lokin/Timeout;
.source "ForwardingTimeout.java"


# instance fields
.field private delegate:Lokin/Timeout;


# direct methods
.method public constructor <init>(Lokin/Timeout;)V
    .registers 3

    invoke-direct {p0}, Lokin/Timeout;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lokin/ForwardingTimeout;->delegate:Lokin/Timeout;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clearDeadline()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokin/ForwardingTimeout;->delegate:Lokin/Timeout;

    invoke-virtual {v0}, Lokin/Timeout;->clearDeadline()Lokin/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public clearTimeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokin/ForwardingTimeout;->delegate:Lokin/Timeout;

    invoke-virtual {v0}, Lokin/Timeout;->clearTimeout()Lokin/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .registers 3

    iget-object v0, p0, Lokin/ForwardingTimeout;->delegate:Lokin/Timeout;

    invoke-virtual {v0}, Lokin/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lokin/Timeout;
    .registers 4

    iget-object v0, p0, Lokin/ForwardingTimeout;->delegate:Lokin/Timeout;

    invoke-virtual {v0, p1, p2}, Lokin/Timeout;->deadlineNanoTime(J)Lokin/Timeout;

    move-result-object p1

    return-object p1
.end method

.method public final delegate()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokin/ForwardingTimeout;->delegate:Lokin/Timeout;

    return-object v0
.end method

.method public hasDeadline()Z
    .registers 2

    iget-object v0, p0, Lokin/ForwardingTimeout;->delegate:Lokin/Timeout;

    invoke-virtual {v0}, Lokin/Timeout;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public final setDelegate(Lokin/Timeout;)Lokin/ForwardingTimeout;
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Lokin/ForwardingTimeout;->delegate:Lokin/Timeout;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public throwIfReached()V
    .registers 2

    iget-object v0, p0, Lokin/ForwardingTimeout;->delegate:Lokin/Timeout;

    invoke-virtual {v0}, Lokin/Timeout;->throwIfReached()V

    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokin/Timeout;
    .registers 5

    iget-object v0, p0, Lokin/ForwardingTimeout;->delegate:Lokin/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lokin/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokin/Timeout;

    move-result-object p1

    return-object p1
.end method
