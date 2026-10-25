.class public interface abstract Ljj$/util/Spliterator;
.super Ljava/lang/Object;
.source "Spliterator.java"


# static fields
.field public static final CONCURRENT:I = 0x1000

.field public static final DISTINCT:I = 0x1

.field public static final IMMUTABLE:I = 0x400

.field public static final NONNULL:I = 0x100

.field public static final ORDERED:I = 0x10

.field public static final SIZED:I = 0x40

.field public static final SORTED:I = 0x4

.field public static final SUBSIZED:I = 0x4000


# virtual methods
.method public abstract characteristics()I
.end method

.method public abstract estimateSize()J
.end method

.method public abstract forEachRemaining(Ljava/util/function/Consumer;)V
.end method

.method public abstract getComparator()Ljava/util/Comparator;
.end method

.method public abstract getExactSizeIfKnown()J
.end method

.method public abstract hasCharacteristics(I)Z
.end method

.method public abstract tryAdvance(Ljava/util/function/Consumer;)Z
.end method

.method public abstract trySplit()Ljj$/util/Spliterator;
.end method
