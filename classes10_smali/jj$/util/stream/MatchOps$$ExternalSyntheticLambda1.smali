.class public final synthetic Ljj$/util/stream/MatchOps$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljj$/util/stream/MatchOps$MatchKind;

.field public final synthetic f$1:Ljava/util/function/IntPredicate;


# direct methods
.method public synthetic constructor <init>(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/IntPredicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/MatchOps$$ExternalSyntheticLambda1;->f$0:Ljj$/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljj$/util/stream/MatchOps$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/IntPredicate;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/MatchOps$$ExternalSyntheticLambda1;->f$0:Ljj$/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Ljj$/util/stream/MatchOps$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/IntPredicate;

    invoke-static {v0, v1}, Ljj$/util/stream/MatchOps;->lambda$makeInt$1(Ljj$/util/stream/MatchOps$MatchKind;Ljava/util/function/IntPredicate;)Ljj$/util/stream/MatchOps$BooleanTerminalSink;

    move-result-object v0

    return-object v0
.end method
