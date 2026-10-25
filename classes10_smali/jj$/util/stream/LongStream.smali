.class public interface abstract Ljj$/util/stream/LongStream;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljj$/util/stream/BaseStream;


# virtual methods
.method public abstract allMatch(Ljava/util/function/LongPredicate;)Z
.end method

.method public abstract anyMatch(Ljava/util/function/LongPredicate;)Z
.end method

.method public abstract asDoubleStream()Ljj$/util/stream/DoubleStream;
.end method

.method public abstract average()Ljj$/util/OptionalDouble;
.end method

.method public abstract boxed()Ljj$/util/stream/Stream;
.end method

.method public abstract collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljj$/util/stream/LongStream;
.end method

.method public abstract dropWhile(Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;
.end method

.method public abstract filter(Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;
.end method

.method public abstract findAny()Ljj$/util/OptionalLong;
.end method

.method public abstract findFirst()Ljj$/util/OptionalLong;
.end method

.method public abstract flatMap(Ljava/util/function/LongFunction;)Ljj$/util/stream/LongStream;
.end method

.method public abstract forEach(Ljava/util/function/LongConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava/util/function/LongConsumer;)V
.end method

.method public abstract iterator()Ljj$/util/PrimitiveIterator$OfLong;
.end method

.method public abstract limit(J)Ljj$/util/stream/LongStream;
.end method

.method public abstract map(Ljava/util/function/LongUnaryOperator;)Ljj$/util/stream/LongStream;
.end method

.method public abstract mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljj$/util/stream/DoubleStream;
.end method

.method public abstract mapToInt(Ljava/util/function/LongToIntFunction;)Ljj$/util/stream/IntStream;
.end method

.method public abstract mapToObj(Ljava/util/function/LongFunction;)Ljj$/util/stream/Stream;
.end method

.method public abstract max()Ljj$/util/OptionalLong;
.end method

.method public abstract min()Ljj$/util/OptionalLong;
.end method

.method public abstract noneMatch(Ljava/util/function/LongPredicate;)Z
.end method

.method public abstract parallel()Ljj$/util/stream/LongStream;
.end method

.method public abstract peek(Ljava/util/function/LongConsumer;)Ljj$/util/stream/LongStream;
.end method

.method public abstract reduce(JLjava/util/function/LongBinaryOperator;)J
.end method

.method public abstract reduce(Ljava/util/function/LongBinaryOperator;)Ljj$/util/OptionalLong;
.end method

.method public abstract sequential()Ljj$/util/stream/LongStream;
.end method

.method public abstract skip(J)Ljj$/util/stream/LongStream;
.end method

.method public abstract sorted()Ljj$/util/stream/LongStream;
.end method

.method public abstract spliterator()Ljj$/util/Spliterator$OfLong;
.end method

.method public abstract sum()J
.end method

.method public abstract summaryStatistics()Ljj$/util/LongSummaryStatistics;
.end method

.method public abstract takeWhile(Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;
.end method

.method public abstract toArray()[J
.end method
