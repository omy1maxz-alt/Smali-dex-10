.class Ljj$/util/stream/LongPipeline$9$1;
.super Ljj$/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# instance fields
.field final synthetic this$1:Ljj$/util/stream/LongPipeline$9;


# direct methods
.method constructor <init>(Ljj$/util/stream/LongPipeline$9;Ljj$/util/stream/Sink;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/LongPipeline$9$1;->this$1:Ljj$/util/stream/LongPipeline$9;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedLong;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/LongPipeline$9$1;->this$1:Ljj$/util/stream/LongPipeline$9;

    iget-object v0, v0, Ljj$/util/stream/LongPipeline$9;->val$action:Ljava/util/function/LongConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    iget-object v0, p0, Ljj$/util/stream/LongPipeline$9$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/Sink;->accept(J)V

    return-void
.end method
