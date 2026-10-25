.class Ljj$/util/stream/LongPipeline$6;
.super Ljj$/util/stream/LongPipeline$StatelessOp;
.source "LongPipeline.java"


# instance fields
.field final synthetic this$0:Ljj$/util/stream/LongPipeline;

.field final synthetic val$mapper:Ljava/util/function/LongFunction;


# direct methods
.method constructor <init>(Ljj$/util/stream/LongPipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/LongFunction;)V
    .registers 6

    iput-object p1, p0, Ljj$/util/stream/LongPipeline$6;->this$0:Ljj$/util/stream/LongPipeline;

    iput-object p5, p0, Ljj$/util/stream/LongPipeline$6;->val$mapper:Ljava/util/function/LongFunction;

    invoke-direct {p0, p2, p3, p4}, Ljj$/util/stream/LongPipeline$StatelessOp;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 4

    new-instance v0, Ljj$/util/stream/LongPipeline$6$1;

    invoke-direct {v0, p0, p2}, Ljj$/util/stream/LongPipeline$6$1;-><init>(Ljj$/util/stream/LongPipeline$6;Ljj$/util/stream/Sink;)V

    return-object v0
.end method
