.class Ljj$/util/stream/ReduceOps$9;
.super Ljj$/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# direct methods
.method constructor <init>(Ljj$/util/stream/StreamShape;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/stream/ReduceOps$ReduceOp;-><init>(Ljj$/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Long;
    .registers 5

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SIZED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p2}, Ljj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_15
    invoke-super {p0, p1, p2}, Ljj$/util/stream/ReduceOps$ReduceOp;->evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/ReduceOps$9;->evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Long;
    .registers 5

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SIZED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p2}, Ljj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_15
    invoke-super {p0, p1, p2}, Ljj$/util/stream/ReduceOps$ReduceOp;->evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/ReduceOps$9;->evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getOpFlags()I
    .registers 2

    sget v0, Ljj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    return v0
.end method

.method public bridge synthetic makeSink()Ljj$/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$9;->makeSink()Ljj$/util/stream/ReduceOps$CountingSink;

    move-result-object v0

    return-object v0
.end method

.method public makeSink()Ljj$/util/stream/ReduceOps$CountingSink;
    .registers 2

    new-instance v0, Ljj$/util/stream/ReduceOps$CountingSink$OfInt;

    invoke-direct {v0}, Ljj$/util/stream/ReduceOps$CountingSink$OfInt;-><init>()V

    return-object v0
.end method
