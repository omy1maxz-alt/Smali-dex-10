.class Ljj$/util/stream/ReferencePipeline$6$1;
.super Ljj$/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# instance fields
.field final synthetic this$1:Ljj$/util/stream/ReferencePipeline$6;


# direct methods
.method constructor <init>(Ljj$/util/stream/ReferencePipeline$6;Ljj$/util/stream/Sink;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/ReferencePipeline$6$1;->this$1:Ljj$/util/stream/ReferencePipeline$6;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedReference;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/ReferencePipeline$6$1;->downstream:Ljj$/util/stream/Sink;

    iget-object v1, p0, Ljj$/util/stream/ReferencePipeline$6$1;->this$1:Ljj$/util/stream/ReferencePipeline$6;

    iget-object v1, v1, Ljj$/util/stream/ReferencePipeline$6;->val$mapper:Ljava/util/function/ToDoubleFunction;

    invoke-interface {v1, p1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Sink;->accept(D)V

    return-void
.end method
