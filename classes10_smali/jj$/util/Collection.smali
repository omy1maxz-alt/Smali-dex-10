.class public interface abstract Ljj$/util/Collection;
.super Ljava/lang/Object;
.source "Collection.java"

# interfaces
.implements Ljj$/lang/Iterable;


# virtual methods
.method public abstract forEach(Ljava/util/function/Consumer;)V
.end method

.method public abstract parallelStream()Ljj$/util/stream/Stream;
.end method

.method public abstract removeIf(Ljava/util/function/Predicate;)Z
.end method

.method public abstract spliterator()Ljj$/util/Spliterator;
.end method

.method public abstract stream()Ljj$/util/stream/Stream;
.end method

.method public abstract toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
.end method
