.class Ljj$/util/stream/ReduceOps$4ReducingSink;
.super Ljj$/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljj$/util/stream/ReduceOps$AccumulatingSink;


# instance fields
.field final synthetic val$accumulator:Ljava/util/function/BiConsumer;

.field final synthetic val$reducer:Ljava/util/function/BiConsumer;

.field final synthetic val$seedFactory:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .registers 4

    iput-object p1, p0, Ljj$/util/stream/ReduceOps$4ReducingSink;->val$seedFactory:Ljava/util/function/Supplier;

    iput-object p2, p0, Ljj$/util/stream/ReduceOps$4ReducingSink;->val$accumulator:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Ljj$/util/stream/ReduceOps$4ReducingSink;->val$reducer:Ljava/util/function/BiConsumer;

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

    iget-object v0, p0, Ljj$/util/stream/ReduceOps$4ReducingSink;->val$accumulator:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljj$/util/stream/ReduceOps$4ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

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

    iget-object v0, p0, Ljj$/util/stream/ReduceOps$4ReducingSink;->val$seedFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/stream/ReduceOps$4ReducingSink;->state:Ljava/lang/Object;

    return-void
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$cancellationRequested(Ljj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public combine(Ljj$/util/stream/ReduceOps$4ReducingSink;)V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/ReduceOps$4ReducingSink;->val$reducer:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljj$/util/stream/ReduceOps$4ReducingSink;->state:Ljava/lang/Object;

    iget-object v2, p1, Ljj$/util/stream/ReduceOps$4ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic combine(Ljj$/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    check-cast p1, Ljj$/util/stream/ReduceOps$4ReducingSink;

    invoke-virtual {p0, p1}, Ljj$/util/stream/ReduceOps$4ReducingSink;->combine(Ljj$/util/stream/ReduceOps$4ReducingSink;)V

    return-void
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$end(Ljj$/util/stream/Sink;)V

    return-void
.end method
