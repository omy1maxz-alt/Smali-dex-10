.class abstract Ljj$/util/stream/FindOps$FindSink;
.super Ljava/lang/Object;
.source "FindOps.java"

# interfaces
.implements Ljj$/util/stream/TerminalSink;


# instance fields
.field hasValue:Z

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;D)V

    return-void
.end method

.method public synthetic accept(I)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;I)V

    return-void
.end method

.method public synthetic accept(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;J)V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Ljj$/util/stream/FindOps$FindSink;->hasValue:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/FindOps$FindSink;->hasValue:Z

    iput-object p1, p0, Ljj$/util/stream/FindOps$FindSink;->value:Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic begin(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$begin(Ljj$/util/stream/Sink;J)V

    return-void
.end method

.method public cancellationRequested()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/util/stream/FindOps$FindSink;->hasValue:Z

    return v0
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$end(Ljj$/util/stream/Sink;)V

    return-void
.end method
