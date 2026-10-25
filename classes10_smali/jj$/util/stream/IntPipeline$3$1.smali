.class Ljj$/util/stream/IntPipeline$3$1;
.super Ljj$/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# instance fields
.field final synthetic this$1:Ljj$/util/stream/IntPipeline$3;


# direct methods
.method constructor <init>(Ljj$/util/stream/IntPipeline$3;Ljj$/util/stream/Sink;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/IntPipeline$3$1;->this$1:Ljj$/util/stream/IntPipeline$3;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedInt;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/IntPipeline$3$1;->downstream:Ljj$/util/stream/Sink;

    int-to-double v1, p1

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Sink;->accept(D)V

    return-void
.end method
