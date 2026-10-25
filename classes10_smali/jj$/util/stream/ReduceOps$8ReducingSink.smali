.class Ljj$/util/stream/ReduceOps$8ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljj$/util/stream/ReduceOps$AccumulatingSink;
.implements Ljj$/util/stream/Sink$OfLong;


# instance fields
.field private state:J

.field final synthetic val$identity:J

.field final synthetic val$operator:Ljava/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(JLjava/util/function/LongBinaryOperator;)V
    .registers 4

    iput-wide p1, p0, Ljj$/util/stream/ReduceOps$8ReducingSink;->val$identity:J

    iput-object p3, p0, Ljj$/util/stream/ReduceOps$8ReducingSink;->val$operator:Ljava/util/function/LongBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;D)V

    return-void
.end method

.method public synthetic accept(I)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;I)V

    return-void
.end method

.method public accept(J)V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/ReduceOps$8ReducingSink;->val$operator:Ljava/util/function/LongBinaryOperator;

    iget-wide v1, p0, Ljj$/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-interface {v0, v1, v2, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljj$/util/stream/ReduceOps$8ReducingSink;->state:J

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

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.method public begin(J)V
    .registers 5

    iget-wide v0, p0, Ljj$/util/stream/ReduceOps$8ReducingSink;->val$identity:J

    iput-wide v0, p0, Ljj$/util/stream/ReduceOps$8ReducingSink;->state:J

    return-void
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$cancellationRequested(Ljj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public combine(Ljj$/util/stream/ReduceOps$8ReducingSink;)V
    .registers 4

    iget-wide v0, p1, Ljj$/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-virtual {p0, v0, v1}, Ljj$/util/stream/ReduceOps$8ReducingSink;->accept(J)V

    return-void
.end method

.method public bridge synthetic combine(Ljj$/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    check-cast p1, Ljj$/util/stream/ReduceOps$8ReducingSink;

    invoke-virtual {p0, p1}, Ljj$/util/stream/ReduceOps$8ReducingSink;->combine(Ljj$/util/stream/ReduceOps$8ReducingSink;)V

    return-void
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$end(Ljj$/util/stream/Sink;)V

    return-void
.end method

.method public get()Ljava/lang/Long;
    .registers 3

    iget-wide v0, p0, Ljj$/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$8ReducingSink;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
