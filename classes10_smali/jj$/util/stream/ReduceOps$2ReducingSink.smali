.class Ljj$/util/stream/ReduceOps$2ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljj$/util/stream/ReduceOps$AccumulatingSink;


# instance fields
.field private empty:Z

.field private state:Ljava/lang/Object;

.field final synthetic val$operator:Ljava/util/function/BinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/BinaryOperator;)V
    .registers 2

    iput-object p1, p0, Ljj$/util/stream/ReduceOps$2ReducingSink;->val$operator:Ljava/util/function/BinaryOperator;

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

.method public synthetic accept(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;J)V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Ljj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    iput-object p1, p0, Ljj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    goto :goto_14

    :cond_a
    iget-object v0, p0, Ljj$/util/stream/ReduceOps$2ReducingSink;->val$operator:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    :goto_14
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

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    return-void
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$cancellationRequested(Ljj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public combine(Ljj$/util/stream/ReduceOps$2ReducingSink;)V
    .registers 3

    iget-boolean v0, p1, Ljj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-nez v0, :cond_9

    iget-object v0, p1, Ljj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReduceOps$2ReducingSink;->accept(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic combine(Ljj$/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    check-cast p1, Ljj$/util/stream/ReduceOps$2ReducingSink;

    invoke-virtual {p0, p1}, Ljj$/util/stream/ReduceOps$2ReducingSink;->combine(Ljj$/util/stream/ReduceOps$2ReducingSink;)V

    return-void
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$end(Ljj$/util/stream/Sink;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$2ReducingSink;->get()Ljj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljj$/util/Optional;
    .registers 2

    iget-boolean v0, p0, Ljj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljj$/util/Optional;->empty()Ljj$/util/Optional;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Ljj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-static {v0}, Ljj$/util/Optional;->of(Ljava/lang/Object;)Ljj$/util/Optional;

    move-result-object v0

    :goto_f
    return-object v0
.end method
