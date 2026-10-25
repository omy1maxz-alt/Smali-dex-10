.class Ljj$/util/stream/LongPipeline$4$1;
.super Ljj$/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# instance fields
.field final synthetic this$1:Ljj$/util/stream/LongPipeline$4;


# direct methods
.method constructor <init>(Ljj$/util/stream/LongPipeline$4;Ljj$/util/stream/Sink;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/LongPipeline$4$1;->this$1:Ljj$/util/stream/LongPipeline$4;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedLong;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/LongPipeline$4$1;->downstream:Ljj$/util/stream/Sink;

    iget-object v1, p0, Ljj$/util/stream/LongPipeline$4$1;->this$1:Ljj$/util/stream/LongPipeline$4;

    iget-object v1, v1, Ljj$/util/stream/LongPipeline$4;->val$mapper:Ljava/util/function/LongToIntFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/LongToIntFunction;->applyAsInt(J)I

    move-result v1

    invoke-interface {v0, v1}, Ljj$/util/stream/Sink;->accept(I)V

    return-void
.end method
