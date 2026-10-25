.class final Ljj$/util/stream/MatchOps;
.super Ljava/lang/Object;
.source "MatchOps.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$makeDouble$3(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/DoublePredicate;)Ljj$/util/stream/MatchOps$BooleanTerminalSink;
    .registers 3

    new-instance v0, Ljj$/util/stream/MatchOps$4MatchSink;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/MatchOps$4MatchSink;-><init>(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method static synthetic lambda$makeInt$1(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/IntPredicate;)Ljj$/util/stream/MatchOps$BooleanTerminalSink;
    .registers 3

    new-instance v0, Ljj$/util/stream/MatchOps$2MatchSink;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/MatchOps$2MatchSink;-><init>(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/IntPredicate;)V

    return-object v0
.end method

.method static synthetic lambda$makeLong$2(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)Ljj$/util/stream/MatchOps$BooleanTerminalSink;
    .registers 3

    new-instance v0, Ljj$/util/stream/MatchOps$3MatchSink;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/MatchOps$3MatchSink;-><init>(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)V

    return-object v0
.end method

.method static synthetic lambda$makeRef$0(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/Predicate;)Ljj$/util/stream/MatchOps$BooleanTerminalSink;
    .registers 3

    new-instance v0, Ljj$/util/stream/MatchOps$1MatchSink;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/MatchOps$1MatchSink;-><init>(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public static makeDouble(Ljava/util/function/DoublePredicate;Ljj$/util/stream/MatchOps$MatchKind;)Ljj$/util/stream/TerminalOp;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/MatchOps$MatchOp;

    sget-object v1, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    new-instance v2, Ljj$/util/stream/MatchOps$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p0}, Ljj$/util/stream/MatchOps$$ExternalSyntheticLambda2;-><init>(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/DoublePredicate;)V

    invoke-direct {v0, v1, p1, v2}, Ljj$/util/stream/MatchOps$MatchOp;-><init>(Ljj$/util/stream/StreamShape;Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeInt(Ljava/util/function/IntPredicate;Ljj$/util/stream/MatchOps$MatchKind;)Ljj$/util/stream/TerminalOp;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/MatchOps$MatchOp;

    sget-object v1, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    new-instance v2, Ljj$/util/stream/MatchOps$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p0}, Ljj$/util/stream/MatchOps$$ExternalSyntheticLambda1;-><init>(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/IntPredicate;)V

    invoke-direct {v0, v1, p1, v2}, Ljj$/util/stream/MatchOps$MatchOp;-><init>(Ljj$/util/stream/StreamShape;Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeLong(Ljava/util/function/LongPredicate;Ljj$/util/stream/MatchOps$MatchKind;)Ljj$/util/stream/TerminalOp;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/MatchOps$MatchOp;

    sget-object v1, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    new-instance v2, Ljj$/util/stream/MatchOps$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0}, Ljj$/util/stream/MatchOps$$ExternalSyntheticLambda0;-><init>(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)V

    invoke-direct {v0, v1, p1, v2}, Ljj$/util/stream/MatchOps$MatchOp;-><init>(Ljj$/util/stream/StreamShape;Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeRef(Ljava/util/function/Predicate;Ljj$/util/stream/MatchOps$MatchKind;)Ljj$/util/stream/TerminalOp;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/MatchOps$MatchOp;

    sget-object v1, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    new-instance v2, Ljj$/util/stream/MatchOps$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p0}, Ljj$/util/stream/MatchOps$$ExternalSyntheticLambda3;-><init>(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/Predicate;)V

    invoke-direct {v0, v1, p1, v2}, Ljj$/util/stream/MatchOps$MatchOp;-><init>(Ljj$/util/stream/StreamShape;Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V

    return-object v0
.end method
