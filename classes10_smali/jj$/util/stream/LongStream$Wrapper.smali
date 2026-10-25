.class public final synthetic Ljj$/util/stream/LongStream$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/stream/LongStream;


# instance fields
.field public final synthetic wrappedValue:Ljj$/util/stream/LongStream;


# direct methods
.method private synthetic constructor <init>(Ljj$/util/stream/LongStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    return-void
.end method

.method public static synthetic convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/util/stream/LongStream$VivifiedWrapper;

    iget-object p0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/util/stream/LongStream$Wrapper;

    invoke-direct {v0, p0}, Ljj$/util/stream/LongStream$Wrapper;-><init>(Ljj$/util/stream/LongStream;)V

    return-object v0
.end method


# virtual methods
.method public synthetic allMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->allMatch(Ljava/util/function/LongPredicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic anyMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->anyMatch(Ljava/util/function/LongPredicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic asDoubleStream()Ljava/util/stream/DoubleStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->asDoubleStream()Ljj$/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/DoubleStream$Wrapper;->convert(Ljj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic average()Ljava/util/OptionalDouble;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->average()Ljj$/util/OptionalDouble;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljj$/util/OptionalDouble;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic boxed()Ljava/util/stream/Stream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->boxed()Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic close()V
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/BaseStream;->close()V

    return-void
.end method

.method public synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1, p2, p3}, Ljj$/util/stream/LongStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic count()J
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic distinct()Ljava/util/stream/LongStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->distinct()Ljj$/util/stream/LongStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic dropWhile(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->dropWhile(Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    instance-of v1, p1, Ljj$/util/stream/LongStream$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/util/stream/LongStream$Wrapper;

    iget-object p1, p1, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic filter(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->filter(Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic findAny()Ljava/util/OptionalLong;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->findAny()Ljj$/util/OptionalLong;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljj$/util/OptionalLong;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic findFirst()Ljava/util/OptionalLong;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->findFirst()Ljj$/util/OptionalLong;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljj$/util/OptionalLong;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic flatMap(Ljava/util/function/LongFunction;)Ljava/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-static {p1}, Ljj$/util/stream/FlatMapApiFlips;->flipFunctionReturningStream(Ljava/util/function/LongFunction;)Ljava/util/function/LongFunction;

    move-result-object p1

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->flatMap(Ljava/util/function/LongFunction;)Ljj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic forEach(Ljava/util/function/LongConsumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic forEachOrdered(Ljava/util/function/LongConsumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->forEachOrdered(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isParallel()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/BaseStream;->isParallel()Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/PrimitiveIterator$OfLong;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->iterator()Ljj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/PrimitiveIterator$OfLong$Wrapper;->convert(Ljj$/util/PrimitiveIterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic limit(J)Ljava/util/stream/LongStream;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/LongStream;->limit(J)Ljj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->map(Ljava/util/function/LongUnaryOperator;)Ljj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$Wrapper;->convert(Ljj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToInt(Ljava/util/function/LongToIntFunction;)Ljava/util/stream/IntStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->mapToInt(Ljava/util/function/LongToIntFunction;)Ljj$/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$Wrapper;->convert(Ljj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Ljj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic max()Ljava/util/OptionalLong;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->max()Ljj$/util/OptionalLong;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljj$/util/OptionalLong;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic min()Ljava/util/OptionalLong;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->min()Ljj$/util/OptionalLong;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljj$/util/OptionalLong;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic noneMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->noneMatch(Ljava/util/function/LongPredicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/BaseStream$Wrapper;->convert(Ljj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic parallel()Ljava/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->parallel()Ljj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$Wrapper;->convert(Ljj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parallel()Ljava/util/stream/LongStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->parallel()Ljj$/util/stream/LongStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic peek(Ljava/util/function/LongConsumer;)Ljava/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->peek(Ljava/util/function/LongConsumer;)Ljj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic reduce(JLjava/util/function/LongBinaryOperator;)J
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1, p2, p3}, Ljj$/util/stream/LongStream;->reduce(JLjava/util/function/LongBinaryOperator;)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->reduce(Ljava/util/function/LongBinaryOperator;)Ljj$/util/OptionalLong;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/OptionalConversions;->convert(Ljj$/util/OptionalLong;)Ljava/util/OptionalLong;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sequential()Ljava/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->sequential()Ljj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$Wrapper;->convert(Ljj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic sequential()Ljava/util/stream/LongStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->sequential()Ljj$/util/stream/LongStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic skip(J)Ljava/util/stream/LongStream;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/LongStream;->skip(J)Ljj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sorted()Ljava/util/stream/LongStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->sorted()Ljj$/util/stream/LongStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator$OfLong;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->spliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$OfLong$Wrapper;->convert(Ljj$/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$Wrapper;->convert(Ljj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic sum()J
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic summaryStatistics()Ljava/util/LongSummaryStatistics;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->summaryStatistics()Ljj$/util/LongSummaryStatistics;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/LongSummaryStatisticsConversions;->convert(Ljj$/util/LongSummaryStatistics;)Ljava/util/LongSummaryStatistics;

    move-result-object v0

    return-object v0
.end method

.method public synthetic takeWhile(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljj$/util/stream/LongStream;->takeWhile(Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toArray()[J
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/LongStream;->toArray()[J

    move-result-object v0

    return-object v0
.end method

.method public synthetic unordered()Ljava/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/BaseStream;->unordered()Ljj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$Wrapper;->convert(Ljj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method
