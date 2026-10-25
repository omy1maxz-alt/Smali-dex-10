.class Ljj$/util/stream/DoublePipeline$8;
.super Ljj$/util/stream/DoublePipeline$StatelessOp;
.source "DoublePipeline.java"


# instance fields
.field final synthetic this$0:Ljj$/util/stream/DoublePipeline;

.field final synthetic val$action:Ljava/util/function/DoubleConsumer;


# direct methods
.method constructor <init>(Ljj$/util/stream/DoublePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/DoubleConsumer;)V
    .registers 6

    iput-object p1, p0, Ljj$/util/stream/DoublePipeline$8;->this$0:Ljj$/util/stream/DoublePipeline;

    iput-object p5, p0, Ljj$/util/stream/DoublePipeline$8;->val$action:Ljava/util/function/DoubleConsumer;

    invoke-direct {p0, p2, p3, p4}, Ljj$/util/stream/DoublePipeline$StatelessOp;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 4

    new-instance v0, Ljj$/util/stream/DoublePipeline$8$1;

    invoke-direct {v0, p0, p2}, Ljj$/util/stream/DoublePipeline$8$1;-><init>(Ljj$/util/stream/DoublePipeline$8;Ljj$/util/stream/Sink;)V

    return-object v0
.end method
