.class abstract Ljj$/util/stream/ReferencePipeline;
.super Ljj$/util/stream/AbstractPipeline;
.source "ReferencePipeline.java"

# interfaces
.implements Ljj$/util/stream/Stream;


# direct methods
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

.method static synthetic lambda$collect$1(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$toArray$0(I)[Ljava/lang/Object;
    .registers 2

    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/Predicate;)Z
    .registers 3

    sget-object v0, Ljj$/util/stream/MatchOps$MatchKind;->ALL:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljj$/util/stream/MatchOps;->makeRef(Ljava/util/function/Predicate;Ljj$/util/stream/MatchOps$MatchKind;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Ljava/util/function/Predicate;)Z
    .registers 3

    sget-object v0, Ljj$/util/stream/MatchOps$MatchKind;->ANY:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljj$/util/stream/MatchOps;->makeRef(Ljava/util/function/Predicate;Ljj$/util/stream/MatchOps$MatchKind;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 5

    invoke-static {p1, p2, p3}, Ljj$/util/stream/ReduceOps;->makeRef(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Ljj$/util/stream/Collector;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Ljj$/util/stream/ReferencePipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljj$/util/stream/Collector$Characteristics;->CONCURRENT:Ljj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Ljj$/util/stream/ReferencePipeline;->isOrdered()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljj$/util/stream/Collector$Characteristics;->UNORDERED:Ljj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_24
    invoke-interface {p1}, Ljj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v1

    new-instance v2, Ljj$/util/stream/ReferencePipeline$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Ljj$/util/stream/ReferencePipeline$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Ljj$/util/stream/ReferencePipeline;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_41

    :cond_39
    invoke-static {p1}, Ljj$/util/stream/ReduceOps;->makeRef(Ljj$/util/stream/Collector;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    :goto_41
    invoke-interface {p1}, Ljj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljj$/util/stream/Collector$Characteristics;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    move-object v1, v0

    goto :goto_57

    :cond_4f
    invoke-interface {p1}, Ljj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_57
    return-object v1
.end method

.method public final count()J
    .registers 3

    invoke-static {}, Ljj$/util/stream/ReduceOps;->makeRefCounting()Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljj$/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/DistinctOps;->makeRef(Ljj$/util/stream/AbstractPipeline;)Ljj$/util/stream/ReferencePipeline;

    move-result-object v0

    return-object v0
.end method

.method public final dropWhile(Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;
    .registers 3

    invoke-static {p0, p1}, Ljj$/util/stream/WhileOps;->makeDropWhileRef(Ljj$/util/stream/AbstractPipeline;Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method final evaluateToNode(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    invoke-static {p1, p2, p3, p4}, Ljj$/util/stream/Nodes;->collect(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReferencePipeline$2;

    sget-object v3, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v4, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/ReferencePipeline$2;-><init>(Ljj$/util/stream/ReferencePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/Predicate;)V

    return-object v0
.end method

.method public final findAny()Ljj$/util/Optional;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljj$/util/stream/FindOps;->makeRef(Z)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/Optional;

    return-object v0
.end method

.method public final findFirst()Ljj$/util/Optional;
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljj$/util/stream/FindOps;->makeRef(Z)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/Optional;

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/Function;)Ljj$/util/stream/Stream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReferencePipeline$7;

    sget-object v3, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/ReferencePipeline$7;-><init>(Ljj$/util/stream/ReferencePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public final flatMapToDouble(Ljava/util/function/Function;)Ljj$/util/stream/DoubleStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReferencePipeline$9;

    sget-object v3, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/ReferencePipeline$9;-><init>(Ljj$/util/stream/ReferencePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public final flatMapToInt(Ljava/util/function/Function;)Ljj$/util/stream/IntStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReferencePipeline$8;

    sget-object v3, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/ReferencePipeline$8;-><init>(Ljj$/util/stream/ReferencePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public final flatMapToLong(Ljava/util/function/Function;)Ljj$/util/stream/LongStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReferencePipeline$10;

    sget-object v3, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/ReferencePipeline$10;-><init>(Ljj$/util/stream/ReferencePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljj$/util/stream/ForEachOps;->makeRef(Ljava/util/function/Consumer;Z)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava/util/function/Consumer;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljj$/util/stream/ForEachOps;->makeRef(Ljava/util/function/Consumer;Z)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method final forEachWithCancel(Ljj$/util/Spliterator;Ljj$/util/stream/Sink;)Z
    .registers 5

    nop

    :cond_1
    invoke-interface {p2}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    move v1, v0

    if-nez v0, :cond_e

    invoke-interface {p1, p2}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_e
    return v1
.end method

.method final getOutputShape()Ljj$/util/stream/StreamShape;
    .registers 2

    sget-object v0, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReferencePipeline;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterators;->iterator(Ljj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator;
    .registers 3

    new-instance v0, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;

    invoke-direct {v0, p1}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public final limit(J)Ljj$/util/stream/Stream;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_b

    invoke-static {p0, v0, v1, p1, p2}, Ljj$/util/stream/SliceOps;->makeRef(Ljj$/util/stream/AbstractPipeline;JJ)Ljj$/util/stream/Stream;

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

    invoke-static {p1, p2, p3}, Ljj$/util/stream/Nodes;->builder(JLjava/util/function/IntFunction;)Ljj$/util/stream/Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava/util/function/Function;)Ljj$/util/stream/Stream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReferencePipeline$3;

    sget-object v3, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/ReferencePipeline$3;-><init>(Ljj$/util/stream/ReferencePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public final mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljj$/util/stream/DoubleStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReferencePipeline$6;

    sget-object v3, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/ReferencePipeline$6;-><init>(Ljj$/util/stream/ReferencePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/ToDoubleFunction;)V

    return-object v0
.end method

.method public final mapToInt(Ljava/util/function/ToIntFunction;)Ljj$/util/stream/IntStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReferencePipeline$4;

    sget-object v3, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/ReferencePipeline$4;-><init>(Ljj$/util/stream/ReferencePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/ToIntFunction;)V

    return-object v0
.end method

.method public final mapToLong(Ljava/util/function/ToLongFunction;)Ljj$/util/stream/LongStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReferencePipeline$5;

    sget-object v3, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v1, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/ReferencePipeline$5;-><init>(Ljj$/util/stream/ReferencePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/ToLongFunction;)V

    return-object v0
.end method

.method public final max(Ljava/util/Comparator;)Ljj$/util/Optional;
    .registers 3

    invoke-static {p1}, Ljj$/util/function/BinaryOperator$-CC;->maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->reduce(Ljava/util/function/BinaryOperator;)Ljj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final min(Ljava/util/Comparator;)Ljj$/util/Optional;
    .registers 3

    invoke-static {p1}, Ljj$/util/function/BinaryOperator$-CC;->minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->reduce(Ljava/util/function/BinaryOperator;)Ljj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/Predicate;)Z
    .registers 3

    sget-object v0, Ljj$/util/stream/MatchOps$MatchKind;->NONE:Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljj$/util/stream/MatchOps;->makeRef(Ljava/util/function/Predicate;Ljj$/util/stream/MatchOps$MatchKind;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final peek(Ljava/util/function/Consumer;)Ljj$/util/stream/Stream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReferencePipeline$11;

    sget-object v3, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/ReferencePipeline$11;-><init>(Ljj$/util/stream/ReferencePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/Consumer;)V

    return-object v0
.end method

.method public final reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 5

    invoke-static {p1, p2, p3}, Ljj$/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 4

    invoke-static {p1, p2, p2}, Ljj$/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Ljava/util/function/BinaryOperator;)Ljj$/util/Optional;
    .registers 3

    invoke-static {p1}, Ljj$/util/stream/ReduceOps;->makeRef(Ljava/util/function/BinaryOperator;)Ljj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->evaluate(Ljj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/Optional;

    return-object v0
.end method

.method public final skip(J)Ljj$/util/stream/Stream;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_12

    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    return-object p0

    :cond_b
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Ljj$/util/stream/SliceOps;->makeRef(Ljj$/util/stream/AbstractPipeline;JJ)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Ljj$/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/SortedOps;->makeRef(Ljj$/util/stream/AbstractPipeline;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final sorted(Ljava/util/Comparator;)Ljj$/util/stream/Stream;
    .registers 3

    invoke-static {p0, p1}, Ljj$/util/stream/SortedOps;->makeRef(Ljj$/util/stream/AbstractPipeline;Ljava/util/Comparator;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final takeWhile(Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;
    .registers 3

    invoke-static {p0, p1}, Ljj$/util/stream/WhileOps;->makeTakeWhileRef(Ljj$/util/stream/AbstractPipeline;Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljj$/util/stream/ReferencePipeline$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljj$/util/stream/ReferencePipeline$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 4

    move-object v0, p1

    invoke-virtual {p0, v0}, Ljj$/util/stream/ReferencePipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v1

    invoke-static {v1, v0}, Ljj$/util/stream/Nodes;->flatten(Ljj$/util/stream/Node;Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Ljj$/util/stream/Node;->asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public synthetic toList()Ljava/util/List;
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Stream$-CC;->$default$toList(Ljj$/util/stream/Stream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unordered()Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReferencePipeline;->unordered()Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Ljj$/util/stream/Stream;
    .registers 4

    invoke-virtual {p0}, Ljj$/util/stream/ReferencePipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Ljj$/util/stream/ReferencePipeline$1;

    sget-object v1, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v2, Ljj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljj$/util/stream/ReferencePipeline$1;-><init>(Ljj$/util/stream/ReferencePipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-object v0
.end method

.method final wrap(Ljj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljj$/util/Spliterator;
    .registers 5

    new-instance v0, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljj$/util/stream/StreamSpliterators$WrappingSpliterator;-><init>(Ljj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
