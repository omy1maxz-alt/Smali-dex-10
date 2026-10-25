.class Ljj$/util/stream/ReduceOps$9ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljj$/util/stream/ReduceOps$AccumulatingSink;
.implements Ljj$/util/stream/Sink$OfLong;


# instance fields
.field private empty:Z

.field private state:J

.field final synthetic val$operator:Ljava/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/LongBinaryOperator;)V
    .registers 2

    iput-object p1, p0, Ljj$/util/stream/ReduceOps$9ReducingSink;->val$operator:Ljava/util/function/LongBinaryOperator;

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

    iget-boolean v0, p0, Ljj$/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/ReduceOps$9ReducingSink;->empty:Z

    iput-wide p1, p0, Ljj$/util/stream/ReduceOps$9ReducingSink;->state:J

    goto :goto_14

    :cond_a
    iget-object v0, p0, Ljj$/util/stream/ReduceOps$9ReducingSink;->val$operator:Ljava/util/function/LongBinaryOperator;

    iget-wide v1, p0, Ljj$/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-interface {v0, v1, v2, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljj$/util/stream/ReduceOps$9ReducingSink;->state:J

    :goto_14
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

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/ReduceOps$9ReducingSink;->empty:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljj$/util/stream/ReduceOps$9ReducingSink;->state:J

    return-void
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$cancellationRequested(Ljj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public combine(Ljj$/util/stream/ReduceOps$9ReducingSink;)V
    .registers 4

    iget-boolean v0, p1, Ljj$/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-nez v0, :cond_9

    iget-wide v0, p1, Ljj$/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-virtual {p0, v0, v1}, Ljj$/util/stream/ReduceOps$9ReducingSink;->accept(J)V

    :cond_9
    return-void
.end method

.method public bridge synthetic combine(Ljj$/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    check-cast p1, Ljj$/util/stream/ReduceOps$9ReducingSink;

    invoke-virtual {p0, p1}, Ljj$/util/stream/ReduceOps$9ReducingSink;->combine(Ljj$/util/stream/ReduceOps$9ReducingSink;)V

    return-void
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$end(Ljj$/util/stream/Sink;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$9ReducingSink;->get()Ljj$/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljj$/util/OptionalLong;
    .registers 3

    iget-boolean v0, p0, Ljj$/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljj$/util/OptionalLong;->empty()Ljj$/util/OptionalLong;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-wide v0, p0, Ljj$/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-static {v0, v1}, Ljj$/util/OptionalLong;->of(J)Ljj$/util/OptionalLong;

    move-result-object v0

    :goto_f
    return-object v0
.end method
