.class Ljj$/util/stream/ReduceOps$12ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljj$/util/stream/ReduceOps$AccumulatingSink;
.implements Ljj$/util/stream/Sink$OfDouble;


# instance fields
.field private empty:Z

.field private state:D

.field final synthetic val$operator:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/DoubleBinaryOperator;)V
    .registers 2

    iput-object p1, p0, Ljj$/util/stream/ReduceOps$12ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 6

    iget-boolean v0, p0, Ljj$/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/ReduceOps$12ReducingSink;->empty:Z

    iput-wide p1, p0, Ljj$/util/stream/ReduceOps$12ReducingSink;->state:D

    goto :goto_14

    :cond_a
    iget-object v0, p0, Ljj$/util/stream/ReduceOps$12ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Ljj$/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-interface {v0, v1, v2, p1, p2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljj$/util/stream/ReduceOps$12ReducingSink;->state:D

    :goto_14
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

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/ReduceOps$12ReducingSink;->empty:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljj$/util/stream/ReduceOps$12ReducingSink;->state:D

    return-void
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$cancellationRequested(Ljj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public combine(Ljj$/util/stream/ReduceOps$12ReducingSink;)V
    .registers 4

    iget-boolean v0, p1, Ljj$/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-nez v0, :cond_9

    iget-wide v0, p1, Ljj$/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-virtual {p0, v0, v1}, Ljj$/util/stream/ReduceOps$12ReducingSink;->accept(D)V

    :cond_9
    return-void
.end method

.method public bridge synthetic combine(Ljj$/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    check-cast p1, Ljj$/util/stream/ReduceOps$12ReducingSink;

    invoke-virtual {p0, p1}, Ljj$/util/stream/ReduceOps$12ReducingSink;->combine(Ljj$/util/stream/ReduceOps$12ReducingSink;)V

    return-void
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$end(Ljj$/util/stream/Sink;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$12ReducingSink;->get()Ljj$/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljj$/util/OptionalDouble;
    .registers 3

    iget-boolean v0, p0, Ljj$/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljj$/util/OptionalDouble;->empty()Ljj$/util/OptionalDouble;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-wide v0, p0, Ljj$/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-static {v0, v1}, Ljj$/util/OptionalDouble;->of(D)Ljj$/util/OptionalDouble;

    move-result-object v0

    :goto_f
    return-object v0
.end method
