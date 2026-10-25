.class final Ljj$/util/stream/FindOps$FindSink$OfDouble;
.super Ljj$/util/stream/FindOps$FindSink;
.source "FindOps.java"

# interfaces
.implements Ljj$/util/stream/Sink$OfDouble;


# static fields
.field static final OP_FIND_ANY:Ljj$/util/stream/TerminalOp;

.field static final OP_FIND_FIRST:Ljj$/util/stream/TerminalOp;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljj$/util/stream/FindOps$FindOp;

    sget-object v2, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    invoke-static {}, Ljj$/util/OptionalDouble;->empty()Ljj$/util/OptionalDouble;

    move-result-object v3

    new-instance v4, Ljj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Ljj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/FindOps$FindOp;-><init>(ZLjj$/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v0, Ljj$/util/stream/FindOps$FindSink$OfDouble;->OP_FIND_FIRST:Ljj$/util/stream/TerminalOp;

    new-instance v1, Ljj$/util/stream/FindOps$FindOp;

    sget-object v3, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    invoke-static {}, Ljj$/util/OptionalDouble;->empty()Ljj$/util/OptionalDouble;

    move-result-object v4

    new-instance v5, Ljj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Ljj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Ljj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Ljj$/util/stream/FindOps$FindOp;-><init>(ZLjj$/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v1, Ljj$/util/stream/FindOps$FindSink$OfDouble;->OP_FIND_ANY:Ljj$/util/stream/TerminalOp;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/util/stream/FindOps$FindSink;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/FindOps$FindSink$OfDouble;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Double;)V
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/FindOps$FindSink$OfDouble;->get()Ljj$/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljj$/util/OptionalDouble;
    .registers 3

    iget-boolean v0, p0, Ljj$/util/stream/FindOps$FindSink$OfDouble;->hasValue:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljj$/util/stream/FindOps$FindSink$OfDouble;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/util/OptionalDouble;->of(D)Ljj$/util/OptionalDouble;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method
