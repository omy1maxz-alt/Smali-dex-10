.class public interface abstract Ljj$/util/concurrent/ConcurrentMap;
.super Ljava/lang/Object;
.source "ConcurrentMap.java"

# interfaces
.implements Ljj$/util/Map;


# virtual methods
.method public abstract compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
.end method

.method public abstract computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
.end method

.method public abstract computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
.end method

.method public abstract forEach(Ljava/util/function/BiConsumer;)V
.end method

.method public abstract getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
.end method

.method public abstract replaceAll(Ljava/util/function/BiFunction;)V
.end method
