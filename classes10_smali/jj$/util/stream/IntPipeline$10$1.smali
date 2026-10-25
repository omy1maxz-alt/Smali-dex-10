.class Ljj$/util/stream/IntPipeline$10$1;
.super Ljj$/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# instance fields
.field final synthetic this$1:Ljj$/util/stream/IntPipeline$10;


# direct methods
.method constructor <init>(Ljj$/util/stream/IntPipeline$10;Ljj$/util/stream/Sink;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/IntPipeline$10$1;->this$1:Ljj$/util/stream/IntPipeline$10;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedInt;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntPipeline$10$1;->this$1:Ljj$/util/stream/IntPipeline$10;

    iget-object v0, v0, Ljj$/util/stream/IntPipeline$10;->val$action:Ljava/util/function/IntConsumer;

    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    iget-object v0, p0, Ljj$/util/stream/IntPipeline$10$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0, p1}, Ljj$/util/stream/Sink;->accept(I)V

    return-void
.end method
