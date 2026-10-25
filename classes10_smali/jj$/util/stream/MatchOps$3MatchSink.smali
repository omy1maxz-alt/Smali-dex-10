.class Ljj$/util/stream/MatchOps$3MatchSink;
.super Ljj$/util/stream/MatchOps$BooleanTerminalSink;
.source "MatchOps.java"

# interfaces
.implements Ljj$/util/stream/Sink$OfLong;


# instance fields
.field final synthetic val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

.field final synthetic val$predicate:Ljava/util/function/LongPredicate;


# direct methods
.method constructor <init>(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/MatchOps$3MatchSink;->val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljj$/util/stream/MatchOps$3MatchSink;->val$predicate:Ljava/util/function/LongPredicate;

    invoke-direct {p0, p1}, Ljj$/util/stream/MatchOps$BooleanTerminalSink;-><init>(Ljj$/util/stream/MatchOps$MatchKind;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 5

    iget-boolean v0, p0, Ljj$/util/stream/MatchOps$3MatchSink;->stop:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Ljj$/util/stream/MatchOps$3MatchSink;->val$predicate:Ljava/util/function/LongPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    iget-object v1, p0, Ljj$/util/stream/MatchOps$3MatchSink;->val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {v1}, Ljj$/util/stream/MatchOps$MatchKind;->-$$Nest$fgetstopOnPredicateMatches(Ljj$/util/stream/MatchOps$MatchKind;)Z

    move-result v1

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/MatchOps$3MatchSink;->stop:Z

    iget-object v0, p0, Ljj$/util/stream/MatchOps$3MatchSink;->val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {v0}, Ljj$/util/stream/MatchOps$MatchKind;->-$$Nest$fgetshortCircuitResult(Ljj$/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    iput-boolean v0, p0, Ljj$/util/stream/MatchOps$3MatchSink;->value:Z

    :cond_1d
    return-void
.end method

.method public synthetic accept(Ljava/lang/Long;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfLong$-CC;->$default$accept(Ljj$/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfLong$-CC;->$default$accept(Ljj$/util/stream/Sink$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method
