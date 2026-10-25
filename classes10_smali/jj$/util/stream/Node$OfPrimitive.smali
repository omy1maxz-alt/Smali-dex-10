.class public interface abstract Ljj$/util/stream/Node$OfPrimitive;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljj$/util/stream/Node;


# virtual methods
.method public abstract asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
.end method

.method public abstract asPrimitiveArray()Ljava/lang/Object;
.end method

.method public abstract copyInto(Ljava/lang/Object;I)V
.end method

.method public abstract forEach(Ljava/lang/Object;)V
.end method

.method public abstract getChild(I)Ljj$/util/stream/Node$OfPrimitive;
.end method

.method public abstract newArray(I)Ljava/lang/Object;
.end method

.method public abstract spliterator()Ljj$/util/Spliterator$OfPrimitive;
.end method

.method public abstract truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfPrimitive;
.end method
