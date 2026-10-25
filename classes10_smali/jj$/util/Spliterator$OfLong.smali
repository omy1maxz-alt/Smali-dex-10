.class public interface abstract Ljj$/util/Spliterator$OfLong;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljj$/util/Spliterator$OfPrimitive;


# virtual methods
.method public abstract forEachRemaining(Ljava/util/function/Consumer;)V
.end method

.method public abstract forEachRemaining(Ljava/util/function/LongConsumer;)V
.end method

.method public abstract tryAdvance(Ljava/util/function/Consumer;)Z
.end method

.method public abstract tryAdvance(Ljava/util/function/LongConsumer;)Z
.end method

.method public abstract trySplit()Ljj$/util/Spliterator$OfLong;
.end method
