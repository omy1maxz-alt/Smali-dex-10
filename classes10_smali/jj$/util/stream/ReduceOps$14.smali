.class Ljj$/util/stream/ReduceOps$14;
.super Ljj$/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# instance fields
.field final synthetic val$identity:D

.field final synthetic val$operator:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(Ljj$/util/stream/StreamShape;Ljava/util/function/DoubleBinaryOperator;D)V
    .registers 5

    iput-object p2, p0, Ljj$/util/stream/ReduceOps$14;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    iput-wide p3, p0, Ljj$/util/stream/ReduceOps$14;->val$identity:D

    invoke-direct {p0, p1}, Ljj$/util/stream/ReduceOps$ReduceOp;-><init>(Ljj$/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljj$/util/stream/ReduceOps$11ReducingSink;
    .registers 5

    new-instance v0, Ljj$/util/stream/ReduceOps$11ReducingSink;

    iget-wide v1, p0, Ljj$/util/stream/ReduceOps$14;->val$identity:D

    iget-object v3, p0, Ljj$/util/stream/ReduceOps$14;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Ljj$/util/stream/ReduceOps$11ReducingSink;-><init>(DLjava/util/function/DoubleBinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljj$/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$14;->makeSink()Ljj$/util/stream/ReduceOps$11ReducingSink;

    move-result-object v0

    return-object v0
.end method
