.class public interface abstract Ljj$/util/stream/IntStream;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljj$/util/stream/BaseStream;


# virtual methods
.method public abstract allMatch(Ljava/util/function/IntPredicate;)Z
.end method

.method public abstract anyMatch(Ljava/util/function/IntPredicate;)Z
.end method

.method public abstract asDoubleStream()Ljj$/util/stream/DoubleStream;
.end method

.method public abstract asLongStream()Ljj$/util/stream/LongStream;
.end method

.method public abstract average()Ljj$/util/OptionalDouble;
.end method

.method public abstract boxed()Ljj$/util/stream/Stream;
.end method

.method public abstract collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljj$/util/stream/IntStream;
.end method

.method public abstract dropWhile(Ljava/util/function/IntPredicate;)Ljj$/util/stream/IntStream;
.end method

.method public abstract filter(Ljava/util/function/IntPredicate;)Ljj$/util/stream/IntStream;
.end method

.method public abstract findAny()Ljj$/util/OptionalInt;
.end method

.method public abstract findFirst()Ljj$/util/OptionalInt;
.end method

.method public abstract flatMap(Ljava/util/function/IntFunction;)Ljj$/util/stream/IntStream;
.end method

.method public abstract forEach(Ljava/util/function/IntConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava/util/function/IntConsumer;)V
.end method

.method public abstract iterator()Ljj$/util/PrimitiveIterator$OfInt;
.end method

.method public abstract limit(J)Ljj$/util/stream/IntStream;
.end method

.method public abstract map(Ljava/util/function/IntUnaryOperator;)Ljj$/util/stream/IntStream;
.end method

.method public abstract mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljj$/util/stream/DoubleStream;
.end method

.method public abstract mapToLong(Ljava/util/function/IntToLongFunction;)Ljj$/util/stream/LongStream;
.end method

.method public abstract mapToObj(Ljava/util/function/IntFunction;)Ljj$/util/stream/Stream;
.end method

.method public abstract max()Ljj$/util/OptionalInt;
.end method

.method public abstract min()Ljj$/util/OptionalInt;
.end method

.method public abstract noneMatch(Ljava/util/function/IntPredicate;)Z
.end method

.method public abstract parallel()Ljj$/util/stream/IntStream;
.end method

.method public abstract peek(Ljava/util/function/IntConsumer;)Ljj$/util/stream/IntStream;
.end method

.method public abstract reduce(ILjava/util/function/IntBinaryOperator;)I
.end method

.method public abstract reduce(Ljava/util/function/IntBinaryOperator;)Ljj$/util/OptionalInt;
.end method

.method public abstract sequential()Ljj$/util/stream/IntStream;
.end method

.method public abstract skip(J)Ljj$/util/stream/IntStream;
.end method

.method public abstract sorted()Ljj$/util/stream/IntStream;
.end method

.method public abstract spliterator()Ljj$/util/Spliterator$OfInt;
.end method

.method public abstract sum()I
.end method

.method public abstract summaryStatistics()Ljj$/util/IntSummaryStatistics;
.end method

.method public abstract takeWhile(Ljava/util/function/IntPredicate;)Ljj$/util/stream/IntStream;
.end method

.method public abstract toArray()[I
.end method
