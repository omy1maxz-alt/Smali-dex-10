.class Ljj$/util/stream/MatchOps$2MatchSink;
.super Ljj$/util/stream/MatchOps$BooleanTerminalSink;
.source "MatchOps.java"

# interfaces
.implements Ljj$/util/stream/Sink$OfInt;


# instance fields
.field final synthetic val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

.field final synthetic val$predicate:Ljava/util/function/IntPredicate;


# direct methods
.method constructor <init>(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/IntPredicate;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljj$/util/stream/MatchOps$2MatchSink;->val$predicate:Ljava/util/function/IntPredicate;

    invoke-direct {p0, p1}, Ljj$/util/stream/MatchOps$BooleanTerminalSink;-><init>(Ljj$/util/stream/MatchOps$MatchKind;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 4

    iget-boolean v0, p0, Ljj$/util/stream/MatchOps$2MatchSink;->stop:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Ljj$/util/stream/MatchOps$2MatchSink;->val$predicate:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    iget-object v1, p0, Ljj$/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {v1}, Ljj$/util/stream/MatchOps$MatchKind;->-$$Nest$fgetstopOnPredicateMatches(Ljj$/util/stream/MatchOps$MatchKind;)Z

    move-result v1

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/MatchOps$2MatchSink;->stop:Z

    iget-object v0, p0, Ljj$/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {v0}, Ljj$/util/stream/MatchOps$MatchKind;->-$$Nest$fgetshortCircuitResult(Ljj$/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    iput-boolean v0, p0, Ljj$/util/stream/MatchOps$2MatchSink;->value:Z

    :cond_1d
    return-void
.end method

.method public synthetic accept(Ljava/lang/Integer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfInt$-CC;->$default$accept(Ljj$/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfInt$-CC;->$default$accept(Ljj$/util/stream/Sink$OfInt;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method
