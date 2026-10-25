.class Ljj$/util/stream/ReduceOps$11;
.super Ljj$/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# instance fields
.field final synthetic val$operator:Ljava/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(Ljj$/util/stream/StreamShape;Ljava/util/function/LongBinaryOperator;)V
    .registers 3

    iput-object p2, p0, Ljj$/util/stream/ReduceOps$11;->val$operator:Ljava/util/function/LongBinaryOperator;

    invoke-direct {p0, p1}, Ljj$/util/stream/ReduceOps$ReduceOp;-><init>(Ljj$/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljj$/util/stream/ReduceOps$9ReducingSink;
    .registers 3

    new-instance v0, Ljj$/util/stream/ReduceOps$9ReducingSink;

    iget-object v1, p0, Ljj$/util/stream/ReduceOps$11;->val$operator:Ljava/util/function/LongBinaryOperator;

    invoke-direct {v0, v1}, Ljj$/util/stream/ReduceOps$9ReducingSink;-><init>(Ljava/util/function/LongBinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljj$/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$11;->makeSink()Ljj$/util/stream/ReduceOps$9ReducingSink;

    move-result-object v0

    return-object v0
.end method
