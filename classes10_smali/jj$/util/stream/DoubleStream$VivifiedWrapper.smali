.class public final synthetic Ljj$/util/stream/DoubleStream$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/util/stream/DoubleStream;


# instance fields
.field public final synthetic wrappedValue:Ljava/util/stream/DoubleStream;


# direct methods
.method private synthetic constructor <init>(Ljava/util/stream/DoubleStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    return-void
.end method

.method public static synthetic convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/util/stream/DoubleStream$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/util/stream/DoubleStream$Wrapper;

    iget-object p0, p0, Ljj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Ljj$/util/stream/DoubleStream;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;

    invoke-direct {v0, p0}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;-><init>(Ljava/util/stream/DoubleStream;)V

    return-object v0
.end method


# virtual methods
.method public synthetic allMatch(Ljava/util/function/DoublePredicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->allMatch(Ljava/util/function/DoublePredicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic anyMatch(Ljava/util/function/DoublePredicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->anyMatch(Ljava/util/function/DoublePredicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic average()Ljj$/util/OptionalDouble;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalDouble;)Ljj$/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic boxed()Ljj$/util/stream/Stream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Stream$VivifiedWrapper;->convert(Ljava/util/stream/Stream;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic close()V
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method

.method public synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/stream/DoubleStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic count()J
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic distinct()Ljj$/util/stream/DoubleStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->distinct()Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic dropWhile(Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->dropWhile(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    instance-of v1, p1, Ljj$/util/stream/DoubleStream$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/util/stream/DoubleStream$VivifiedWrapper;

    iget-object p1, p1, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic filter(Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->filter(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic findAny()Ljj$/util/OptionalDouble;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->findAny()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalDouble;)Ljj$/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic findFirst()Ljj$/util/OptionalDouble;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->findFirst()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalDouble;)Ljj$/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic flatMap(Ljava/util/function/DoubleFunction;)Ljj$/util/stream/DoubleStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-static {p1}, Ljj$/util/stream/FlatMapApiFlips;->flipFunctionReturningStream(Ljava/util/function/DoubleFunction;)Ljava/util/function/DoubleFunction;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->flatMap(Ljava/util/function/DoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic forEach(Ljava/util/function/DoubleConsumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->forEach(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public synthetic forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->forEachOrdered(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isParallel()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->isParallel()Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljj$/util/PrimitiveIterator$OfDouble;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->iterator()Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/PrimitiveIterator$OfDouble$VivifiedWrapper;->convert(Ljava/util/PrimitiveIterator$OfDouble;)Ljj$/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic limit(J)Ljj$/util/stream/DoubleStream;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/DoubleStream;->limit(J)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic map(Ljava/util/function/DoubleUnaryOperator;)Ljj$/util/stream/DoubleStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljj$/util/stream/IntStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljj$/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToObj(Ljava/util/function/DoubleFunction;)Ljj$/util/stream/Stream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->mapToObj(Ljava/util/function/DoubleFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/Stream$VivifiedWrapper;->convert(Ljava/util/stream/Stream;)Ljj$/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic max()Ljj$/util/OptionalDouble;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->max()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalDouble;)Ljj$/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic min()Ljj$/util/OptionalDouble;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->min()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalDouble;)Ljj$/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic noneMatch(Ljava/util/function/DoublePredicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->noneMatch(Ljava/util/function/DoublePredicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/BaseStream$VivifiedWrapper;->convert(Ljava/util/stream/BaseStream;)Ljj$/util/stream/BaseStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic parallel()Ljj$/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$VivifiedWrapper;->convert(Ljava/util/stream/BaseStream;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parallel()Ljj$/util/stream/DoubleStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->parallel()Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic peek(Ljava/util/function/DoubleConsumer;)Ljj$/util/stream/DoubleStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->peek(Ljava/util/function/DoubleConsumer;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic reduce(DLjava/util/function/DoubleBinaryOperator;)D
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/stream/DoubleStream;->reduce(DLjava/util/function/DoubleBinaryOperator;)D

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic reduce(Ljava/util/function/DoubleBinaryOperator;)Ljj$/util/OptionalDouble;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalDouble;)Ljj$/util/OptionalDouble;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sequential()Ljj$/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$VivifiedWrapper;->convert(Ljava/util/stream/BaseStream;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic sequential()Ljj$/util/stream/DoubleStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic skip(J)Ljj$/util/stream/DoubleStream;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/DoubleStream;->skip(J)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sorted()Ljj$/util/stream/DoubleStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->sorted()Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljj$/util/Spliterator$OfDouble;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$OfDouble$VivifiedWrapper;->convert(Ljava/util/Spliterator$OfDouble;)Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$VivifiedWrapper;->convert(Ljava/util/Spliterator;)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic sum()D
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->sum()D

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic summaryStatistics()Ljj$/util/DoubleSummaryStatistics;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->summaryStatistics()Ljava/util/DoubleSummaryStatistics;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/DoubleSummaryStatisticsConversions;->convert(Ljava/util/DoubleSummaryStatistics;)Ljj$/util/DoubleSummaryStatistics;

    move-result-object v0

    return-object v0
.end method

.method public synthetic takeWhile(Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->takeWhile(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toArray()[D
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v0

    return-object v0
.end method

.method public synthetic unordered()Ljj$/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->unordered()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$VivifiedWrapper;->convert(Ljava/util/stream/BaseStream;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method
