.class public final synthetic Ljj$/util/stream/Sink$-CC;
.super Ljava/lang/Object;
.source "Sink.java"


# direct methods
.method public static $default$accept(Ljj$/util/stream/Sink;D)V
    .registers 5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$accept(Ljj$/util/stream/Sink;I)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$accept(Ljj$/util/stream/Sink;J)V
    .registers 5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$begin(Ljj$/util/stream/Sink;J)V
    .registers 3

    return-void
.end method

.method public static $default$cancellationRequested(Ljj$/util/stream/Sink;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static $default$end(Ljj$/util/stream/Sink;)V
    .registers 1

    return-void
.end method
