.class public Ljj$/sun/nio/cs/UTF_32Coder$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "UTF_32Coder.java"


# instance fields
.field private byteOrder:I

.field private doBOM:Z

.field private doneBOM:Z


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;IZ)V
    .registers 13

    nop

    const/high16 v0, 0x40800000  # 4.0f

    if-eqz p3, :cond_8

    const/high16 v1, 0x41000000  # 8.0f

    goto :goto_a

    :cond_8
    const/high16 v1, 0x40800000  # 4.0f

    :goto_a
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne p2, v7, :cond_1e

    new-array v6, v6, [B

    aput-byte v8, v6, v8

    aput-byte v8, v6, v7

    aput-byte v4, v6, v3

    aput-byte v5, v6, v2

    goto :goto_28

    :cond_1e
    new-array v6, v6, [B

    aput-byte v5, v6, v8

    aput-byte v4, v6, v7

    aput-byte v8, v6, v3

    aput-byte v8, v6, v2

    :goto_28
    invoke-direct {p0, p1, v0, v1, v6}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    iput-boolean v8, p0, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;->doBOM:Z

    iput-boolean v7, p0, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;->doneBOM:Z

    iput p2, p0, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;->byteOrder:I

    iput-boolean p3, p0, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;->doBOM:Z

    xor-int/lit8 v0, p3, 0x1

    iput-boolean v0, p0, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;->doneBOM:Z

    return-void
.end method


# virtual methods
.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 9

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iget-boolean v1, p0, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;->doneBOM:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-nez v1, :cond_21

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v2, :cond_19

    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v1

    :cond_19
    const v1, 0xfeff

    invoke-virtual {p0, v1, p2}, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;->put(ILjava/nio/ByteBuffer;)V

    iput-boolean v3, p0, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;->doneBOM:Z

    :cond_21
    :goto_21
    :try_start_21
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_46

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v2, :cond_40

    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_9e

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    return-object v2

    :cond_40
    add-int/lit8 v0, v0, 0x1

    :try_start_42
    invoke-virtual {p0, v1, p2}, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;->put(ILjava/nio/ByteBuffer;)V

    goto :goto_7e

    :cond_46
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_5b

    sget-object v2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_9e

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    return-object v2

    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v2, :cond_74

    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_6d
    .catchall {:try_start_5b .. :try_end_6d} :catchall_9e

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    return-object v2

    :cond_74
    add-int/lit8 v0, v0, 0x2

    :try_start_76
    invoke-static {v1, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    invoke-virtual {p0, v5, p2}, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;->put(ILjava/nio/ByteBuffer;)V

    nop

    :goto_7e
    goto :goto_21

    :cond_7f
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_83
    .catchall {:try_start_76 .. :try_end_83} :catchall_9e

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    return-object v2

    :cond_8a
    :try_start_8a
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_9e

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    return-object v2

    :cond_95
    :try_start_95
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_97
    .catchall {:try_start_95 .. :try_end_97} :catchall_9e

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    return-object v1

    :catchall_9e
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    throw v1
.end method

.method protected implReset()V
    .registers 2

    iget-boolean v0, p0, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;->doBOM:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;->doneBOM:Z

    return-void
.end method

.method protected put(ILjava/nio/ByteBuffer;)V
    .registers 5

    iget v0, p0, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;->byteOrder:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v0, p1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_32

    :cond_1c
    int-to-byte v0, p1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_32
    return-void
.end method
