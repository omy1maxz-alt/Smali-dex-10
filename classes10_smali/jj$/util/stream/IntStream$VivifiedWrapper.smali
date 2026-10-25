.class public final synthetic Ljj$/util/stream/IntStream$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/util/stream/IntStream;


# instance fields
.field public final synthetic wrappedValue:Ljava/util/stream/IntStream;


# direct methods
.method private synthetic constructor <init>(Ljava/util/stream/IntStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    return-void
.end method

.method public static synthetic convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/util/stream/IntStream$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/util/stream/IntStream$Wrapper;

    iget-object p0, p0, Ljj$/util/stream/IntStream$Wrapper;->wrappedValue:Ljj$/util/stream/IntStream;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/util/stream/IntStream$VivifiedWrapper;

    invoke-direct {v0, p0}, Ljj$/util/stream/IntStream$VivifiedWrapper;-><init>(Ljava/util/stream/IntStream;)V

    return-object v0
.end method


# virtual methods
.method public synthetic allMatch(Ljava/util/function/IntPredicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic anyMatch(Ljava/util/function/IntPredicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic asDoubleStream()Ljj$/util/stream/DoubleStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->asDoubleStream()Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic asLongStream()Ljj$/util/stream/LongStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->asLongStream()Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic average()Ljj$/util/OptionalDouble;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->average()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalDouble;)Ljj$/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic boxed()Ljj$/util/stream/Stream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Stream$VivifiedWrapper;->convert(Ljava/util/stream/Stream;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic close()V
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method

.method public synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/stream/IntStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic count()J
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic distinct()Ljj$/util/stream/IntStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic dropWhile(Ljava/util/function/IntPredicate;)Ljj$/util/stream/IntStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->dropWhile(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    instance-of v1, p1, Ljj$/util/stream/IntStream$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/util/stream/IntStream$VivifiedWrapper;

    iget-object p1, p1, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic filter(Ljava/util/function/IntPredicate;)Ljj$/util/stream/IntStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic findAny()Ljj$/util/OptionalInt;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->findAny()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalInt;)Ljj$/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic findFirst()Ljj$/util/OptionalInt;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalInt;)Ljj$/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic flatMap(Ljava/util/function/IntFunction;)Ljj$/util/stream/IntStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-static {p1}, Ljj$/util/stream/FlatMapApiFlips;->flipFunctionReturningStream(Ljava/util/function/IntFunction;)Ljava/util/function/IntFunction;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->flatMap(Ljava/util/function/IntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic forEach(Ljava/util/function/IntConsumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public synthetic forEachOrdered(Ljava/util/function/IntConsumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->forEachOrdered(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isParallel()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->isParallel()Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljj$/util/PrimitiveIterator$OfInt;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->iterator()Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;->convert(Ljava/util/PrimitiveIterator$OfInt;)Ljj$/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic limit(J)Ljj$/util/stream/IntStream;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/IntStream;->limit(J)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic map(Ljava/util/function/IntUnaryOperator;)Ljj$/util/stream/IntStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljj$/util/stream/DoubleStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToLong(Ljava/util/function/IntToLongFunction;)Ljj$/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->mapToLong(Ljava/util/function/IntToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToObj(Ljava/util/function/IntFunction;)Ljj$/util/stream/Stream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/Stream$VivifiedWrapper;->convert(Ljava/util/stream/Stream;)Ljj$/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic max()Ljj$/util/OptionalInt;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalInt;)Ljj$/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic min()Ljj$/util/OptionalInt;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalInt;)Ljj$/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic noneMatch(Ljava/util/function/IntPredicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->noneMatch(Ljava/util/function/IntPredicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/BaseStream$VivifiedWrapper;->convert(Ljava/util/stream/BaseStream;)Ljj$/util/stream/BaseStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic parallel()Ljj$/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$VivifiedWrapper;->convert(Ljava/util/stream/BaseStream;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parallel()Ljj$/util/stream/IntStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic peek(Ljava/util/function/IntConsumer;)Ljj$/util/stream/IntStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->peek(Ljava/util/function/IntConsumer;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic reduce(ILjava/util/function/IntBinaryOperator;)I
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/IntStream;->reduce(ILjava/util/function/IntBinaryOperator;)I

    move-result p1

    return p1
.end method

.method public synthetic reduce(Ljava/util/function/IntBinaryOperator;)Ljj$/util/OptionalInt;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalInt;)Ljj$/util/OptionalInt;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sequential()Ljj$/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$VivifiedWrapper;->convert(Ljava/util/stream/BaseStream;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic sequential()Ljj$/util/stream/IntStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic skip(J)Ljj$/util/stream/IntStream;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/IntStream;->skip(J)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sorted()Ljj$/util/stream/IntStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sorted()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljj$/util/Spliterator$OfInt;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$OfInt$VivifiedWrapper;->convert(Ljava/util/Spliterator$OfInt;)Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$VivifiedWrapper;->convert(Ljava/util/Spliterator;)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic sum()I
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    return v0
.end method

.method public synthetic summaryStatistics()Ljj$/util/IntSummaryStatistics;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->summaryStatistics()Ljava/util/IntSummaryStatistics;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/IntSummaryStatisticsConversions;->convert(Ljava/util/IntSummaryStatistics;)Ljj$/util/IntSummaryStatistics;

    move-result-object v0

    return-object v0
.end method

.method public synthetic takeWhile(Ljava/util/function/IntPredicate;)Ljj$/util/stream/IntStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0, p1}, Ljava/util/stream/IntStream;->takeWhile(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toArray()[I
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public synthetic unordered()Ljj$/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/IntStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/IntStream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->unordered()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$VivifiedWrapper;->convert(Ljava/util/stream/BaseStream;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method
