.class final Lokin/Timeout$1;
.super Lokin/Timeout;
.source "Timeout.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokin/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public deadlineNanoTime(J)Lokin/Timeout;
    .registers 3

    return-object p0
.end method

.method public throwIfReached()V
    .registers 1

    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokin/Timeout;
    .registers 4

    return-object p0
.end method
