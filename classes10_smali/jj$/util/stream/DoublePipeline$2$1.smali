.class Ljj$/util/stream/DoublePipeline$2$1;
.super Ljj$/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# instance fields
.field final synthetic this$1:Ljj$/util/stream/DoublePipeline$2;


# direct methods
.method constructor <init>(Ljj$/util/stream/DoublePipeline$2;Ljj$/util/stream/Sink;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/DoublePipeline$2$1;->this$1:Ljj$/util/stream/DoublePipeline$2;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedDouble;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/DoublePipeline$2$1;->downstream:Ljj$/util/stream/Sink;

    iget-object v1, p0, Ljj$/util/stream/DoublePipeline$2$1;->this$1:Ljj$/util/stream/DoublePipeline$2;

    iget-object v1, v1, Ljj$/util/stream/DoublePipeline$2;->val$mapper:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v1, p1, p2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Sink;->accept(D)V

    return-void
.end method
