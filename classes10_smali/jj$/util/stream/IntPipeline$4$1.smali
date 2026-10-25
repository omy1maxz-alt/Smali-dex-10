.class Ljj$/util/stream/IntPipeline$4$1;
.super Ljj$/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# instance fields
.field final synthetic this$1:Ljj$/util/stream/IntPipeline$4;


# direct methods
.method constructor <init>(Ljj$/util/stream/IntPipeline$4;Ljj$/util/stream/Sink;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/IntPipeline$4$1;->this$1:Ljj$/util/stream/IntPipeline$4;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedInt;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/IntPipeline$4$1;->downstream:Ljj$/util/stream/Sink;

    iget-object v1, p0, Ljj$/util/stream/IntPipeline$4$1;->this$1:Ljj$/util/stream/IntPipeline$4;

    iget-object v1, v1, Ljj$/util/stream/IntPipeline$4;->val$mapper:Ljava/util/function/IntUnaryOperator;

    invoke-interface {v1, p1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljj$/util/stream/Sink;->accept(I)V

    return-void
.end method
