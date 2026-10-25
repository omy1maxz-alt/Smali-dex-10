.class public interface abstract Ljj$/util/stream/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# virtual methods
.method public abstract accumulator()Ljava/util/function/BiConsumer;
.end method

.method public abstract characteristics()Ljava/util/Set;
.end method

.method public abstract combiner()Ljava/util/function/BinaryOperator;
.end method

.method public abstract finisher()Ljava/util/function/Function;
.end method

.method public abstract supplier()Ljava/util/function/Supplier;
.end method
