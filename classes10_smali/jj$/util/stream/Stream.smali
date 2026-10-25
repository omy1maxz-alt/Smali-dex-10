.class public interface abstract Ljj$/util/stream/Stream;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljj$/util/stream/BaseStream;


# virtual methods
.method public abstract allMatch(Ljava/util/function/Predicate;)Z
.end method

.method public abstract anyMatch(Ljava/util/function/Predicate;)Z
.end method

.method public abstract collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
.end method

.method public abstract collect(Ljj$/util/stream/Collector;)Ljava/lang/Object;
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljj$/util/stream/Stream;
.end method

.method public abstract dropWhile(Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;
.end method

.method public abstract filter(Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;
.end method

.method public abstract findAny()Ljj$/util/Optional;
.end method

.method public abstract findFirst()Ljj$/util/Optional;
.end method

.method public abstract flatMap(Ljava/util/function/Function;)Ljj$/util/stream/Stream;
.end method

.method public abstract flatMapToDouble(Ljava/util/function/Function;)Ljj$/util/stream/DoubleStream;
.end method

.method public abstract flatMapToInt(Ljava/util/function/Function;)Ljj$/util/stream/IntStream;
.end method

.method public abstract flatMapToLong(Ljava/util/function/Function;)Ljj$/util/stream/LongStream;
.end method

.method public abstract forEach(Ljava/util/function/Consumer;)V
.end method

.method public abstract forEachOrdered(Ljava/util/function/Consumer;)V
.end method

.method public abstract limit(J)Ljj$/util/stream/Stream;
.end method

.method public abstract map(Ljava/util/function/Function;)Ljj$/util/stream/Stream;
.end method

.method public abstract mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljj$/util/stream/DoubleStream;
.end method

.method public abstract mapToInt(Ljava/util/function/ToIntFunction;)Ljj$/util/stream/IntStream;
.end method

.method public abstract mapToLong(Ljava/util/function/ToLongFunction;)Ljj$/util/stream/LongStream;
.end method

.method public abstract max(Ljava/util/Comparator;)Ljj$/util/Optional;
.end method

.method public abstract min(Ljava/util/Comparator;)Ljj$/util/Optional;
.end method

.method public abstract noneMatch(Ljava/util/function/Predicate;)Z
.end method

.method public abstract peek(Ljava/util/function/Consumer;)Ljj$/util/stream/Stream;
.end method

.method public abstract reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
.end method

.method public abstract reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
.end method

.method public abstract reduce(Ljava/util/function/BinaryOperator;)Ljj$/util/Optional;
.end method

.method public abstract skip(J)Ljj$/util/stream/Stream;
.end method

.method public abstract sorted()Ljj$/util/stream/Stream;
.end method

.method public abstract sorted(Ljava/util/Comparator;)Ljj$/util/stream/Stream;
.end method

.method public abstract takeWhile(Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;
.end method

.method public abstract toArray()[Ljava/lang/Object;
.end method

.method public abstract toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
.end method

.method public abstract toList()Ljava/util/List;
.end method
