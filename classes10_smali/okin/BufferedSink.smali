.class public interface abstract Lokin/BufferedSink;
.super Ljava/lang/Object;
.source "BufferedSink.java"

# interfaces
.implements Lokin/Sink;
.implements Ljava/nio/channels/WritableByteChannel;


# virtual methods
.method public abstract buffer()Lokin/Buffer;
.end method

.method public abstract emitCompleteSegments()Lokin/BufferedSink;
.end method

.method public abstract flush()V
.end method

.method public abstract write([B)Lokin/BufferedSink;
.end method

.method public abstract write([BII)Lokin/BufferedSink;
.end method

.method public abstract writeByte(I)Lokin/BufferedSink;
.end method

.method public abstract writeDecimalLong(J)Lokin/BufferedSink;
.end method

.method public abstract writeHexadecimalUnsignedLong(J)Lokin/BufferedSink;
.end method

.method public abstract writeInt(I)Lokin/BufferedSink;
.end method

.method public abstract writeShort(I)Lokin/BufferedSink;
.end method

.method public abstract writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;
.end method
