.class Ljj$/util/stream/ReferencePipeline$7$1;
.super Ljj$/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# instance fields
.field cancellationRequestedCalled:Z

.field final synthetic this$1:Ljj$/util/stream/ReferencePipeline$7;


# direct methods
.method constructor <init>(Ljj$/util/stream/ReferencePipeline$7;Ljj$/util/stream/Sink;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/ReferencePipeline$7$1;->this$1:Ljj$/util/stream/ReferencePipeline$7;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedReference;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/ReferencePipeline$7$1;->this$1:Ljj$/util/stream/ReferencePipeline$7;

    iget-object v0, v0, Ljj$/util/stream/ReferencePipeline$7;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Stream;

    if-eqz v0, :cond_43

    :try_start_c
    iget-boolean v1, p0, Ljj$/util/stream/ReferencePipeline$7$1;->cancellationRequestedCalled:Z

    if-nez v1, :cond_1c

    invoke-interface {v0}, Ljj$/util/stream/Stream;->sequential()Ljj$/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/Stream;

    iget-object v2, p0, Ljj$/util/stream/ReferencePipeline$7$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v1, v2}, Ljj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_43

    :cond_1c
    invoke-interface {v0}, Ljj$/util/stream/Stream;->sequential()Ljj$/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/Stream;

    invoke-interface {v1}, Ljj$/util/stream/Stream;->spliterator()Ljj$/util/Spliterator;

    move-result-object v1

    :cond_26
    iget-object v2, p0, Ljj$/util/stream/ReferencePipeline$7$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v2}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_43

    iget-object v2, p0, Ljj$/util/stream/ReferencePipeline$7$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v1, v2}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v2
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_37

    if-nez v2, :cond_26

    goto :goto_43

    :catchall_37
    move-exception v1

    if-eqz v0, :cond_42

    :try_start_3a
    invoke-interface {v0}, Ljj$/util/stream/Stream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    throw v1

    :cond_43
    :goto_43
    if-eqz v0, :cond_48

    invoke-interface {v0}, Ljj$/util/stream/Stream;->close()V

    :cond_48
    return-void
.end method

.method public begin(J)V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/ReferencePipeline$7$1;->downstream:Ljj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Sink;->begin(J)V

    return-void
.end method

.method public cancellationRequested()Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/ReferencePipeline$7$1;->cancellationRequestedCalled:Z

    iget-object v0, p0, Ljj$/util/stream/ReferencePipeline$7$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method
