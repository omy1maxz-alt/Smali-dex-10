.class Ljj$/util/stream/DoublePipeline$8$1;
.super Ljj$/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# instance fields
.field final synthetic this$1:Ljj$/util/stream/DoublePipeline$8;


# direct methods
.method constructor <init>(Ljj$/util/stream/DoublePipeline$8;Ljj$/util/stream/Sink;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/DoublePipeline$8$1;->this$1:Ljj$/util/stream/DoublePipeline$8;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedDouble;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/DoublePipeline$8$1;->this$1:Ljj$/util/stream/DoublePipeline$8;

    iget-object v0, v0, Ljj$/util/stream/DoublePipeline$8;->val$action:Ljava/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    iget-object v0, p0, Ljj$/util/stream/DoublePipeline$8$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/Sink;->accept(D)V

    return-void
.end method
