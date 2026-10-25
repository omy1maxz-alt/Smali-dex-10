.class abstract Ljj$/util/stream/LongPipeline;
.super Ljj$/util/stream/AbstractPipeline;
.source "LongPipeline.java"

# interfaces
.implements Ljj$/util/stream/LongStream;


# direct methods
.method static bridge synthetic -$$Nest$smadapt(Ljj$/util/Spliterator;)Ljj$/util/Spliterator$OfLong;
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/LongPipeline;->adapt(Ljj$/util/Spliterator;)Ljj$/util/Spliterator$OfLong;

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

.method private static adapt(Ljj$/util/stream/Sink;)Ljava/util/function/LongConsumer;
    .registers 3

    instance-of v0, p0, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljava/util/function/LongConsumer;

    return-object v0

    :cond_8
    sget-boolean v0, Ljj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_13

    const-class v0, Ljj$/util/stream/AbstractPipeline;

    const-string v1, "using LongStream.adapt(Sink<Long> s)"

    invoke-static {v0, v1}, Ljj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_13
    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;-><init>(Ljj$/util/stream/Sink;)V

    return-object v0
.end method

.method private static adapt(Ljj$/util/Spliterator;)Ljj$/util/Spliterator$OfLong;
    .registers 3

    instance-of v0, p0, Ljj$/util/Spliterator$OfLong;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/util/Spliterator$OfLong;

    return-object v0

    :cond_8
    sget-boolean v0, Ljj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_13

    const-class v0, Ljj$/util/stream/AbstractPipeline;

    const-string v1, "using LongStream.adapt(Spliterator<Long> s)"

    invoke-static {v0, v1}, Ljj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$average$1()[J
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$average$2([JJ)V
    .registers 8

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    add-long/2addr v1, p1

    aput-wide v1, p0, v0

    return-void
.end method

.method static synthetic lambda$average$3([J[J)V
    .registers 7

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method static synthetic lambda$collect$4(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$distinct$0(Ljava/lang/Long;)J
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$toArray$5(I)[Ljava/lang/Long;
    .registers 2

    new-array v0, p0, [Ljava/lang/Long;

    return-object v0
.end method

.method private mapToObj(Ljava/util/function/LongFunction;I)Ljj$/util/stream/Stream;
    .registers 9

    new-instance v0, Ljj$/util/stream/LongPipeline$1;

    sget-object v3, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/LongPipeline$1;-><init>(Ljj$/util/stream/LongPipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/LongFunction;)V

    return-object v0
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3

    sget-object v0, Ljj$/util/stream/MatchOps$MatchKind;->ALL:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljj$/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljj$/util/stream/MatchOps$MatchKind;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/LongPipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3

    sget-object v0, Ljj$/util/stream/MatchOps$MatchKind;->ANY:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljj$/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljj$/util/stream/MatchOps$MatchKind;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/LongPipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final asDoubleStream()Ljj$/util/stream/DoubleStream;
    .registers 4

    new-instance v0, Ljj$/util/stream/LongPipeline$2;

    sget-object v1, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljj$/util/stream/LongPipeline$2;-><init>(Ljj$/util/stream/LongPipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final average()Ljj$/util/OptionalDouble;
    .registers 8

    new-instance v0, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda4;-><init>()V

    new-instance v1, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda5;-><init>()V

    new-instance v2, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljj$/util/stream/LongPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2b

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    long-to-double v2, v2

    aget-wide v4, v0, v1

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljj$/util/OptionalDouble;->of(D)Ljj$/util/OptionalDouble;

    move-result-object v1

    goto :goto_2f

    :cond_2b
    invoke-static {}, Ljj$/util/OptionalDouble;->empty()Ljj$/util/OptionalDouble;

    move-result-object v1

    :goto_2f
    return-object v1
.end method

.method public final boxed()Ljj$/util/stream/Stream;
    .registers 3

    new-instance v0, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda3;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljj$/util/stream/LongPipeline;->mapToObj(Ljava/util/function/LongFunction;I)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 6

    invoke-static {p3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda7;

    invoke-direct {v0, p3}, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-static {p1, p2, v0}, Ljj$/util/stream/ReduceOps;->makeLong(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BinaryOperator;)Ljj$/util/stream/TerminalOp;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljj$/util/stream/LongPipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final count()J
    .registers 3

    invoke-static {}, Ljj$/util/stream/ReduceOps;->makeLongCounting()Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/LongPipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljj$/util/stream/LongStream;
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/LongPipeline;->boxed()Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/stream/Stream;->distinct()Ljj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v0, v1}, Ljj$/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final dropWhile(Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;
    .registers 3

    invoke-static {p0, p1}, Ljj$/util/stream/WhileOps;->makeDropWhileLong(Ljj$/util/stream/AbstractPipeline;Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method final evaluateToNode(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    invoke-static {p1, p2, p3}, Ljj$/util/stream/Nodes;->collectLong(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Z)Ljj$/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/LongPipeline$8;

    sget-object v3, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    sget v4, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/LongPipeline$8;-><init>(Ljj$/util/stream/LongPipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/LongPredicate;)V

    return-object v0
.end method

.method public final findAny()Ljj$/util/OptionalLong;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljj$/util/stream/FindOps;->makeLong(Z)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/LongPipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/OptionalLong;

    return-object v0
.end method

.method public final findFirst()Ljj$/util/OptionalLong;
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljj$/util/stream/FindOps;->makeLong(Z)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/LongPipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/OptionalLong;

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/LongFunction;)Ljj$/util/stream/LongStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/LongPipeline$6;

    sget-object v3, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/LongPipeline$6;-><init>(Ljj$/util/stream/LongPipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/LongFunction;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/LongConsumer;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljj$/util/stream/ForEachOps;->makeLong(Ljava/util/function/LongConsumer;Z)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/LongPipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava/util/function/LongConsumer;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljj$/util/stream/ForEachOps;->makeLong(Ljava/util/function/LongConsumer;Z)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/LongPipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method final forEachWithCancel(Ljj$/util/Spliterator;Ljj$/util/stream/Sink;)Z
    .registers 7

    invoke-static {p1}, Ljj$/util/stream/LongPipeline;->adapt(Ljj$/util/Spliterator;)Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {p2}, Ljj$/util/stream/LongPipeline;->adapt(Ljj$/util/stream/Sink;)Ljava/util/function/LongConsumer;

    move-result-object v1

    :cond_8
    invoke-interface {p2}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    move v3, v2

    if-nez v2, :cond_15

    invoke-interface {v0, v1}, Ljj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_15
    return v3
.end method

.method final getOutputShape()Ljj$/util/stream/StreamShape;
    .registers 2

    sget-object v0, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/LongPipeline;->iterator()Ljj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljj$/util/PrimitiveIterator$OfLong;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/LongPipeline;->spliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterators;->iterator(Ljj$/util/Spliterator$OfLong;)Ljj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method final lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator$OfLong;
    .registers 3

    new-instance v0, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;

    invoke-direct {v0, p1}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/LongPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public final limit(J)Ljj$/util/stream/LongStream;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_b

    invoke-static {p0, v0, v1, p1, p2}, Ljj$/util/stream/SliceOps;->makeLong(Ljj$/util/stream/AbstractPipeline;JJ)Ljj$/util/stream/LongStream;

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

    invoke-static {p1, p2}, Ljj$/util/stream/Nodes;->longBuilder(J)Ljj$/util/stream/Node$Builder$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava/util/function/LongUnaryOperator;)Ljj$/util/stream/LongStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/LongPipeline$3;

    sget-object v3, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/LongPipeline$3;-><init>(Ljj$/util/stream/LongPipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/LongUnaryOperator;)V

    return-object v0
.end method

.method public final mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljj$/util/stream/DoubleStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/LongPipeline$5;

    sget-object v3, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/LongPipeline$5;-><init>(Ljj$/util/stream/LongPipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/LongToDoubleFunction;)V

    return-object v0
.end method

.method public final mapToInt(Ljava/util/function/LongToIntFunction;)Ljj$/util/stream/IntStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/LongPipeline$4;

    sget-object v3, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/LongPipeline$4;-><init>(Ljj$/util/stream/LongPipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/LongToIntFunction;)V

    return-object v0
.end method

.method public final mapToObj(Ljava/util/function/LongFunction;)Ljj$/util/stream/Stream;
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Ljj$/util/stream/LongPipeline;->mapToObj(Ljava/util/function/LongFunction;I)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final max()Ljj$/util/OptionalLong;
    .registers 2

    new-instance v0, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0}, Ljj$/util/stream/LongPipeline;->reduce(Ljava/util/function/LongBinaryOperator;)Ljj$/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final min()Ljj$/util/OptionalLong;
    .registers 2

    new-instance v0, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0}, Ljj$/util/stream/LongPipeline;->reduce(Ljava/util/function/LongBinaryOperator;)Ljj$/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3

    sget-object v0, Ljj$/util/stream/MatchOps$MatchKind;->NONE:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljj$/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljj$/util/stream/MatchOps$MatchKind;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/LongPipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parallel()Ljj$/util/stream/LongStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/AbstractPipeline;->parallel()Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/LongStream;

    return-object v0
.end method

.method public final peek(Ljava/util/function/LongConsumer;)Ljj$/util/stream/LongStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/LongPipeline$9;

    sget-object v3, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/LongPipeline$9;-><init>(Ljj$/util/stream/LongPipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/LongConsumer;)V

    return-object v0
.end method

.method public final reduce(JLjava/util/function/LongBinaryOperator;)J
    .registers 6

    invoke-static {p1, p2, p3}, Ljj$/util/stream/ReduceOps;->makeLong(JLjava/util/function/LongBinaryOperator;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/LongPipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final reduce(Ljava/util/function/LongBinaryOperator;)Ljj$/util/OptionalLong;
    .registers 3

    invoke-static {p1}, Ljj$/util/stream/ReduceOps;->makeLong(Ljava/util/function/LongBinaryOperator;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/LongPipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/OptionalLong;

    return-object v0
.end method

.method public bridge synthetic sequential()Ljj$/util/stream/LongStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/AbstractPipeline;->sequential()Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/LongStream;

    return-object v0
.end method

.method public final skip(J)Ljj$/util/stream/LongStream;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_12

    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    return-object p0

    :cond_b
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Ljj$/util/stream/SliceOps;->makeLong(Ljj$/util/stream/AbstractPipeline;JJ)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Ljj$/util/stream/LongStream;
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/SortedOps;->makeLong(Ljj$/util/stream/AbstractPipeline;)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Ljj$/util/Spliterator$OfLong;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/AbstractPipeline;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/LongPipeline;->adapt(Ljj$/util/Spliterator;)Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/LongPipeline;->spliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final sum()J
    .registers 4

    new-instance v0, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda9;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljj$/util/stream/LongPipeline;->reduce(JLjava/util/function/LongBinaryOperator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final summaryStatistics()Ljj$/util/LongSummaryStatistics;
    .registers 4

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda61;-><init>()V

    new-instance v1, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljj$/util/stream/LongPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/LongSummaryStatistics;

    return-object v0
.end method

.method public final takeWhile(Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;
    .registers 3

    invoke-static {p0, p1}, Ljj$/util/stream/WhileOps;->makeTakeWhileLong(Ljj$/util/stream/AbstractPipeline;Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[J
    .registers 2

    new-instance v0, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Ljj$/util/stream/LongPipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Node$OfLong;

    invoke-static {v0}, Ljj$/util/stream/Nodes;->flattenLong(Ljj$/util/stream/Node$OfLong;)Ljj$/util/stream/Node$OfLong;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/stream/Node$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public bridge synthetic unordered()Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/LongPipeline;->unordered()Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Ljj$/util/stream/LongStream;
    .registers 4

    invoke-virtual {p0}, Ljj$/util/stream/LongPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Ljj$/util/stream/LongPipeline$7;

    sget-object v1, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljj$/util/stream/LongPipeline$7;-><init>(Ljj$/util/stream/LongPipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-object v0
.end method

.method final wrap(Ljj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljj$/util/Spliterator;
    .registers 5

    new-instance v0, Ljj$/util/stream/StreamSpliterators$LongWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljj$/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Ljj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
