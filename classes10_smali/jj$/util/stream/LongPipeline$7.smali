.class Ljj$/util/stream/LongPipeline$7;
.super Ljj$/util/stream/LongPipeline$StatelessOp;
.source "LongPipeline.java"


# instance fields
.field final synthetic this$0:Ljj$/util/stream/LongPipeline;


# direct methods
.method constructor <init>(Ljj$/util/stream/LongPipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V
    .registers 5

    iput-object p1, p0, Ljj$/util/stream/LongPipeline$7;->this$0:Ljj$/util/stream/LongPipeline;

    invoke-direct {p0, p2, p3, p4}, Ljj$/util/stream/LongPipeline$StatelessOp;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 3

    return-object p2
.end method
