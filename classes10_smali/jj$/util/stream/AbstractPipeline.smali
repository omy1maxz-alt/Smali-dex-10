.class abstract Ljj$/util/stream/AbstractPipeline;
.super Ljj$/util/stream/PipelineHelper;
.source "AbstractPipeline.java"

# interfaces
.implements Ljj$/util/stream/BaseStream;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MSG_CONSUMED:Ljava/lang/String; = "source already consumed or closed"

.field private static final MSG_STREAM_LINKED:Ljava/lang/String; = "stream has already been operated upon or closed"


# instance fields
.field private combinedFlags:I

.field private depth:I

.field private linkedOrConsumed:Z

.field private nextStage:Ljj$/util/stream/AbstractPipeline;

.field private parallel:Z

.field private final previousStage:Ljj$/util/stream/AbstractPipeline;

.field private sourceAnyStateful:Z

.field private sourceCloseAction:Ljava/lang/Runnable;

.field protected final sourceOrOpFlags:I

.field private sourceSpliterator:Ljj$/util/Spliterator;

.field private final sourceStage:Ljj$/util/stream/AbstractPipeline;

.field private sourceSupplier:Ljava/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .registers 6

    invoke-direct {p0}, Ljj$/util/stream/PipelineHelper;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/AbstractPipeline;->previousStage:Ljj$/util/stream/AbstractPipeline;

    iput-object p1, p0, Ljj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    iput-object p0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    sget v0, Ljj$/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr v0, p2

    iput v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    iget v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 v0, v0, 0x1

    not-int v0, v0

    sget v1, Ljj$/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr v0, v1

    iput v0, p0, Ljj$/util/stream/AbstractPipeline;->combinedFlags:I

    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/stream/AbstractPipeline;->depth:I

    iput-boolean p3, p0, Ljj$/util/stream/AbstractPipeline;->parallel:Z

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator;IZ)V
    .registers 6

    invoke-direct {p0}, Ljj$/util/stream/PipelineHelper;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/AbstractPipeline;->previousStage:Ljj$/util/stream/AbstractPipeline;

    iput-object p1, p0, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator:Ljj$/util/Spliterator;

    iput-object p0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    sget v0, Ljj$/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr v0, p2

    iput v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    iget v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 v0, v0, 0x1

    not-int v0, v0

    sget v1, Ljj$/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr v0, v1

    iput v0, p0, Ljj$/util/stream/AbstractPipeline;->combinedFlags:I

    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/stream/AbstractPipeline;->depth:I

    iput-boolean p3, p0, Ljj$/util/stream/AbstractPipeline;->parallel:Z

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/AbstractPipeline;I)V
    .registers 5

    invoke-direct {p0}, Ljj$/util/stream/PipelineHelper;-><init>()V

    iget-boolean v0, p1, Ljj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    iput-boolean v0, p1, Ljj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    iput-object p0, p1, Ljj$/util/stream/AbstractPipeline;->nextStage:Ljj$/util/stream/AbstractPipeline;

    iput-object p1, p0, Ljj$/util/stream/AbstractPipeline;->previousStage:Ljj$/util/stream/AbstractPipeline;

    sget v1, Ljj$/util/stream/StreamOpFlag;->OP_MASK:I

    and-int/2addr v1, p2

    iput v1, p0, Ljj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    iget v1, p1, Ljj$/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p2, v1}, Ljj$/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v1

    iput v1, p0, Ljj$/util/stream/AbstractPipeline;->combinedFlags:I

    iget-object v1, p1, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iput-object v1, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    invoke-virtual {p0}, Ljj$/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iput-boolean v0, v1, Ljj$/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    :cond_29
    iget v1, p1, Ljj$/util/stream/AbstractPipeline;->depth:I

    add-int/2addr v1, v0

    iput v1, p0, Ljj$/util/stream/AbstractPipeline;->depth:I

    return-void

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$opEvaluateParallelLazy$2(I)[Ljava/lang/Object;
    .registers 2

    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic lambda$wrapSpliterator$1(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
    .registers 1

    return-object p0
.end method

.method private sourceSpliterator(I)Ljj$/util/Spliterator;
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator:Ljj$/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-object v1, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v0, v1, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator:Ljj$/util/Spliterator;

    iget-object v1, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iput-object v2, v1, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator:Ljj$/util/Spliterator;

    goto :goto_26

    :cond_11
    iget-object v1, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v1, :cond_89

    iget-object v1, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljj$/util/Spliterator;

    iget-object v1, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iput-object v2, v1, Ljj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    :goto_26
    invoke-virtual {p0}, Ljj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_7e

    iget-object v1, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-boolean v1, v1, Ljj$/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    if-eqz v1, :cond_7e

    const/4 v1, 0x1

    iget-object v2, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v3, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v3, v3, Ljj$/util/stream/AbstractPipeline;->nextStage:Ljj$/util/stream/AbstractPipeline;

    move-object v4, p0

    :goto_3a
    if-eq v2, v4, :cond_7e

    iget v5, v3, Ljj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v3}, Ljj$/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v6

    if-eqz v6, :cond_6d

    const/4 v1, 0x0

    sget-object v6, Ljj$/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {v6, v5}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v6

    if-eqz v6, :cond_51

    sget v6, Ljj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    not-int v6, v6

    and-int/2addr v5, v6

    :cond_51
    invoke-virtual {v3, v2, v0}, Ljj$/util/stream/AbstractPipeline;->opEvaluateParallelLazy(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljj$/util/Spliterator;

    move-result-object v0

    const/16 v6, 0x40

    invoke-interface {v0, v6}, Ljj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v6

    if-eqz v6, :cond_65

    sget v6, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    not-int v6, v6

    and-int/2addr v6, v5

    sget v7, Ljj$/util/stream/StreamOpFlag;->IS_SIZED:I

    or-int/2addr v6, v7

    goto :goto_6c

    :cond_65
    sget v6, Ljj$/util/stream/StreamOpFlag;->IS_SIZED:I

    not-int v6, v6

    and-int/2addr v6, v5

    sget v7, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int/2addr v6, v7

    :goto_6c
    move v5, v6

    :cond_6d
    add-int/lit8 v6, v1, 0x1

    iput v1, v3, Ljj$/util/stream/AbstractPipeline;->depth:I

    iget v1, v2, Ljj$/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v5, v1}, Ljj$/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v1

    iput v1, v3, Ljj$/util/stream/AbstractPipeline;->combinedFlags:I

    move-object v2, v3

    iget-object v3, v3, Ljj$/util/stream/AbstractPipeline;->nextStage:Ljj$/util/stream/AbstractPipeline;

    move v1, v6

    goto :goto_3a

    :cond_7e
    if-eqz p1, :cond_88

    iget v1, p0, Ljj$/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p1, v1}, Ljj$/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v1

    iput v1, p0, Ljj$/util/stream/AbstractPipeline;->combinedFlags:I

    :cond_88
    return-object v0

    :cond_89
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "source already consumed or closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    iput-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator:Ljj$/util/Spliterator;

    iget-object v1, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljj$/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_19

    iget-object v1, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljj$/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    iget-object v2, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iput-object v0, v2, Ljj$/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_19
    return-void
.end method

.method final copyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)V
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Ljj$/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-interface {p2}, Ljj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljj$/util/stream/Sink;->begin(J)V

    invoke-interface {p2, p1}, Ljj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Ljj$/util/stream/Sink;->end()V

    goto :goto_20

    :cond_1d
    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/AbstractPipeline;->copyIntoWithCancel(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Z

    :goto_20
    return-void
.end method

.method final copyIntoWithCancel(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Z
    .registers 6

    move-object v0, p0

    :goto_1
    iget v1, v0, Ljj$/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_8

    iget-object v0, v0, Ljj$/util/stream/AbstractPipeline;->previousStage:Ljj$/util/stream/AbstractPipeline;

    goto :goto_1

    :cond_8
    invoke-interface {p2}, Ljj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljj$/util/stream/Sink;->begin(J)V

    invoke-virtual {v0, p2, p1}, Ljj$/util/stream/AbstractPipeline;->forEachWithCancel(Ljj$/util/Spliterator;Ljj$/util/stream/Sink;)Z

    move-result v1

    invoke-interface {p1}, Ljj$/util/stream/Sink;->end()V

    return v1
.end method

.method final evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;
    .registers 4

    nop

    iget-boolean v0, p0, Ljj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_28

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    invoke-virtual {p0}, Ljj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljj$/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljj$/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljj$/util/stream/TerminalOp;->evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_27

    :cond_1b
    invoke-interface {p1}, Ljj$/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljj$/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljj$/util/stream/TerminalOp;->evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    :goto_27
    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final evaluate(Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    invoke-virtual {p0}, Ljj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p0, p1, p2, p3}, Ljj$/util/stream/AbstractPipeline;->evaluateToNode(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_b
    nop

    invoke-virtual {p0, p1}, Ljj$/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Ljj$/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljj$/util/stream/Node$Builder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljj$/util/stream/AbstractPipeline;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/Node$Builder;

    invoke-interface {v1}, Ljj$/util/stream/Node$Builder;->build()Ljj$/util/stream/Node;

    move-result-object v1

    return-object v1
.end method

.method final evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 5

    iget-boolean v0, p0, Ljj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_30

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    invoke-virtual {p0}, Ljj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    iget-object v1, p0, Ljj$/util/stream/AbstractPipeline;->previousStage:Ljj$/util/stream/AbstractPipeline;

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Ljj$/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v1

    if-eqz v1, :cond_27

    iput v2, p0, Ljj$/util/stream/AbstractPipeline;->depth:I

    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->previousStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v1, p0, Ljj$/util/stream/AbstractPipeline;->previousStage:Ljj$/util/stream/AbstractPipeline;

    invoke-direct {v1, v2}, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljj$/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Ljj$/util/stream/AbstractPipeline;->opEvaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_27
    invoke-direct {p0, v2}, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljj$/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Ljj$/util/stream/AbstractPipeline;->evaluate(Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract evaluateToNode(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
.end method

.method final exactOutputSizeIfKnown(Ljj$/util/Spliterator;)J
    .registers 4

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SIZED:Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Ljj$/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    goto :goto_13

    :cond_11
    const-wide/16 v0, -0x1

    :goto_13
    return-wide v0
.end method

.method abstract forEachWithCancel(Ljj$/util/Spliterator;Ljj$/util/stream/Sink;)Z
.end method

.method abstract getOutputShape()Ljj$/util/stream/StreamShape;
.end method

.method final getSourceShape()Ljj$/util/stream/StreamShape;
    .registers 3

    move-object v0, p0

    :goto_1
    iget v1, v0, Ljj$/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_8

    iget-object v0, v0, Ljj$/util/stream/AbstractPipeline;->previousStage:Ljj$/util/stream/AbstractPipeline;

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Ljj$/util/stream/AbstractPipeline;->getOutputShape()Ljj$/util/stream/StreamShape;

    move-result-object v1

    return-object v1
.end method

.method final getStreamAndOpFlags()I
    .registers 2

    iget v0, p0, Ljj$/util/stream/AbstractPipeline;->combinedFlags:I

    return v0
.end method

.method final getStreamFlags()I
    .registers 2

    iget v0, p0, Ljj$/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v0}, Ljj$/util/stream/StreamOpFlag;->toStreamFlags(I)I

    move-result v0

    return v0
.end method

.method final isOrdered()Z
    .registers 3

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->ORDERED:Ljj$/util/stream/StreamOpFlag;

    iget v1, p0, Ljj$/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    return v0
.end method

.method public final isParallel()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-boolean v0, v0, Ljj$/util/stream/AbstractPipeline;->parallel:Z

    return v0
.end method

.method synthetic lambda$spliterator$0$java-util-stream-AbstractPipeline()Ljj$/util/Spliterator;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method abstract lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator;
.end method

.method abstract makeNodeBuilder(JLjava/util/function/IntFunction;)Ljj$/util/stream/Node$Builder;
.end method

.method public onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;
    .registers 5

    iget-boolean v0, p0, Ljj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_18

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljj$/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    iget-object v1, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    if-nez v0, :cond_11

    move-object v2, p1

    goto :goto_15

    :cond_11
    invoke-static {v0, p1}, Ljj$/util/stream/Streams;->composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    :goto_15
    iput-object v2, v1, Ljj$/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    return-object p0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method opEvaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parallel evaluation is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method opEvaluateParallelLazy(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
    .registers 4

    new-instance v0, Ljj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ljj$/util/stream/AbstractPipeline;->opEvaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/stream/Node;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method abstract opIsStateful()Z
.end method

.method abstract opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
.end method

.method public final parallel()Ljj$/util/stream/BaseStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljj$/util/stream/AbstractPipeline;->parallel:Z

    return-object p0
.end method

.method public final sequential()Ljj$/util/stream/BaseStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljj$/util/stream/AbstractPipeline;->parallel:Z

    return-object p0
.end method

.method final sourceStageSpliterator()Ljj$/util/Spliterator;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    if-ne p0, v0, :cond_40

    iget-boolean v0, p0, Ljj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_38

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator:Ljj$/util/Spliterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator:Ljj$/util/Spliterator;

    iget-object v2, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iput-object v1, v2, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator:Ljj$/util/Spliterator;

    return-object v0

    :cond_1b
    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_30

    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator;

    iget-object v2, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iput-object v1, v2, Ljj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    return-object v0

    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public spliterator()Ljj$/util/Spliterator;
    .registers 4

    iget-boolean v0, p0, Ljj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_44

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    if-ne p0, v0, :cond_36

    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator:Ljj$/util/Spliterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator:Ljj$/util/Spliterator;

    iget-object v2, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iput-object v1, v2, Ljj$/util/stream/AbstractPipeline;->sourceSpliterator:Ljj$/util/Spliterator;

    return-object v0

    :cond_1b
    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    iget-object v2, p0, Ljj$/util/stream/AbstractPipeline;->sourceStage:Ljj$/util/stream/AbstractPipeline;

    iput-object v1, v2, Ljj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    invoke-virtual {p0, v0}, Ljj$/util/stream/AbstractPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator;

    move-result-object v1

    return-object v1

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    new-instance v0, Ljj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda0;-><init>(Ljj$/util/stream/AbstractPipeline;)V

    invoke-virtual {p0}, Ljj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Ljj$/util/stream/AbstractPipeline;->wrap(Ljj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract wrap(Ljj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljj$/util/Spliterator;
.end method

.method final wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Sink;

    invoke-virtual {p0, v0}, Ljj$/util/stream/AbstractPipeline;->wrapSink(Ljj$/util/stream/Sink;)Ljj$/util/stream/Sink;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljj$/util/stream/AbstractPipeline;->copyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)V

    return-object p1
.end method

.method final wrapSink(Ljj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    :goto_4
    iget v1, v0, Ljj$/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_13

    iget-object v1, v0, Ljj$/util/stream/AbstractPipeline;->previousStage:Ljj$/util/stream/AbstractPipeline;

    iget v1, v1, Ljj$/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1, p1}, Ljj$/util/stream/AbstractPipeline;->opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;

    move-result-object p1

    iget-object v0, v0, Ljj$/util/stream/AbstractPipeline;->previousStage:Ljj$/util/stream/AbstractPipeline;

    goto :goto_4

    :cond_13
    return-object p1
.end method

.method final wrapSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
    .registers 4

    iget v0, p0, Ljj$/util/stream/AbstractPipeline;->depth:I

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    new-instance v0, Ljj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;-><init>(Ljj$/util/Spliterator;)V

    invoke-virtual {p0}, Ljj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Ljj$/util/stream/AbstractPipeline;->wrap(Ljj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
