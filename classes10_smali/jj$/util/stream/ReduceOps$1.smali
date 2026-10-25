.class Ljj$/util/stream/ReduceOps$1;
.super Ljj$/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# instance fields
.field final synthetic val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic val$reducer:Ljava/util/function/BiFunction;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljj$/util/stream/StreamShape;Ljava/util/function/BinaryOperator;Ljava/util/function/BiFunction;Ljava/lang/Object;)V
    .registers 5

    iput-object p2, p0, Ljj$/util/stream/ReduceOps$1;->val$combiner:Ljava/util/function/BinaryOperator;

    iput-object p3, p0, Ljj$/util/stream/ReduceOps$1;->val$reducer:Ljava/util/function/BiFunction;

    iput-object p4, p0, Ljj$/util/stream/ReduceOps$1;->val$seed:Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljj$/util/stream/ReduceOps$ReduceOp;-><init>(Ljj$/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljj$/util/stream/ReduceOps$1ReducingSink;
    .registers 5

    new-instance v0, Ljj$/util/stream/ReduceOps$1ReducingSink;

    iget-object v1, p0, Ljj$/util/stream/ReduceOps$1;->val$seed:Ljava/lang/Object;

    iget-object v2, p0, Ljj$/util/stream/ReduceOps$1;->val$reducer:Ljava/util/function/BiFunction;

    iget-object v3, p0, Ljj$/util/stream/ReduceOps$1;->val$combiner:Ljava/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Ljj$/util/stream/ReduceOps$1ReducingSink;-><init>(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljj$/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$1;->makeSink()Ljj$/util/stream/ReduceOps$1ReducingSink;

    move-result-object v0

    return-object v0
.end method
