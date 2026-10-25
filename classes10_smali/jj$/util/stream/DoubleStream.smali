.class public interface abstract Ljj$/util/stream/DoubleStream;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Ljj$/util/stream/BaseStream;


# virtual methods
.method public abstract allMatch(Ljava/util/function/DoublePredicate;)Z
.end method

.method public abstract anyMatch(Ljava/util/function/DoublePredicate;)Z
.end method

.method public abstract average()Ljj$/util/OptionalDouble;
.end method

.method public abstract boxed()Ljj$/util/stream/Stream;
.end method

.method public abstract collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljj$/util/stream/DoubleStream;
.end method

.method public abstract dropWhile(Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;
.end method

.method public abstract filter(Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;
.end method

.method public abstract findAny()Ljj$/util/OptionalDouble;
.end method

.method public abstract findFirst()Ljj$/util/OptionalDouble;
.end method

.method public abstract flatMap(Ljava/util/function/DoubleFunction;)Ljj$/util/stream/DoubleStream;
.end method

.method public abstract forEach(Ljava/util/function/DoubleConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava/util/function/DoubleConsumer;)V
.end method

.method public abstract iterator()Ljj$/util/PrimitiveIterator$OfDouble;
.end method

.method public abstract limit(J)Ljj$/util/stream/DoubleStream;
.end method

.method public abstract map(Ljava/util/function/DoubleUnaryOperator;)Ljj$/util/stream/DoubleStream;
.end method

.method public abstract mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljj$/util/stream/IntStream;
.end method

.method public abstract mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljj$/util/stream/LongStream;
.end method

.method public abstract mapToObj(Ljava/util/function/DoubleFunction;)Ljj$/util/stream/Stream;
.end method

.method public abstract max()Ljj$/util/OptionalDouble;
.end method

.method public abstract min()Ljj$/util/OptionalDouble;
.end method

.method public abstract noneMatch(Ljava/util/function/DoublePredicate;)Z
.end method

.method public abstract parallel()Ljj$/util/stream/DoubleStream;
.end method

.method public abstract peek(Ljava/util/function/DoubleConsumer;)Ljj$/util/stream/DoubleStream;
.end method

.method public abstract reduce(DLjava/util/function/DoubleBinaryOperator;)D
.end method

.method public abstract reduce(Ljava/util/function/DoubleBinaryOperator;)Ljj$/util/OptionalDouble;
.end method

.method public abstract sequential()Ljj$/util/stream/DoubleStream;
.end method

.method public abstract skip(J)Ljj$/util/stream/DoubleStream;
.end method

.method public abstract sorted()Ljj$/util/stream/DoubleStream;
.end method

.method public abstract spliterator()Ljj$/util/Spliterator$OfDouble;
.end method

.method public abstract sum()D
.end method

.method public abstract summaryStatistics()Ljj$/util/DoubleSummaryStatistics;
.end method

.method public abstract takeWhile(Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;
.end method

.method public abstract toArray()[D
.end method
