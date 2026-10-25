.class final Lokin/RealBufferedSink;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lokin/BufferedSink;


# instance fields
.field public final buffer:Lokin/Buffer;

.field closed:Z

.field public final sink:Lokin/Sink;


# direct methods
.method constructor <init>(Lokin/Sink;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokin/Buffer;

    invoke-direct {v0}, Lokin/Buffer;-><init>()V

    iput-object v0, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    const-string/jumbo v0, "sink == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lokin/RealBufferedSink;->sink:Lokin/Sink;

    return-void
.end method


# virtual methods
.method public buffer()Lokin/Buffer;
    .registers 2

    iget-object v0, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    return-object v0
.end method

.method public close()V
    .registers 8

    iget-boolean v0, p0, Lokin/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    iget-wide v2, v1, Lokin/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_17

    iget-object v4, p0, Lokin/RealBufferedSink;->sink:Lokin/Sink;

    invoke-interface {v4, v1, v2, v3}, Lokin/Sink;->write(Lokin/Buffer;J)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    goto :goto_17

    :catchall_16
    move-exception v0

    :cond_17
    :goto_17
    :try_start_17
    iget-object v1, p0, Lokin/RealBufferedSink;->sink:Lokin/Sink;

    invoke-interface {v1}, Lokin/Sink;->close()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v1

    if-nez v0, :cond_21

    move-object v0, v1

    :cond_21
    :goto_21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokin/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_29

    invoke-static {v0}, Lokin/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_29
    return-void
.end method

.method public emitCompleteSegments()Lokin/BufferedSink;
    .registers 6

    iget-boolean v0, p0, Lokin/RealBufferedSink;->closed:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->completeSegmentByteCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    iget-object v2, p0, Lokin/RealBufferedSink;->sink:Lokin/Sink;

    iget-object v3, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lokin/Sink;->write(Lokin/Buffer;J)V

    :cond_17
    return-object p0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 7

    iget-boolean v0, p0, Lokin/RealBufferedSink;->closed:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    iget-wide v1, v0, Lokin/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_13

    iget-object v3, p0, Lokin/RealBufferedSink;->sink:Lokin/Sink;

    invoke-interface {v3, v0, v1, v2}, Lokin/Sink;->write(Lokin/Buffer;J)V

    :cond_13
    iget-object v0, p0, Lokin/RealBufferedSink;->sink:Lokin/Sink;

    invoke-interface {v0}, Lokin/Sink;->flush()V

    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .registers 2

    iget-boolean v0, p0, Lokin/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public timeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokin/RealBufferedSink;->sink:Lokin/Sink;

    invoke-interface {v0}, Lokin/Sink;->timeout()Lokin/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokin/RealBufferedSink;->sink:Lokin/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 3

    iget-boolean v0, p0, Lokin/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1}, Lokin/Buffer;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, Lokin/RealBufferedSink;->emitCompleteSegments()Lokin/BufferedSink;

    return p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)Lokin/BufferedSink;
    .registers 3

    iget-boolean v0, p0, Lokin/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1}, Lokin/Buffer;->write([B)Lokin/Buffer;

    invoke-virtual {p0}, Lokin/RealBufferedSink;->emitCompleteSegments()Lokin/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lokin/BufferedSink;
    .registers 5

    iget-boolean v0, p0, Lokin/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokin/Buffer;->write([BII)Lokin/Buffer;

    invoke-virtual {p0}, Lokin/RealBufferedSink;->emitCompleteSegments()Lokin/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lokin/Buffer;J)V
    .registers 5

    iget-boolean v0, p0, Lokin/RealBufferedSink;->closed:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokin/Buffer;->write(Lokin/Buffer;J)V

    invoke-virtual {p0}, Lokin/RealBufferedSink;->emitCompleteSegments()Lokin/BufferedSink;

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByte(I)Lokin/BufferedSink;
    .registers 3

    iget-boolean v0, p0, Lokin/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    invoke-virtual {p0}, Lokin/RealBufferedSink;->emitCompleteSegments()Lokin/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeDecimalLong(J)Lokin/BufferedSink;
    .registers 4

    iget-boolean v0, p0, Lokin/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1, p2}, Lokin/Buffer;->writeDecimalLong(J)Lokin/Buffer;

    invoke-virtual {p0}, Lokin/RealBufferedSink;->emitCompleteSegments()Lokin/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lokin/BufferedSink;
    .registers 4

    iget-boolean v0, p0, Lokin/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1, p2}, Lokin/Buffer;->writeHexadecimalUnsignedLong(J)Lokin/Buffer;

    invoke-virtual {p0}, Lokin/RealBufferedSink;->emitCompleteSegments()Lokin/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt(I)Lokin/BufferedSink;
    .registers 3

    iget-boolean v0, p0, Lokin/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1}, Lokin/Buffer;->writeInt(I)Lokin/Buffer;

    invoke-virtual {p0}, Lokin/RealBufferedSink;->emitCompleteSegments()Lokin/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShort(I)Lokin/BufferedSink;
    .registers 3

    iget-boolean v0, p0, Lokin/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1}, Lokin/Buffer;->writeShort(I)Lokin/Buffer;

    invoke-virtual {p0}, Lokin/RealBufferedSink;->emitCompleteSegments()Lokin/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;
    .registers 3

    iget-boolean v0, p0, Lokin/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lokin/RealBufferedSink;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1}, Lokin/Buffer;->writeUtf8(Ljava/lang/String;)Lokin/Buffer;

    invoke-virtual {p0}, Lokin/RealBufferedSink;->emitCompleteSegments()Lokin/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
