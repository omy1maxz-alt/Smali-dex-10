.class public final synthetic Ljj$/util/stream/LongStream$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/util/stream/LongStream;


# instance fields
.field public final synthetic wrappedValue:Ljava/util/stream/LongStream;


# direct methods
.method private synthetic constructor <init>(Ljava/util/stream/LongStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    return-void
.end method

.method public static synthetic convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/util/stream/LongStream$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/util/stream/LongStream$Wrapper;

    iget-object p0, p0, Ljj$/util/stream/LongStream$Wrapper;->wrappedValue:Ljj$/util/stream/LongStream;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/util/stream/LongStream$VivifiedWrapper;

    invoke-direct {v0, p0}, Ljj$/util/stream/LongStream$VivifiedWrapper;-><init>(Ljava/util/stream/LongStream;)V

    return-object v0
.end method


# virtual methods
.method public synthetic allMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->allMatch(Ljava/util/function/LongPredicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic anyMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->anyMatch(Ljava/util/function/LongPredicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic asDoubleStream()Ljj$/util/stream/DoubleStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->asDoubleStream()Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic average()Ljj$/util/OptionalDouble;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->average()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalDouble;)Ljj$/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic boxed()Ljj$/util/stream/Stream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Stream$VivifiedWrapper;->convert(Ljava/util/stream/Stream;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic close()V
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method

.method public synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/stream/LongStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic count()J
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic distinct()Ljj$/util/stream/LongStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->distinct()Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic dropWhile(Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->dropWhile(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    instance-of v1, p1, Ljj$/util/stream/LongStream$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/util/stream/LongStream$VivifiedWrapper;

    iget-object p1, p1, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic filter(Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->filter(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic findAny()Ljj$/util/OptionalLong;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->findAny()Ljava/util/OptionalLong;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalLong;)Ljj$/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic findFirst()Ljj$/util/OptionalLong;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->findFirst()Ljava/util/OptionalLong;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalLong;)Ljj$/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic flatMap(Ljava/util/function/LongFunction;)Ljj$/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-static {p1}, Ljj$/util/stream/FlatMapApiFlips;->flipFunctionReturningStream(Ljava/util/function/LongFunction;)Ljava/util/function/LongFunction;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->flatMap(Ljava/util/function/LongFunction;)Ljava/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic forEach(Ljava/util/function/LongConsumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic forEachOrdered(Ljava/util/function/LongConsumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->forEachOrdered(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isParallel()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->isParallel()Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljj$/util/PrimitiveIterator$OfLong;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->iterator()Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/PrimitiveIterator$OfLong$VivifiedWrapper;->convert(Ljava/util/PrimitiveIterator$OfLong;)Ljj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic limit(J)Ljj$/util/stream/LongStream;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/LongStream;->limit(J)Ljava/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic map(Ljava/util/function/LongUnaryOperator;)Ljj$/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljj$/util/stream/DoubleStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToInt(Ljava/util/function/LongToIntFunction;)Ljj$/util/stream/IntStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->mapToInt(Ljava/util/function/LongToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToObj(Ljava/util/function/LongFunction;)Ljj$/util/stream/Stream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/Stream$VivifiedWrapper;->convert(Ljava/util/stream/Stream;)Ljj$/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic max()Ljj$/util/OptionalLong;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->max()Ljava/util/OptionalLong;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalLong;)Ljj$/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic min()Ljj$/util/OptionalLong;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->min()Ljava/util/OptionalLong;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalLong;)Ljj$/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic noneMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->noneMatch(Ljava/util/function/LongPredicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/BaseStream$VivifiedWrapper;->convert(Ljava/util/stream/BaseStream;)Ljj$/util/stream/BaseStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic parallel()Ljj$/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$VivifiedWrapper;->convert(Ljava/util/stream/BaseStream;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parallel()Ljj$/util/stream/LongStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->parallel()Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic peek(Ljava/util/function/LongConsumer;)Ljj$/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->peek(Ljava/util/function/LongConsumer;)Ljava/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic reduce(JLjava/util/function/LongBinaryOperator;)J
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/stream/LongStream;->reduce(JLjava/util/function/LongBinaryOperator;)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic reduce(Ljava/util/function/LongBinaryOperator;)Ljj$/util/OptionalLong;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/OptionalConversions;->convert(Ljava/util/OptionalLong;)Ljj$/util/OptionalLong;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sequential()Ljj$/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$VivifiedWrapper;->convert(Ljava/util/stream/BaseStream;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic sequential()Ljj$/util/stream/LongStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic skip(J)Ljj$/util/stream/LongStream;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/LongStream;->skip(J)Ljava/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sorted()Ljj$/util/stream/LongStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->sorted()Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljj$/util/Spliterator$OfLong;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$OfLong$VivifiedWrapper;->convert(Ljava/util/Spliterator$OfLong;)Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$VivifiedWrapper;->convert(Ljava/util/Spliterator;)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic sum()J
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic summaryStatistics()Ljj$/util/LongSummaryStatistics;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->summaryStatistics()Ljava/util/LongSummaryStatistics;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/LongSummaryStatisticsConversions;->convert(Ljava/util/LongSummaryStatistics;)Ljj$/util/LongSummaryStatistics;

    move-result-object v0

    return-object v0
.end method

.method public synthetic takeWhile(Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0, p1}, Ljava/util/stream/LongStream;->takeWhile(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toArray()[J
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v0

    return-object v0
.end method

.method public synthetic unordered()Ljj$/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/LongStream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->unordered()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$VivifiedWrapper;->convert(Ljava/util/stream/BaseStream;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method
