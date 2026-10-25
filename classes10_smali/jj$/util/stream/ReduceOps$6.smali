.class Ljj$/util/stream/ReduceOps$6;
.super Ljj$/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# instance fields
.field final synthetic val$identity:I

.field final synthetic val$operator:Ljava/util/function/IntBinaryOperator;


# direct methods
.method constructor <init>(Ljj$/util/stream/StreamShape;Ljava/util/function/IntBinaryOperator;I)V
    .registers 4

    iput-object p2, p0, Ljj$/util/stream/ReduceOps$6;->val$operator:Ljava/util/function/IntBinaryOperator;

    iput p3, p0, Ljj$/util/stream/ReduceOps$6;->val$identity:I

    invoke-direct {p0, p1}, Ljj$/util/stream/ReduceOps$ReduceOp;-><init>(Ljj$/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljj$/util/stream/ReduceOps$5ReducingSink;
    .registers 4

    new-instance v0, Ljj$/util/stream/ReduceOps$5ReducingSink;

    iget v1, p0, Ljj$/util/stream/ReduceOps$6;->val$identity:I

    iget-object v2, p0, Ljj$/util/stream/ReduceOps$6;->val$operator:Ljava/util/function/IntBinaryOperator;

    invoke-direct {v0, v1, v2}, Ljj$/util/stream/ReduceOps$5ReducingSink;-><init>(ILjava/util/function/IntBinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljj$/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$6;->makeSink()Ljj$/util/stream/ReduceOps$5ReducingSink;

    move-result-object v0

    return-object v0
.end method
