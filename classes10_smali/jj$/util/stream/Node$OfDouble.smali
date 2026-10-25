.class public interface abstract Ljj$/util/stream/Node$OfDouble;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljj$/util/stream/Node$OfPrimitive;


# virtual methods
.method public abstract copyInto([Ljava/lang/Double;I)V
.end method

.method public abstract forEach(Ljava/util/function/Consumer;)V
.end method

.method public abstract getShape()Ljj$/util/stream/StreamShape;
.end method

.method public abstract newArray(I)[D
.end method

.method public abstract truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node$OfDouble;
.end method
