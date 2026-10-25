.class Ljj$/util/stream/ReferencePipeline$11;
.super Ljj$/util/stream/ReferencePipeline$StatelessOp;
.source "ReferencePipeline.java"


# instance fields
.field final synthetic this$0:Ljj$/util/stream/ReferencePipeline;

.field final synthetic val$action:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Ljj$/util/stream/ReferencePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/Consumer;)V
    .registers 6

    iput-object p1, p0, Ljj$/util/stream/ReferencePipeline$11;->this$0:Ljj$/util/stream/ReferencePipeline;

    iput-object p5, p0, Ljj$/util/stream/ReferencePipeline$11;->val$action:Ljava/util/function/Consumer;

    invoke-direct {p0, p2, p3, p4}, Ljj$/util/stream/ReferencePipeline$StatelessOp;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 4

    new-instance v0, Ljj$/util/stream/ReferencePipeline$11$1;

    invoke-direct {v0, p0, p2}, Ljj$/util/stream/ReferencePipeline$11$1;-><init>(Ljj$/util/stream/ReferencePipeline$11;Ljj$/util/stream/Sink;)V

    return-object v0
.end method
