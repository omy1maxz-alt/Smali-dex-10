.class Ljj$/util/stream/ReduceOps$4;
.super Ljj$/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# instance fields
.field final synthetic val$accumulator:Ljava/util/function/BiConsumer;

.field final synthetic val$reducer:Ljava/util/function/BiConsumer;

.field final synthetic val$seedFactory:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljj$/util/stream/StreamShape;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/Supplier;)V
    .registers 5

    iput-object p2, p0, Ljj$/util/stream/ReduceOps$4;->val$reducer:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Ljj$/util/stream/ReduceOps$4;->val$accumulator:Ljava/util/function/BiConsumer;

    iput-object p4, p0, Ljj$/util/stream/ReduceOps$4;->val$seedFactory:Ljava/util/function/Supplier;

    invoke-direct {p0, p1}, Ljj$/util/stream/ReduceOps$ReduceOp;-><init>(Ljj$/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljj$/util/stream/ReduceOps$4ReducingSink;
    .registers 5

    new-instance v0, Ljj$/util/stream/ReduceOps$4ReducingSink;

    iget-object v1, p0, Ljj$/util/stream/ReduceOps$4;->val$seedFactory:Ljava/util/function/Supplier;

    iget-object v2, p0, Ljj$/util/stream/ReduceOps$4;->val$accumulator:Ljava/util/function/BiConsumer;

    iget-object v3, p0, Ljj$/util/stream/ReduceOps$4;->val$reducer:Ljava/util/function/BiConsumer;

    invoke-direct {v0, v1, v2, v3}, Ljj$/util/stream/ReduceOps$4ReducingSink;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljj$/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$4;->makeSink()Ljj$/util/stream/ReduceOps$4ReducingSink;

    move-result-object v0

    return-object v0
.end method
