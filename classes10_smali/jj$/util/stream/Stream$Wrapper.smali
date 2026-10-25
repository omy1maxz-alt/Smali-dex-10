.class public final synthetic Ljj$/util/stream/Stream$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/stream/Stream;


# instance fields
.field public final synthetic wrappedValue:Ljj$/util/stream/Stream;


# direct methods
.method private synthetic constructor <init>(Ljj$/util/stream/Stream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    return-void
.end method

.method public static synthetic convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/util/stream/Stream$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/util/stream/Stream$VivifiedWrapper;

    iget-object p0, p0, Ljj$/util/stream/Stream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/Stream;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/util/stream/Stream$Wrapper;

    invoke-direct {v0, p0}, Ljj$/util/stream/Stream$Wrapper;-><init>(Ljj$/util/stream/Stream;)V

    return-object v0
.end method


# virtual methods
.method public synthetic allMatch(Ljava/util/function/Predicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic anyMatch(Ljava/util/function/Predicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic close()V
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0}, Ljj$/util/stream/BaseStream;->close()V

    return-void
.end method

.method public synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1, p2, p3}, Ljj$/util/stream/Stream;->collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic collect(Ljava/util/stream/Collector;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-static {p1}, Ljj$/util/stream/Collector$VivifiedWrapper;->convert(Ljava/util/stream/Collector;)Ljj$/util/stream/Collector;

    move-result-object p1

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->collect(Ljj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic count()J
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0}, Ljj$/util/stream/Stream;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic distinct()Ljava/util/stream/Stream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0}, Ljj$/util/stream/Stream;->distinct()Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic dropWhile(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->dropWhile(Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    instance-of v1, p1, Ljj$/util/stream/Stream$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/util/stream/Stream$Wrapper;

    iget-object p1, p1, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic findAny()Ljava/util/Optional;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0}, Ljj$/util/stream/Stream;->findAny()Ljj$/util/Optional;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljj$/util/Optional;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public synthetic findFirst()Ljava/util/Optional;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0}, Ljj$/util/stream/Stream;->findFirst()Ljj$/util/Optional;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/OptionalConversions;->convert(Ljj$/util/Optional;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public synthetic flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-static {p1}, Ljj$/util/stream/FlatMapApiFlips;->flipFunctionReturningStream(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic flatMapToDouble(Ljava/util/function/Function;)Ljava/util/stream/DoubleStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-static {p1}, Ljj$/util/stream/FlatMapApiFlips;->flipFunctionReturningStream(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->flatMapToDouble(Ljava/util/function/Function;)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$Wrapper;->convert(Ljj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic flatMapToInt(Ljava/util/function/Function;)Ljava/util/stream/IntStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-static {p1}, Ljj$/util/stream/FlatMapApiFlips;->flipFunctionReturningStream(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->flatMapToInt(Ljava/util/function/Function;)Ljj$/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$Wrapper;->convert(Ljj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic flatMapToLong(Ljava/util/function/Function;)Ljava/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-static {p1}, Ljj$/util/stream/FlatMapApiFlips;->flipFunctionReturningStream(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->flatMapToLong(Ljava/util/function/Function;)Ljj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic forEach(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachOrdered(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isParallel()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0}, Ljj$/util/stream/BaseStream;->isParallel()Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0}, Ljj$/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic limit(J)Ljava/util/stream/Stream;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/Stream;->limit(J)Ljj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic map(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->map(Ljava/util/function/Function;)Ljj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$Wrapper;->convert(Ljj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljj$/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$Wrapper;->convert(Ljj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic max(Ljava/util/Comparator;)Ljava/util/Optional;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->max(Ljava/util/Comparator;)Ljj$/util/Optional;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/OptionalConversions;->convert(Ljj$/util/Optional;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public synthetic min(Ljava/util/Comparator;)Ljava/util/Optional;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->min(Ljava/util/Comparator;)Ljj$/util/Optional;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/OptionalConversions;->convert(Ljj$/util/Optional;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public synthetic noneMatch(Ljava/util/function/Predicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/BaseStream$Wrapper;->convert(Ljj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic parallel()Ljava/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0}, Ljj$/util/stream/BaseStream;->parallel()Ljj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$Wrapper;->convert(Ljj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1, p2, p3}, Ljj$/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljj$/util/Optional;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/OptionalConversions;->convert(Ljj$/util/Optional;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sequential()Ljava/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0}, Ljj$/util/stream/BaseStream;->sequential()Ljj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$Wrapper;->convert(Ljj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic skip(J)Ljava/util/stream/Stream;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/Stream;->skip(J)Ljj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sorted()Ljava/util/stream/Stream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0}, Ljj$/util/stream/Stream;->sorted()Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0}, Ljj$/util/stream/BaseStream;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$Wrapper;->convert(Ljj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic takeWhile(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->takeWhile(Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toArray()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0}, Ljj$/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0}, Ljj$/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic unordered()Ljava/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Stream$Wrapper;->wrappedValue:Ljj$/util/stream/Stream;

    invoke-interface {v0}, Ljj$/util/stream/BaseStream;->unordered()Ljj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/BaseStream$Wrapper;->convert(Ljj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method
