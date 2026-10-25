.class final Lokin/RealBufferedSource;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lokin/BufferedSource;


# instance fields
.field public final buffer:Lokin/Buffer;

.field closed:Z

.field public final source:Lokin/Source;


# direct methods
.method constructor <init>(Lokin/Source;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokin/Buffer;

    invoke-direct {v0}, Lokin/Buffer;-><init>()V

    iput-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    const-string/jumbo v0, "source == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lokin/RealBufferedSource;->source:Lokin/Source;

    return-void
.end method


# virtual methods
.method public buffer()Lokin/Buffer;
    .registers 2

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    return-object v0
.end method

.method public close()V
    .registers 2

    iget-boolean v0, p0, Lokin/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokin/RealBufferedSource;->closed:Z

    iget-object v0, p0, Lokin/RealBufferedSource;->source:Lokin/Source;

    invoke-interface {v0}, Lokin/Source;->close()V

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->clear()V

    return-void
.end method

.method public exhausted()Z
    .registers 6

    iget-boolean v0, p0, Lokin/RealBufferedSource;->closed:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lokin/RealBufferedSource;->source:Lokin/Source;

    iget-object v1, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(B)J
    .registers 8

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lokin/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .registers 15

    iget-boolean v0, p0, Lokin/RealBufferedSource;->closed:Z

    if-nez v0, :cond_5a

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3d

    cmp-long v0, p4, p2

    if-ltz v0, :cond_3d

    :goto_e
    const-wide/16 v7, -0x1

    cmp-long v0, p2, p4

    if-gez v0, :cond_3c

    iget-object v1, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lokin/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_22

    return-wide v0

    :cond_22
    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    iget-wide v1, v0, Lokin/Buffer;->size:J

    cmp-long v3, v1, p4

    if-gez v3, :cond_3c

    iget-object v3, p0, Lokin/RealBufferedSource;->source:Lokin/Source;

    const-wide/16 v4, 0x2000

    invoke-interface {v3, v0, v4, v5}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_37

    goto :goto_3c

    :cond_37
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_e

    :cond_3c
    :goto_3c
    return-wide v7

    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "fromIndex=%s toIndex=%s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_63

    :goto_62
    throw p1

    :goto_63
    goto :goto_62
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Lokin/RealBufferedSource$1;

    invoke-direct {v0, p0}, Lokin/RealBufferedSource$1;-><init>(Lokin/RealBufferedSource;)V

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    iget-boolean v0, p0, Lokin/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public rangeEquals(JLokin/ByteString;)Z
    .registers 10

    invoke-virtual {p3}, Lokin/ByteString;->size()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lokin/RealBufferedSource;->rangeEquals(JLokin/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(JLokin/ByteString;II)Z
    .registers 13

    iget-boolean v0, p0, Lokin/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3b

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_3a

    if-ltz p4, :cond_3a

    if-ltz p5, :cond_3a

    invoke-virtual {p3}, Lokin/ByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_17

    goto :goto_3a

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-ge v0, p5, :cond_38

    int-to-long v3, v0

    add-long/2addr v3, p1

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lokin/RealBufferedSource;->request(J)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v1, v3, v4}, Lokin/Buffer;->getByte(J)B

    move-result v1

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Lokin/ByteString;->getByte(I)B

    move-result v3

    if-eq v1, v3, :cond_35

    return v2

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_38
    const/4 p1, 0x1

    return p1

    :cond_3a
    :goto_3a
    return v2

    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_44

    :goto_43
    throw p1

    :goto_44
    goto :goto_43
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 8

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    iget-wide v1, v0, Lokin/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1a

    iget-object v1, p0, Lokin/RealBufferedSource;->source:Lokin/Source;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1a

    const/4 p1, -0x1

    return p1

    :cond_1a
    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1}, Lokin/Buffer;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public read(Lokin/Buffer;J)J
    .registers 10

    if-eqz p1, :cond_51

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3a

    iget-boolean v2, p0, Lokin/RealBufferedSource;->closed:Z

    if-nez v2, :cond_32

    iget-object v2, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    iget-wide v3, v2, Lokin/Buffer;->size:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_23

    iget-object v0, p0, Lokin/RealBufferedSource;->source:Lokin/Source;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_23

    return-wide v2

    :cond_23
    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    iget-wide v0, v0, Lokin/Buffer;->size:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokin/Buffer;->read(Lokin/Buffer;J)J

    move-result-wide p1

    return-wide p1

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .registers 3

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokin/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readByteArray()[B
    .registers 3

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    iget-object v1, p0, Lokin/RealBufferedSource;->source:Lokin/Source;

    invoke-virtual {v0, v1}, Lokin/Buffer;->writeAll(Lokin/Source;)J

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .registers 4

    invoke-virtual {p0, p1, p2}, Lokin/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1, p2}, Lokin/Buffer;->readByteArray(J)[B

    move-result-object p1

    return-object p1
.end method

.method public readByteString(J)Lokin/ByteString;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lokin/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1, p2}, Lokin/Buffer;->readByteString(J)Lokin/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public readDecimalLong()J
    .registers 7

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokin/RealBufferedSource;->require(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lokin/RealBufferedSource;->request(J)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lokin/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1f

    const/16 v4, 0x39

    if-le v3, v4, :cond_26

    :cond_1f
    if-nez v1, :cond_28

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_26

    goto :goto_28

    :cond_26
    move v1, v2

    goto :goto_7

    :cond_28
    :goto_28
    if-eqz v1, :cond_2b

    goto :goto_40

    :cond_2b
    new-instance v1, Ljava/lang/NumberFormatException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Expected leading [0-9] or \'-\' character but was %#x"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    :goto_40
    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->readDecimalLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([B)V
    .registers 10

    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lokin/RealBufferedSource;->require(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_b

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1}, Lokin/Buffer;->readFully([B)V

    return-void

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    :goto_d
    iget-object v2, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    iget-wide v3, v2, Lokin/Buffer;->size:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_27

    long-to-int v4, v3

    invoke-virtual {v2, p1, v1, v4}, Lokin/Buffer;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    add-int/2addr v1, v2

    goto :goto_d

    :cond_21
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_27
    goto :goto_29

    :goto_28
    throw v0

    :goto_29
    goto :goto_28
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 7

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokin/RealBufferedSource;->require(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lokin/RealBufferedSource;->request(J)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lokin/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1f

    const/16 v4, 0x39

    if-le v3, v4, :cond_30

    :cond_1f
    const/16 v4, 0x61

    if-lt v3, v4, :cond_27

    const/16 v4, 0x66

    if-le v3, v4, :cond_30

    :cond_27
    const/16 v4, 0x41

    if-lt v3, v4, :cond_32

    const/16 v4, 0x46

    if-le v3, v4, :cond_30

    goto :goto_32

    :cond_30
    move v1, v2

    goto :goto_7

    :cond_32
    :goto_32
    if-eqz v1, :cond_35

    goto :goto_4a

    :cond_35
    new-instance v1, Ljava/lang/NumberFormatException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4a
    :goto_4a
    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .registers 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokin/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLe()I
    .registers 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokin/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .registers 3

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokin/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLe()S
    .registers 3

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokin/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->readShortLe()S

    move-result v0

    return v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_10

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    iget-object v1, p0, Lokin/RealBufferedSource;->source:Lokin/Source;

    invoke-virtual {v0, v1}, Lokin/Buffer;->writeAll(Lokin/Source;)J

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1}, Lokin/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokin/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_a7

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_13

    move-wide v4, v2

    goto :goto_15

    :cond_13
    add-long v4, p1, v0

    :goto_15
    const/16 v7, 0xa

    const-wide/16 v8, 0x0

    move-object v6, p0

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Lokin/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2c

    iget-object p1, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {p1, v6, v7}, Lokin/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2c
    cmp-long v6, v4, v2

    if-gez v6, :cond_5a

    invoke-virtual {p0, v4, v5}, Lokin/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    sub-long v6, v4, v0

    invoke-virtual {v2, v6, v7}, Lokin/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5a

    add-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lokin/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0, v4, v5}, Lokin/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5a

    iget-object p1, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {p1, v4, v5}, Lokin/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5a
    new-instance v6, Lokin/Buffer;

    invoke-direct {v6}, Lokin/Buffer;-><init>()V

    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    invoke-virtual {v0}, Lokin/Buffer;->size()J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lokin/Buffer;->copyTo(Lokin/Buffer;JJ)Lokin/Buffer;

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v2}, Lokin/Buffer;->size()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lokin/Buffer;->readByteString()Lokin/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokin/ByteString;->hex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2c

    iget-boolean v0, p0, Lokin/RealBufferedSource;->closed:Z

    if-nez v0, :cond_24

    :cond_a
    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    iget-wide v1, v0, Lokin/Buffer;->size:J

    cmp-long v3, v1, p1

    if-gez v3, :cond_22

    iget-object v1, p0, Lokin/RealBufferedSource;->source:Lokin/Source;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_22
    const/4 p1, 0x1

    return p1

    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_44

    :goto_43
    throw v0

    :goto_44
    goto :goto_43
.end method

.method public require(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lokin/RealBufferedSource;->request(J)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public skip(J)V
    .registers 9

    iget-boolean v0, p0, Lokin/RealBufferedSource;->closed:Z

    if-nez v0, :cond_39

    :goto_4
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_38

    iget-object v2, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    iget-wide v3, v2, Lokin/Buffer;->size:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_27

    iget-object v0, p0, Lokin/RealBufferedSource;->source:Lokin/Source;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    goto :goto_27

    :cond_21
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_27
    :goto_27
    iget-object v0, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v2, v0, v1}, Lokin/Buffer;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_4

    :cond_38
    return-void

    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_42

    :goto_41
    throw p1

    :goto_42
    goto :goto_41
.end method

.method public timeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokin/RealBufferedSource;->source:Lokin/Source;

    invoke-interface {v0}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokin/RealBufferedSource;->source:Lokin/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
