.class interface abstract Ljj$/util/stream/Node;
.super Ljava/lang/Object;
.source "Node.java"


# virtual methods
.method public abstract asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
.end method

.method public abstract copyInto([Ljava/lang/Object;I)V
.end method

.method public abstract count()J
.end method

.method public abstract forEach(Ljava/util/function/Consumer;)V
.end method

.method public abstract getChild(I)Ljj$/util/stream/Node;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getShape()Ljj$/util/stream/StreamShape;
.end method

.method public abstract spliterator()Ljj$/util/Spliterator;
.end method

.method public abstract truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
.end method
