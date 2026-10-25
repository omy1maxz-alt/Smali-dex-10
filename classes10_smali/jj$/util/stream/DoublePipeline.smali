.class abstract Ljj$/util/stream/DoublePipeline;
.super Ljj$/util/stream/AbstractPipeline;
.source "DoublePipeline.java"

# interfaces
.implements Ljj$/util/stream/DoubleStream;


# direct methods
.method static bridge synthetic -$$Nest$smadapt(Ljj$/util/Spliterator;)Ljj$/util/Spliterator$OfDouble;
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/DoublePipeline;->adapt(Ljj$/util/Spliterator;)Ljj$/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/AbstractPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/AbstractPipeline;-><init>(Ljj$/util/Spliterator;IZ)V

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/AbstractPipeline;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/AbstractPipeline;-><init>(Ljj$/util/stream/AbstractPipeline;I)V

    return-void
.end method

.method private static adapt(Ljj$/util/stream/Sink;)Ljava/util/function/DoubleConsumer;
    .registers 3

    instance-of v0, p0, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljava/util/function/DoubleConsumer;

    return-object v0

    :cond_8
    sget-boolean v0, Ljj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_13

    const-class v0, Ljj$/util/stream/AbstractPipeline;

    const-string v1, "using DoubleStream.adapt(Sink<Double> s)"

    invoke-static {v0, v1}, Ljj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_13
    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda0;-><init>(Ljj$/util/stream/Sink;)V

    return-object v0
.end method

.method private static adapt(Ljj$/util/Spliterator;)Ljj$/util/Spliterator$OfDouble;
    .registers 3

    instance-of v0, p0, Ljj$/util/Spliterator$OfDouble;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/util/Spliterator$OfDouble;

    return-object v0

    :cond_8
    sget-boolean v0, Ljj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_13

    const-class v0, Ljj$/util/stream/AbstractPipeline;

    const-string v1, "using DoubleStream.adapt(Spliterator<Double> s)"

    invoke-static {v0, v1}, Ljj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DoubleStream.adapt(Spliterator<Double> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$average$4()[D
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$average$5([DD)V
    .registers 8

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    add-double/2addr v1, p1

    aput-wide v1, p0, v0

    return-void
.end method

.method static synthetic lambda$average$6([D[D)V
    .registers 7

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method static synthetic lambda$collect$7(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$distinct$0(Ljava/lang/Double;)D
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$sum$1()[D
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$sum$2([DD)V
    .registers 6

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    add-double/2addr v1, p1

    aput-wide v1, p0, v0

    return-void
.end method

.method static synthetic lambda$sum$3([D[D)V
    .registers 7

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method static synthetic lambda$toArray$8(I)[Ljava/lang/Double;
    .registers 2

    new-array v0, p0, [Ljava/lang/Double;

    return-object v0
.end method

.method private mapToObj(Ljava/util/function/DoubleFunction;I)Ljj$/util/stream/Stream;
    .registers 9

    new-instance v0, Ljj$/util/stream/DoublePipeline$1;

    sget-object v3, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/DoublePipeline$1;-><init>(Ljj$/util/stream/DoublePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/DoubleFunction;)V

    return-object v0
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/DoublePredicate;)Z
    .registers 3

    sget-object v0, Ljj$/util/stream/MatchOps$MatchKind;->ALL:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljj$/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Ljj$/util/stream/MatchOps$MatchKind;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/DoublePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Ljava/util/function/DoublePredicate;)Z
    .registers 3

    sget-object v0, Ljj$/util/stream/MatchOps$MatchKind;->ANY:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljj$/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Ljj$/util/stream/MatchOps$MatchKind;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/DoublePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final average()Ljj$/util/OptionalDouble;
    .registers 8

    new-instance v0, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda12;-><init>()V

    new-instance v1, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda13;-><init>()V

    new-instance v2, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljj$/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x2

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_2a

    invoke-static {v0}, Ljj$/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v2

    aget-wide v4, v0, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljj$/util/OptionalDouble;->of(D)Ljj$/util/OptionalDouble;

    move-result-object v1

    goto :goto_2e

    :cond_2a
    invoke-static {}, Ljj$/util/OptionalDouble;->empty()Ljj$/util/OptionalDouble;

    move-result-object v1

    :goto_2e
    return-object v1
.end method

.method public final boxed()Ljj$/util/stream/Stream;
    .registers 3

    new-instance v0, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda3;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljj$/util/stream/DoublePipeline;->mapToObj(Ljava/util/function/DoubleFunction;I)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 6

    invoke-static {p3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda6;

    invoke-direct {v0, p3}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-static {p1, p2, v0}, Ljj$/util/stream/ReduceOps;->makeDouble(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)Ljj$/util/stream/TerminalOp;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljj$/util/stream/DoublePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final count()J
    .registers 3

    invoke-static {}, Ljj$/util/stream/ReduceOps;->makeDoubleCounting()Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/DoublePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljj$/util/stream/DoubleStream;
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/DoublePipeline;->boxed()Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/stream/Stream;->distinct()Ljj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljj$/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final dropWhile(Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;
    .registers 3

    invoke-static {p0, p1}, Ljj$/util/stream/WhileOps;->makeDropWhileDouble(Ljj$/util/stream/AbstractPipeline;Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method final evaluateToNode(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    invoke-static {p1, p2, p3}, Ljj$/util/stream/Nodes;->collectDouble(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Z)Ljj$/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/DoublePipeline$7;

    sget-object v3, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    sget v4, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/DoublePipeline$7;-><init>(Ljj$/util/stream/DoublePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method public final findAny()Ljj$/util/OptionalDouble;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljj$/util/stream/FindOps;->makeDouble(Z)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/DoublePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/OptionalDouble;

    return-object v0
.end method

.method public final findFirst()Ljj$/util/OptionalDouble;
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljj$/util/stream/FindOps;->makeDouble(Z)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/DoublePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/OptionalDouble;

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/DoubleFunction;)Ljj$/util/stream/DoubleStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/DoublePipeline$5;

    sget-object v3, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/DoublePipeline$5;-><init>(Ljj$/util/stream/DoublePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/DoubleFunction;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/DoubleConsumer;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljj$/util/stream/ForEachOps;->makeDouble(Ljava/util/function/DoubleConsumer;Z)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/DoublePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljj$/util/stream/ForEachOps;->makeDouble(Ljava/util/function/DoubleConsumer;Z)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/DoublePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method final forEachWithCancel(Ljj$/util/Spliterator;Ljj$/util/stream/Sink;)Z
    .registers 7

    invoke-static {p1}, Ljj$/util/stream/DoublePipeline;->adapt(Ljj$/util/Spliterator;)Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {p2}, Ljj$/util/stream/DoublePipeline;->adapt(Ljj$/util/stream/Sink;)Ljava/util/function/DoubleConsumer;

    move-result-object v1

    :cond_8
    invoke-interface {p2}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    move v3, v2

    if-nez v2, :cond_15

    invoke-interface {v0, v1}, Ljj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_15
    return v3
.end method

.method final getOutputShape()Ljj$/util/stream/StreamShape;
    .registers 2

    sget-object v0, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/DoublePipeline;->iterator()Ljj$/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljj$/util/PrimitiveIterator$OfDouble;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/DoublePipeline;->spliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterators;->iterator(Ljj$/util/Spliterator$OfDouble;)Ljj$/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method final lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator$OfDouble;
    .registers 3

    new-instance v0, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;

    invoke-direct {v0, p1}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/DoublePipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public final limit(J)Ljj$/util/stream/DoubleStream;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_b

    invoke-static {p0, v0, v1, p1, p2}, Ljj$/util/stream/SliceOps;->makeDouble(Ljj$/util/stream/AbstractPipeline;JJ)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final makeNodeBuilder(JLjava/util/function/IntFunction;)Ljj$/util/stream/Node$Builder;
    .registers 5

    invoke-static {p1, p2}, Ljj$/util/stream/Nodes;->doubleBuilder(J)Ljj$/util/stream/Node$Builder$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava/util/function/DoubleUnaryOperator;)Ljj$/util/stream/DoubleStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/DoublePipeline$2;

    sget-object v3, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/DoublePipeline$2;-><init>(Ljj$/util/stream/DoublePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method

.method public final mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljj$/util/stream/IntStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/DoublePipeline$3;

    sget-object v3, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/DoublePipeline$3;-><init>(Ljj$/util/stream/DoublePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/DoubleToIntFunction;)V

    return-object v0
.end method

.method public final mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljj$/util/stream/LongStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/DoublePipeline$4;

    sget-object v3, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/DoublePipeline$4;-><init>(Ljj$/util/stream/DoublePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/DoubleToLongFunction;)V

    return-object v0
.end method

.method public final mapToObj(Ljava/util/function/DoubleFunction;)Ljj$/util/stream/Stream;
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Ljj$/util/stream/DoublePipeline;->mapToObj(Ljava/util/function/DoubleFunction;I)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final max()Ljj$/util/OptionalDouble;
    .registers 2

    new-instance v0, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v0}, Ljj$/util/stream/DoublePipeline;->reduce(Ljava/util/function/DoubleBinaryOperator;)Ljj$/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final min()Ljj$/util/OptionalDouble;
    .registers 2

    new-instance v0, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p0, v0}, Ljj$/util/stream/DoublePipeline;->reduce(Ljava/util/function/DoubleBinaryOperator;)Ljj$/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/DoublePredicate;)Z
    .registers 3

    sget-object v0, Ljj$/util/stream/MatchOps$MatchKind;->NONE:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljj$/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Ljj$/util/stream/MatchOps$MatchKind;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/DoublePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parallel()Ljj$/util/stream/DoubleStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/AbstractPipeline;->parallel()Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/DoubleStream;

    return-object v0
.end method

.method public final peek(Ljava/util/function/DoubleConsumer;)Ljj$/util/stream/DoubleStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/DoublePipeline$8;

    sget-object v3, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/DoublePipeline$8;-><init>(Ljj$/util/stream/DoublePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/DoubleConsumer;)V

    return-object v0
.end method

.method public final reduce(DLjava/util/function/DoubleBinaryOperator;)D
    .registers 6

    invoke-static {p1, p2, p3}, Ljj$/util/stream/ReduceOps;->makeDouble(DLjava/util/function/DoubleBinaryOperator;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/DoublePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final reduce(Ljava/util/function/DoubleBinaryOperator;)Ljj$/util/OptionalDouble;
    .registers 3

    invoke-static {p1}, Ljj$/util/stream/ReduceOps;->makeDouble(Ljava/util/function/DoubleBinaryOperator;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/DoublePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/OptionalDouble;

    return-object v0
.end method

.method public bridge synthetic sequential()Ljj$/util/stream/DoubleStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/AbstractPipeline;->sequential()Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/DoubleStream;

    return-object v0
.end method

.method public final skip(J)Ljj$/util/stream/DoubleStream;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_12

    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    return-object p0

    :cond_b
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Ljj$/util/stream/SliceOps;->makeDouble(Ljj$/util/stream/AbstractPipeline;JJ)Ljj$/util/stream/DoubleStream;

    move-result-object v2

    return-object v2

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Ljj$/util/stream/DoubleStream;
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/SortedOps;->makeDouble(Ljj$/util/stream/AbstractPipeline;)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Ljj$/util/Spliterator$OfDouble;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/AbstractPipeline;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/DoublePipeline;->adapt(Ljj$/util/Spliterator;)Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/DoublePipeline;->spliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final sum()D
    .registers 4

    new-instance v0, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda8;-><init>()V

    new-instance v1, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda9;-><init>()V

    new-instance v2, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljj$/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-static {v0}, Ljj$/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v1

    return-wide v1
.end method

.method public final summaryStatistics()Ljj$/util/DoubleSummaryStatistics;
    .registers 4

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda15;-><init>()V

    new-instance v1, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljj$/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/DoubleSummaryStatistics;

    return-object v0
.end method

.method public final takeWhile(Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;
    .registers 3

    invoke-static {p0, p1}, Ljj$/util/stream/WhileOps;->makeTakeWhileDouble(Ljj$/util/stream/AbstractPipeline;Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[D
    .registers 2

    new-instance v0, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0}, Ljj$/util/stream/DoublePipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Node$OfDouble;

    invoke-static {v0}, Ljj$/util/stream/Nodes;->flattenDouble(Ljj$/util/stream/Node$OfDouble;)Ljj$/util/stream/Node$OfDouble;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public bridge synthetic unordered()Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/DoublePipeline;->unordered()Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Ljj$/util/stream/DoubleStream;
    .registers 4

    invoke-virtual {p0}, Ljj$/util/stream/DoublePipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Ljj$/util/stream/DoublePipeline$6;

    sget-object v1, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljj$/util/stream/DoublePipeline$6;-><init>(Ljj$/util/stream/DoublePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-object v0
.end method

.method final wrap(Ljj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljj$/util/Spliterator;
    .registers 5

    new-instance v0, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;-><init>(Ljj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
