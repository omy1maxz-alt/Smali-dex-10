.class Ljj$/util/stream/ReferencePipeline$8$1;
.super Ljj$/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# instance fields
.field cancellationRequestedCalled:Z

.field downstreamAsInt:Ljava/util/function/IntConsumer;

.field final synthetic this$1:Ljj$/util/stream/ReferencePipeline$8;


# direct methods
.method constructor <init>(Ljj$/util/stream/ReferencePipeline$8;Ljj$/util/stream/Sink;)V
    .registers 5

    iput-object p1, p0, Ljj$/util/stream/ReferencePipeline$8$1;->this$1:Ljj$/util/stream/ReferencePipeline$8;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedReference;-><init>(Ljj$/util/stream/Sink;)V

    iget-object v0, p0, Ljj$/util/stream/ReferencePipeline$8$1;->downstream:Ljj$/util/stream/Sink;

    invoke-static {v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljj$/util/stream/IntPipeline$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Ljj$/util/stream/IntPipeline$$ExternalSyntheticLambda10;-><init>(Ljj$/util/stream/Sink;)V

    iput-object v1, p0, Ljj$/util/stream/ReferencePipeline$8$1;->downstreamAsInt:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/ReferencePipeline$8$1;->this$1:Ljj$/util/stream/ReferencePipeline$8;

    iget-object v0, v0, Ljj$/util/stream/ReferencePipeline$8;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/IntStream;

    if-eqz v0, :cond_3f

    :try_start_c
    iget-boolean v1, p0, Ljj$/util/stream/ReferencePipeline$8$1;->cancellationRequestedCalled:Z

    if-nez v1, :cond_1a

    invoke-interface {v0}, Ljj$/util/stream/IntStream;->sequential()Ljj$/util/stream/IntStream;

    move-result-object v1

    iget-object v2, p0, Ljj$/util/stream/ReferencePipeline$8$1;->downstreamAsInt:Ljava/util/function/IntConsumer;

    invoke-interface {v1, v2}, Ljj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    goto :goto_3f

    :cond_1a
    invoke-interface {v0}, Ljj$/util/stream/IntStream;->sequential()Ljj$/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljj$/util/stream/IntStream;->spliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v1

    :cond_22
    iget-object v2, p0, Ljj$/util/stream/ReferencePipeline$8$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v2}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, p0, Ljj$/util/stream/ReferencePipeline$8$1;->downstreamAsInt:Ljava/util/function/IntConsumer;

    invoke-interface {v1, v2}, Ljj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v2
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_33

    if-nez v2, :cond_22

    goto :goto_3f

    :catchall_33
    move-exception v1

    if-eqz v0, :cond_3e

    :try_start_36
    invoke-interface {v0}, Ljj$/util/stream/IntStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw v1

    :cond_3f
    :goto_3f
    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljj$/util/stream/IntStream;->close()V

    :cond_44
    return-void
.end method

.method public begin(J)V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/ReferencePipeline$8$1;->downstream:Ljj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Sink;->begin(J)V

    return-void
.end method

.method public cancellationRequested()Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/ReferencePipeline$8$1;->cancellationRequestedCalled:Z

    iget-object v0, p0, Ljj$/util/stream/ReferencePipeline$8$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method
