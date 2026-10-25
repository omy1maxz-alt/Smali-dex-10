.class Ljj$/util/stream/DoublePipeline$6;
.super Ljj$/util/stream/DoublePipeline$StatelessOp;
.source "DoublePipeline.java"


# instance fields
.field final synthetic this$0:Ljj$/util/stream/DoublePipeline;


# direct methods
.method constructor <init>(Ljj$/util/stream/DoublePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V
    .registers 5

    iput-object p1, p0, Ljj$/util/stream/DoublePipeline$6;->this$0:Ljj$/util/stream/DoublePipeline;

    invoke-direct {p0, p2, p3, p4}, Ljj$/util/stream/DoublePipeline$StatelessOp;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 3

    return-object p2
.end method
