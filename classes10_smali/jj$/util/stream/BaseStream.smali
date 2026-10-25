.class public interface abstract Ljj$/util/stream/BaseStream;
.super Ljava/lang/Object;
.source "BaseStream.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract isParallel()Z
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public abstract onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;
.end method

.method public abstract parallel()Ljj$/util/stream/BaseStream;
.end method

.method public abstract sequential()Ljj$/util/stream/BaseStream;
.end method

.method public abstract spliterator()Ljj$/util/Spliterator;
.end method

.method public abstract unordered()Ljj$/util/stream/BaseStream;
.end method
