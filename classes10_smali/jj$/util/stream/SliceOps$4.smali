.class Ljj$/util/stream/SliceOps$4;
.super Ljj$/util/stream/DoublePipeline$StatefulOp;
.source "SliceOps.java"


# instance fields
.field final synthetic val$limit:J

.field final synthetic val$skip:J


# direct methods
.method constructor <init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;IJJ)V
    .registers 8

    iput-wide p4, p0, Ljj$/util/stream/SliceOps$4;->val$skip:J

    iput-wide p6, p0, Ljj$/util/stream/SliceOps$4;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/DoublePipeline$StatefulOp;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-void
.end method

.method static synthetic lambda$opEvaluateParallelLazy$0(I)[Ljava/lang/Double;
    .registers 2

    new-array v0, p0, [Ljava/lang/Double;

    return-object v0
.end method


# virtual methods
.method opEvaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 19

    invoke-virtual/range {p1 .. p2}, Ljj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v6

    const-wide/16 v1, 0x0

    const/4 v8, 0x1

    cmp-long v3, v6, v1

    if-lez v3, :cond_29

    const/16 v1, 0x4000

    move-object/from16 v3, p2

    invoke-interface {v3, v1}, Ljj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual/range {p1 .. p1}, Ljj$/util/stream/PipelineHelper;->getSourceShape()Ljj$/util/stream/StreamShape;

    move-result-object v9

    iget-wide v11, p0, Ljj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v13, p0, Ljj$/util/stream/SliceOps$4;->val$limit:J

    move-object v10, v3

    invoke-static/range {v9 .. v14}, Ljj$/util/stream/SliceOps;->-$$Nest$smsliceSpliterator(Ljj$/util/stream/StreamShape;Ljj$/util/Spliterator;JJ)Ljj$/util/Spliterator;

    move-result-object v1

    move-object/from16 v9, p1

    invoke-static {v9, v1, v8}, Ljj$/util/stream/Nodes;->collectDouble(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Z)Ljj$/util/stream/Node$OfDouble;

    move-result-object v2

    return-object v2

    :cond_29
    move-object/from16 v9, p1

    sget-object v1, Ljj$/util/stream/StreamOpFlag;->ORDERED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {v9}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v1

    if-nez v1, :cond_4d

    nop

    invoke-virtual/range {p1 .. p2}, Ljj$/util/stream/PipelineHelper;->wrapSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;

    move-result-object v1

    check-cast v1, Ljj$/util/Spliterator$OfDouble;

    iget-wide v2, p0, Ljj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v4, p0, Ljj$/util/stream/SliceOps$4;->val$limit:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Ljj$/util/stream/SliceOps$4;->unorderedSkipLimitSpliterator(Ljj$/util/Spliterator$OfDouble;JJJ)Ljj$/util/Spliterator$OfDouble;

    move-result-object v1

    move-wide v10, v6

    invoke-static {p0, v1, v8}, Ljj$/util/stream/Nodes;->collectDouble(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Z)Ljj$/util/stream/Node$OfDouble;

    move-result-object v2

    return-object v2

    :cond_4d
    new-instance v1, Ljj$/util/stream/SliceOps$SliceTask;

    iget-wide v5, p0, Ljj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v7, p0, Ljj$/util/stream/SliceOps$4;->val$limit:J

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v0, v1

    move-object v2, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Ljj$/util/stream/SliceOps$SliceTask;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    invoke-virtual {v0}, Ljj$/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Node;

    return-object v0
.end method

.method opEvaluateParallelLazy(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
    .registers 18

    invoke-virtual/range {p1 .. p2}, Ljj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v6

    const-wide/16 v1, 0x0

    cmp-long v3, v6, v1

    if-lez v3, :cond_2b

    const/16 v1, 0x4000

    move-object/from16 v8, p2

    invoke-interface {v8, v1}, Ljj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    new-instance v9, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    invoke-virtual/range {p1 .. p2}, Ljj$/util/stream/PipelineHelper;->wrapSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljj$/util/Spliterator$OfDouble;

    iget-wide v11, p0, Ljj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v1, p0, Ljj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v3, p0, Ljj$/util/stream/SliceOps$4;->val$limit:J

    invoke-static {v1, v2, v3, v4}, Ljj$/util/stream/SliceOps;->-$$Nest$smcalcSliceFence(JJ)J

    move-result-wide v13

    invoke-direct/range {v9 .. v14}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljj$/util/Spliterator$OfDouble;JJ)V

    return-object v9

    :cond_2b
    move-object/from16 v8, p2

    :cond_2d
    sget-object v1, Ljj$/util/stream/StreamOpFlag;->ORDERED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v1

    if-nez v1, :cond_4b

    nop

    invoke-virtual/range {p1 .. p2}, Ljj$/util/stream/PipelineHelper;->wrapSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;

    move-result-object v1

    check-cast v1, Ljj$/util/Spliterator$OfDouble;

    iget-wide v2, p0, Ljj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v4, p0, Ljj$/util/stream/SliceOps$4;->val$limit:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Ljj$/util/stream/SliceOps$4;->unorderedSkipLimitSpliterator(Ljj$/util/Spliterator$OfDouble;JJJ)Ljj$/util/Spliterator$OfDouble;

    move-result-object v1

    move-wide v9, v6

    return-object v1

    :cond_4b
    new-instance v1, Ljj$/util/stream/SliceOps$SliceTask;

    new-instance v4, Ljj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;-><init>()V

    iget-wide v5, p0, Ljj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v7, p0, Ljj$/util/stream/SliceOps$4;->val$limit:J

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v0, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Ljj$/util/stream/SliceOps$SliceTask;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    invoke-virtual {v0}, Ljj$/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Node;

    invoke-interface {v0}, Ljj$/util/stream/Node;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 4

    new-instance v0, Ljj$/util/stream/SliceOps$4$1;

    invoke-direct {v0, p0, p2}, Ljj$/util/stream/SliceOps$4$1;-><init>(Ljj$/util/stream/SliceOps$4;Ljj$/util/stream/Sink;)V

    return-object v0
.end method

.method unorderedSkipLimitSpliterator(Ljj$/util/Spliterator$OfDouble;JJJ)Ljj$/util/Spliterator$OfDouble;
    .registers 14

    cmp-long v0, p2, p6

    if-gtz v0, :cond_16

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    sub-long v0, p6, p2

    if-ltz v2, :cond_10

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_10
    move-wide p4, v0

    const-wide/16 p2, 0x0

    move-wide v2, p2

    move-wide v4, p4

    goto :goto_18

    :cond_16
    move-wide v2, p2

    move-wide v4, p4

    :goto_18
    new-instance v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;-><init>(Ljj$/util/Spliterator$OfDouble;JJ)V

    return-object v0
.end method
