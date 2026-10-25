.class public final synthetic Ljj$/util/stream/TerminalOp$-CC;
.super Ljava/lang/Object;
.source "TerminalOp.java"


# direct methods
.method public static $default$evaluateParallel(Ljj$/util/stream/TerminalOp;Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 5

    sget-boolean v0, Ljj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} triggering TerminalOp.evaluateParallel serial default"

    invoke-static {v0, v1}, Ljj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_d
    invoke-interface {p0, p1, p2}, Ljj$/util/stream/TerminalOp;->evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getOpFlags(Ljj$/util/stream/TerminalOp;)I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static $default$inputShape(Ljj$/util/stream/TerminalOp;)Ljj$/util/stream/StreamShape;
    .registers 2

    sget-object v0, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    return-object v0
.end method
