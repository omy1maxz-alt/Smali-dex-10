.class public interface abstract Lokin/Sink;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public abstract timeout()Lokin/Timeout;
.end method

.method public abstract write(Lokin/Buffer;J)V
.end method
