.class Ljj$/util/stream/ReduceOps$3;
.super Ljj$/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# instance fields
.field final synthetic val$accumulator:Ljava/util/function/BiConsumer;

.field final synthetic val$collector:Ljj$/util/stream/Collector;

.field final synthetic val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljj$/util/stream/StreamShape;Ljava/util/function/BinaryOperator;Ljava/util/function/BiConsumer;Ljava/util/function/Supplier;Ljj$/util/stream/Collector;)V
    .registers 6

    iput-object p2, p0, Ljj$/util/stream/ReduceOps$3;->val$combiner:Ljava/util/function/BinaryOperator;

    iput-object p3, p0, Ljj$/util/stream/ReduceOps$3;->val$accumulator:Ljava/util/function/BiConsumer;

    iput-object p4, p0, Ljj$/util/stream/ReduceOps$3;->val$supplier:Ljava/util/function/Supplier;

    iput-object p5, p0, Ljj$/util/stream/ReduceOps$3;->val$collector:Ljj$/util/stream/Collector;

    invoke-direct {p0, p1}, Ljj$/util/stream/ReduceOps$ReduceOp;-><init>(Ljj$/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public getOpFlags()I
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/ReduceOps$3;->val$collector:Ljj$/util/stream/Collector;

    invoke-interface {v0}, Ljj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljj$/util/stream/Collector$Characteristics;->UNORDERED:Ljj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget v0, Ljj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public makeSink()Ljj$/util/stream/ReduceOps$3ReducingSink;
    .registers 5

    new-instance v0, Ljj$/util/stream/ReduceOps$3ReducingSink;

    iget-object v1, p0, Ljj$/util/stream/ReduceOps$3;->val$supplier:Ljava/util/function/Supplier;

    iget-object v2, p0, Ljj$/util/stream/ReduceOps$3;->val$accumulator:Ljava/util/function/BiConsumer;

    iget-object v3, p0, Ljj$/util/stream/ReduceOps$3;->val$combiner:Ljava/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Ljj$/util/stream/ReduceOps$3ReducingSink;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljj$/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$3;->makeSink()Ljj$/util/stream/ReduceOps$3ReducingSink;

    move-result-object v0

    return-object v0
.end method
