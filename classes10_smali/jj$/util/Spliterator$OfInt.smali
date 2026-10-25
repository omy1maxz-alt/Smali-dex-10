.class public interface abstract Ljj$/util/Spliterator$OfInt;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljj$/util/Spliterator$OfPrimitive;


# virtual methods
.method public abstract forEachRemaining(Ljava/util/function/Consumer;)V
.end method

.method public abstract forEachRemaining(Ljava/util/function/IntConsumer;)V
.end method

.method public abstract tryAdvance(Ljava/util/function/Consumer;)Z
.end method

.method public abstract tryAdvance(Ljava/util/function/IntConsumer;)Z
.end method

.method public abstract trySplit()Ljj$/util/Spliterator$OfInt;
.end method
