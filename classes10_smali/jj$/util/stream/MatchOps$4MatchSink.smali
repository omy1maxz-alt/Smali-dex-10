.class Ljj$/util/stream/MatchOps$4MatchSink;
.super Ljj$/util/stream/MatchOps$BooleanTerminalSink;
.source "MatchOps.java"

# interfaces
.implements Ljj$/util/stream/Sink$OfDouble;


# instance fields
.field final synthetic val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

.field final synthetic val$predicate:Ljava/util/function/DoublePredicate;


# direct methods
.method constructor <init>(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/DoublePredicate;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/MatchOps$4MatchSink;->val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljj$/util/stream/MatchOps$4MatchSink;->val$predicate:Ljava/util/function/DoublePredicate;

    invoke-direct {p0, p1}, Ljj$/util/stream/MatchOps$BooleanTerminalSink;-><init>(Ljj$/util/stream/MatchOps$MatchKind;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 5

    iget-boolean v0, p0, Ljj$/util/stream/MatchOps$4MatchSink;->stop:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Ljj$/util/stream/MatchOps$4MatchSink;->val$predicate:Ljava/util/function/DoublePredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    iget-object v1, p0, Ljj$/util/stream/MatchOps$4MatchSink;->val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {v1}, Ljj$/util/stream/MatchOps$MatchKind;->-$$Nest$fgetstopOnPredicateMatches(Ljj$/util/stream/MatchOps$MatchKind;)Z

    move-result v1

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/MatchOps$4MatchSink;->stop:Z

    iget-object v0, p0, Ljj$/util/stream/MatchOps$4MatchSink;->val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {v0}, Ljj$/util/stream/MatchOps$MatchKind;->-$$Nest$fgetshortCircuitResult(Ljj$/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    iput-boolean v0, p0, Ljj$/util/stream/MatchOps$4MatchSink;->value:Z

    :cond_1d
    return-void
.end method

.method public synthetic accept(Ljava/lang/Double;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfDouble$-CC;->$default$accept(Ljj$/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfDouble$-CC;->$default$accept(Ljj$/util/stream/Sink$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method
