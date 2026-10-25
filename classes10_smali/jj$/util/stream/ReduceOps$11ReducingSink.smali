.class Ljj$/util/stream/ReduceOps$11ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljj$/util/stream/ReduceOps$AccumulatingSink;
.implements Ljj$/util/stream/Sink$OfDouble;


# instance fields
.field private state:D

.field final synthetic val$identity:D

.field final synthetic val$operator:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(DLjava/util/function/DoubleBinaryOperator;)V
    .registers 4

    iput-wide p1, p0, Ljj$/util/stream/ReduceOps$11ReducingSink;->val$identity:D

    iput-object p3, p0, Ljj$/util/stream/ReduceOps$11ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/ReduceOps$11ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Ljj$/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-interface {v0, v1, v2, p1, p2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljj$/util/stream/ReduceOps$11ReducingSink;->state:D

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

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public begin(J)V
    .registers 5

    iget-wide v0, p0, Ljj$/util/stream/ReduceOps$11ReducingSink;->val$identity:D

    iput-wide v0, p0, Ljj$/util/stream/ReduceOps$11ReducingSink;->state:D

    return-void
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$cancellationRequested(Ljj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public combine(Ljj$/util/stream/ReduceOps$11ReducingSink;)V
    .registers 4

    iget-wide v0, p1, Ljj$/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-virtual {p0, v0, v1}, Ljj$/util/stream/ReduceOps$11ReducingSink;->accept(D)V

    return-void
.end method

.method public bridge synthetic combine(Ljj$/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    check-cast p1, Ljj$/util/stream/ReduceOps$11ReducingSink;

    invoke-virtual {p0, p1}, Ljj$/util/stream/ReduceOps$11ReducingSink;->combine(Ljj$/util/stream/ReduceOps$11ReducingSink;)V

    return-void
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$end(Ljj$/util/stream/Sink;)V

    return-void
.end method

.method public get()Ljava/lang/Double;
    .registers 3

    iget-wide v0, p0, Ljj$/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$11ReducingSink;->get()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
