.class Ljj$/util/stream/IntPipeline$8;
.super Ljj$/util/stream/IntPipeline$StatelessOp;
.source "IntPipeline.java"


# instance fields
.field final synthetic this$0:Ljj$/util/stream/IntPipeline;


# direct methods
.method constructor <init>(Ljj$/util/stream/IntPipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V
    .registers 5

    iput-object p1, p0, Ljj$/util/stream/IntPipeline$8;->this$0:Ljj$/util/stream/IntPipeline;

    invoke-direct {p0, p2, p3, p4}, Ljj$/util/stream/IntPipeline$StatelessOp;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 3

    return-object p2
.end method
