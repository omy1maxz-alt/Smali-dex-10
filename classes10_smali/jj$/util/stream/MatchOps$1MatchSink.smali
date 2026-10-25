.class Ljj$/util/stream/MatchOps$1MatchSink;
.super Ljj$/util/stream/MatchOps$BooleanTerminalSink;
.source "MatchOps.java"


# instance fields
.field final synthetic val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

.field final synthetic val$predicate:Ljava/util/function/Predicate;


# direct methods
.method constructor <init>(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/Predicate;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/MatchOps$1MatchSink;->val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljj$/util/stream/MatchOps$1MatchSink;->val$predicate:Ljava/util/function/Predicate;

    invoke-direct {p0, p1}, Ljj$/util/stream/MatchOps$BooleanTerminalSink;-><init>(Ljj$/util/stream/MatchOps$MatchKind;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Ljj$/util/stream/MatchOps$1MatchSink;->stop:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Ljj$/util/stream/MatchOps$1MatchSink;->val$predicate:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Ljj$/util/stream/MatchOps$1MatchSink;->val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {v1}, Ljj$/util/stream/MatchOps$MatchKind;->-$$Nest$fgetstopOnPredicateMatches(Ljj$/util/stream/MatchOps$MatchKind;)Z

    move-result v1

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/MatchOps$1MatchSink;->stop:Z

    iget-object v0, p0, Ljj$/util/stream/MatchOps$1MatchSink;->val$matchKind:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {v0}, Ljj$/util/stream/MatchOps$MatchKind;->-$$Nest$fgetshortCircuitResult(Ljj$/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    iput-boolean v0, p0, Ljj$/util/stream/MatchOps$1MatchSink;->value:Z

    :cond_1d
    return-void
.end method
