.class abstract Ljj$/util/stream/MatchOps$BooleanTerminalSink;
.super Ljava/lang/Object;
.source "MatchOps.java"

# interfaces
.implements Ljj$/util/stream/Sink;


# instance fields
.field stop:Z

.field value:Z


# direct methods
.method constructor <init>(Ljj$/util/stream/MatchOps$MatchKind;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljj$/util/stream/MatchOps$MatchKind;->-$$Nest$fgetshortCircuitResult(Ljj$/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/MatchOps$BooleanTerminalSink;->value:Z

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

    iget-boolean v0, p0, Ljj$/util/stream/MatchOps$BooleanTerminalSink;->stop:Z

    return v0
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$end(Ljj$/util/stream/Sink;)V

    return-void
.end method

.method public getAndClearState()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/util/stream/MatchOps$BooleanTerminalSink;->value:Z

    return v0
.end method
