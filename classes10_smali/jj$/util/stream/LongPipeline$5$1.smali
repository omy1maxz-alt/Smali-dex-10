.class Ljj$/util/stream/LongPipeline$5$1;
.super Ljj$/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# instance fields
.field final synthetic this$1:Ljj$/util/stream/LongPipeline$5;


# direct methods
.method constructor <init>(Ljj$/util/stream/LongPipeline$5;Ljj$/util/stream/Sink;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/LongPipeline$5$1;->this$1:Ljj$/util/stream/LongPipeline$5;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedLong;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/LongPipeline$5$1;->downstream:Ljj$/util/stream/Sink;

    iget-object v1, p0, Ljj$/util/stream/LongPipeline$5$1;->this$1:Ljj$/util/stream/LongPipeline$5;

    iget-object v1, v1, Ljj$/util/stream/LongPipeline$5;->val$mapper:Ljava/util/function/LongToDoubleFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/LongToDoubleFunction;->applyAsDouble(J)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Sink;->accept(D)V

    return-void
.end method
