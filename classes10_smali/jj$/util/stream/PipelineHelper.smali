.class abstract Ljj$/util/stream/PipelineHelper;
.super Ljava/lang/Object;
.source "PipelineHelper.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract copyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)V
.end method

.method abstract copyIntoWithCancel(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Z
.end method

.method abstract evaluate(Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
.end method

.method abstract exactOutputSizeIfKnown(Ljj$/util/Spliterator;)J
.end method

.method abstract getSourceShape()Ljj$/util/stream/StreamShape;
.end method

.method abstract getStreamAndOpFlags()I
.end method

.method abstract makeNodeBuilder(JLjava/util/function/IntFunction;)Ljj$/util/stream/Node$Builder;
.end method

.method abstract wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;
.end method

.method abstract wrapSink(Ljj$/util/stream/Sink;)Ljj$/util/stream/Sink;
.end method

.method abstract wrapSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
.end method
