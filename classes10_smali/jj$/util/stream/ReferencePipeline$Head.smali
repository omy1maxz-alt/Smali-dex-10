.class Ljj$/util/stream/ReferencePipeline$Head;
.super Ljj$/util/stream/ReferencePipeline;
.source "ReferencePipeline.java"


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/ReferencePipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/ReferencePipeline;-><init>(Ljj$/util/Spliterator;IZ)V

    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/ReferencePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Ljj$/util/stream/ReferencePipeline$Head;->sourceStageSpliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_11

    :cond_e
    invoke-super {p0, p1}, Ljj$/util/stream/ReferencePipeline;->forEach(Ljava/util/function/Consumer;)V

    :goto_11
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/Consumer;)V
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/ReferencePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Ljj$/util/stream/ReferencePipeline$Head;->sourceStageSpliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_11

    :cond_e
    invoke-super {p0, p1}, Ljj$/util/stream/ReferencePipeline;->forEachOrdered(Ljava/util/function/Consumer;)V

    :goto_11
    return-void
.end method

.method final opIsStateful()Z
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic unordered()Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/ReferencePipeline;->unordered()Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
