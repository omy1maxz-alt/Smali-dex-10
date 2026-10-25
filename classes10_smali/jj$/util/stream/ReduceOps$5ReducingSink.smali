.class Ljj$/util/stream/ReduceOps$5ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljj$/util/stream/ReduceOps$AccumulatingSink;
.implements Ljj$/util/stream/Sink$OfInt;


# instance fields
.field private state:I

.field final synthetic val$identity:I

.field final synthetic val$operator:Ljava/util/function/IntBinaryOperator;


# direct methods
.method constructor <init>(ILjava/util/function/IntBinaryOperator;)V
    .registers 3

    iput p1, p0, Ljj$/util/stream/ReduceOps$5ReducingSink;->val$identity:I

    iput-object p2, p0, Ljj$/util/stream/ReduceOps$5ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;D)V

    return-void
.end method

.method public accept(I)V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/ReduceOps$5ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    iget v1, p0, Ljj$/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-interface {v0, v1, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    iput v0, p0, Ljj$/util/stream/ReduceOps$5ReducingSink;->state:I

    return-void
.end method

.method public synthetic accept(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;J)V

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

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public begin(J)V
    .registers 4

    iget v0, p0, Ljj$/util/stream/ReduceOps$5ReducingSink;->val$identity:I

    iput v0, p0, Ljj$/util/stream/ReduceOps$5ReducingSink;->state:I

    return-void
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$cancellationRequested(Ljj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public combine(Ljj$/util/stream/ReduceOps$5ReducingSink;)V
    .registers 3

    iget v0, p1, Ljj$/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReduceOps$5ReducingSink;->accept(I)V

    return-void
.end method

.method public bridge synthetic combine(Ljj$/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    check-cast p1, Ljj$/util/stream/ReduceOps$5ReducingSink;

    invoke-virtual {p0, p1}, Ljj$/util/stream/ReduceOps$5ReducingSink;->combine(Ljj$/util/stream/ReduceOps$5ReducingSink;)V

    return-void
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$end(Ljj$/util/stream/Sink;)V

    return-void
.end method

.method public get()Ljava/lang/Integer;
    .registers 2

    iget v0, p0, Ljj$/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$5ReducingSink;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
