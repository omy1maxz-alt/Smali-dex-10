.class Ljj$/util/stream/ReduceOps$1ReducingSink;
.super Ljj$/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljj$/util/stream/ReduceOps$AccumulatingSink;


# instance fields
.field final synthetic val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic val$reducer:Ljava/util/function/BiFunction;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)V
    .registers 4

    iput-object p1, p0, Ljj$/util/stream/ReduceOps$1ReducingSink;->val$seed:Ljava/lang/Object;

    iput-object p2, p0, Ljj$/util/stream/ReduceOps$1ReducingSink;->val$reducer:Ljava/util/function/BiFunction;

    iput-object p3, p0, Ljj$/util/stream/ReduceOps$1ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Ljj$/util/stream/ReduceOps$Box;-><init>()V

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

.method public synthetic accept(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;J)V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/ReduceOps$1ReducingSink;->val$reducer:Ljava/util/function/BiFunction;

    iget-object v1, p0, Ljj$/util/stream/ReduceOps$1ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/stream/ReduceOps$1ReducingSink;->state:Ljava/lang/Object;

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public begin(J)V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/ReduceOps$1ReducingSink;->val$seed:Ljava/lang/Object;

    iput-object v0, p0, Ljj$/util/stream/ReduceOps$1ReducingSink;->state:Ljava/lang/Object;

    return-void
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$cancellationRequested(Ljj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public combine(Ljj$/util/stream/ReduceOps$1ReducingSink;)V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/ReduceOps$1ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljj$/util/stream/ReduceOps$1ReducingSink;->state:Ljava/lang/Object;

    iget-object v2, p1, Ljj$/util/stream/ReduceOps$1ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/stream/ReduceOps$1ReducingSink;->state:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic combine(Ljj$/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    check-cast p1, Ljj$/util/stream/ReduceOps$1ReducingSink;

    invoke-virtual {p0, p1}, Ljj$/util/stream/ReduceOps$1ReducingSink;->combine(Ljj$/util/stream/ReduceOps$1ReducingSink;)V

    return-void
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$end(Ljj$/util/stream/Sink;)V

    return-void
.end method
