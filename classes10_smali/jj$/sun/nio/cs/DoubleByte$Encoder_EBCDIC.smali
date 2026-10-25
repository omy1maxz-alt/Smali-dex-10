.class public Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;
.super Ljj$/sun/nio/cs/DoubleByte$Encoder;
.source "DoubleByte.java"


# static fields
.field static final DBCS:I = 0x1

.field static final SBCS:I = 0x0

.field static final SI:B = 0xft

.field static final SO:B = 0xet


# instance fields
.field protected currentState:I


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;[C[CZ)V
    .registers 14

    const/4 v0, 0x1

    new-array v5, v0, [B

    const/4 v0, 0x0

    const/16 v1, 0x6f

    aput-byte v1, v5, v0

    const/high16 v3, 0x40800000  # 4.0f

    const/high16 v4, 0x40a00000  # 5.0f

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Ljj$/sun/nio/cs/DoubleByte$Encoder;-><init>(Ljava/nio/charset/Charset;FF[B[C[CZ)V

    iput v0, v1, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    return-void
.end method


# virtual methods
.method public encode([CII[B)I
    .registers 13

    const/4 v0, 0x0

    add-int v1, p2, p3

    :goto_3
    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p2, v1, :cond_73

    add-int/lit8 v5, p2, 0x1

    aget-char p2, p1, p2

    invoke-virtual {p0, p2}, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->encodeChar(C)I

    move-result v6

    const v7, 0xfffd

    if-ne v6, v7, :cond_42

    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_28

    if-ge v5, v1, :cond_28

    aget-char v2, p1, v5

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_28

    add-int/lit8 v5, v5, 0x1

    :cond_28
    add-int/lit8 v2, v0, 0x1

    iget-object v7, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    aget-byte v3, v7, v3

    aput-byte v3, p4, v0

    iget-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    array-length v0, v0

    if-le v0, v4, :cond_3f

    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    aget-byte v3, v3, v4

    aput-byte v3, p4, v2

    move p2, v5

    goto :goto_3

    :cond_3f
    move v0, v2

    move p2, v5

    goto :goto_3

    :cond_42
    const/16 v7, 0xff

    if-le v6, v7, :cond_60

    iget v2, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-nez v2, :cond_53

    iput v4, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xe

    aput-byte v3, p4, v0

    move v0, v2

    :cond_53
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    aput-byte v3, p4, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v6

    aput-byte v3, p4, v2

    goto :goto_71

    :cond_60
    iget v7, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v7, v4, :cond_6b

    iput v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    add-int/lit8 v3, v0, 0x1

    aput-byte v2, p4, v0

    move v0, v3

    :cond_6b
    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, v6

    aput-byte v3, p4, v0

    move v0, v2

    :goto_71
    move p2, v5

    goto :goto_3

    :cond_73
    iget v5, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v5, v4, :cond_7e

    iput v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    add-int/lit8 v3, v0, 0x1

    aput-byte v2, p4, v0

    move v0, v3

    :cond_7e
    return v0
.end method

.method protected encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 14

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    :goto_2c
    if-ge v1, v2, :cond_15c

    :try_start_2e
    aget-char v6, v0, v1

    invoke-virtual {p0, v6}, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->encodeChar(C)I

    move-result v7

    const v8, 0xfffd

    const/4 v9, 0x1

    if-ne v7, v8, :cond_a5

    invoke-static {v6}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_88

    invoke-virtual {p0}, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->sgp()Ljj$/sun/nio/cs/Surrogate$Parser;

    move-result-object v8

    invoke-virtual {v8, v6, v0, v1, v2}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v8

    if-gez v8, :cond_69

    iget-object v8, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v8}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v8
    :try_end_50
    .catchall {:try_start_2e .. :try_end_50} :catchall_177

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    return-object v8

    :cond_69
    :try_start_69
    iget-object v8, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v8}, Ljj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v8
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_177

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    return-object v8

    :cond_88
    :try_start_88
    invoke-static {v9}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v8
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_177

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    return-object v8

    :cond_a5
    const/16 v8, 0xff

    if-le v7, v8, :cond_102

    :try_start_a9
    iget v8, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-nez v8, :cond_d5

    sub-int v8, v5, v4

    if-ge v8, v9, :cond_cc

    sget-object v8, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_b3
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_177

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    return-object v8

    :cond_cc
    :try_start_cc
    iput v9, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I
    :try_end_ce
    .catchall {:try_start_cc .. :try_end_ce} :catchall_177

    add-int/lit8 v8, v4, 0x1

    const/16 v9, 0xe

    :try_start_d2
    aput-byte v9, v3, v4
    :try_end_d4
    .catchall {:try_start_d2 .. :try_end_d4} :catchall_159

    move v4, v8

    :cond_d5
    sub-int v8, v5, v4

    const/4 v9, 0x2

    if-ge v8, v9, :cond_f5

    :try_start_da
    sget-object v8, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_dc
    .catchall {:try_start_da .. :try_end_dc} :catchall_177

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    return-object v8

    :cond_f5
    add-int/lit8 v8, v4, 0x1

    shr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    :try_start_fa
    aput-byte v9, v3, v4
    :try_end_fc
    .catchall {:try_start_fa .. :try_end_fc} :catchall_159

    add-int/lit8 v4, v8, 0x1

    int-to-byte v9, v7

    :try_start_ff
    aput-byte v9, v3, v8

    goto :goto_154

    :cond_102
    iget v8, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v8, v9, :cond_12f

    sub-int v8, v5, v4

    if-ge v8, v9, :cond_125

    sget-object v8, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_10c
    .catchall {:try_start_ff .. :try_end_10c} :catchall_177

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    return-object v8

    :cond_125
    const/4 v8, 0x0

    :try_start_126
    iput v8, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I
    :try_end_128
    .catchall {:try_start_126 .. :try_end_128} :catchall_177

    add-int/lit8 v8, v4, 0x1

    const/16 v10, 0xf

    :try_start_12c
    aput-byte v10, v3, v4
    :try_end_12e
    .catchall {:try_start_12c .. :try_end_12e} :catchall_159

    move v4, v8

    :cond_12f
    sub-int v8, v5, v4

    if-ge v8, v9, :cond_14e

    :try_start_133
    sget-object v8, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_135
    .catchall {:try_start_133 .. :try_end_135} :catchall_177

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    return-object v8

    :cond_14e
    add-int/lit8 v8, v4, 0x1

    int-to-byte v9, v7

    :try_start_151
    aput-byte v9, v3, v4
    :try_end_153
    .catchall {:try_start_151 .. :try_end_153} :catchall_159

    move v4, v8

    :goto_154
    nop

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2c

    :catchall_159
    move-exception v6

    move v4, v8

    goto :goto_178

    :cond_15c
    :try_start_15c
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_15e
    .catchall {:try_start_15c .. :try_end_15e} :catchall_177

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p1, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    return-object v6

    :catchall_177
    move-exception v6

    :goto_178
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p1, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    throw v6
.end method

.method protected encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 8

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-virtual {p0, v1}, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->encodeChar(C)I

    move-result v2

    const v3, 0xfffd

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4d

    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {p0}, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->sgp()Ljj$/sun/nio/cs/Surrogate$Parser;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v3

    if-gez v3, :cond_35

    iget-object v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_c2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_35
    :try_start_35
    iget-object v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Ljj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_c2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_42
    :try_start_42
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_c2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_4d
    const/16 v3, 0xff

    if-le v2, v3, :cond_86

    :try_start_51
    iget v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-nez v3, :cond_6b

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v4, :cond_64

    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5d
    .catchall {:try_start_51 .. :try_end_5d} :catchall_c2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_64
    :try_start_64
    iput v4, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    const/16 v3, 0xe

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_6b
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_7b

    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_74
    .catchall {:try_start_64 .. :try_end_74} :catchall_c2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_7b
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    :try_start_7e
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v2

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_b4

    :cond_86
    iget v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v3, v4, :cond_a1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v4, :cond_99

    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_92
    .catchall {:try_start_7e .. :try_end_92} :catchall_c2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_99
    const/4 v3, 0x0

    :try_start_9a
    iput v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    const/16 v3, 0xf

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_a1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v4, :cond_b0

    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_a9
    .catchall {:try_start_9a .. :try_end_a9} :catchall_c2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_b0
    int-to-byte v3, v2

    :try_start_b1
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_b4
    nop

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_b9
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_bb
    .catchall {:try_start_b1 .. :try_end_bb} :catchall_c2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    return-object v1

    :catchall_c2
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    throw v1
.end method

.method public encodeFromLatin1([BII[B)I
    .registers 14

    const/4 v0, 0x0

    add-int v1, p2, p3

    :goto_3
    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p2, v1, :cond_63

    add-int/lit8 v5, p2, 0x1

    aget-byte p2, p1, p2

    const/16 v6, 0xff

    and-int/2addr p2, v6

    int-to-char p2, p2

    invoke-virtual {p0, p2}, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->encodeChar(C)I

    move-result v7

    const v8, 0xfffd

    if-ne v7, v8, :cond_34

    add-int/lit8 v2, v0, 0x1

    iget-object v6, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    aget-byte v3, v6, v3

    aput-byte v3, p4, v0

    iget-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    array-length v0, v0

    if-le v0, v4, :cond_31

    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    aget-byte v3, v3, v4

    aput-byte v3, p4, v2

    move p2, v5

    goto :goto_3

    :cond_31
    move v0, v2

    move p2, v5

    goto :goto_3

    :cond_34
    if-le v7, v6, :cond_50

    iget v2, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-nez v2, :cond_43

    iput v4, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xe

    aput-byte v3, p4, v0

    move v0, v2

    :cond_43
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v7, 0x8

    int-to-byte v3, v3

    aput-byte v3, p4, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v7

    aput-byte v3, p4, v2

    goto :goto_61

    :cond_50
    iget v6, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v6, v4, :cond_5b

    iput v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    add-int/lit8 v3, v0, 0x1

    aput-byte v2, p4, v0

    move v0, v3

    :cond_5b
    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, v7

    aput-byte v3, p4, v0

    move v0, v2

    :goto_61
    move p2, v5

    goto :goto_3

    :cond_63
    iget v5, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v5, v4, :cond_6e

    iput v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    add-int/lit8 v3, v0, 0x1

    aput-byte v2, p4, v0

    move v0, v3

    :cond_6e
    return v0
.end method

.method public encodeFromUTF16([BII[B)I
    .registers 13

    const/4 v0, 0x0

    add-int v1, p2, p3

    :goto_3
    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p2, v1, :cond_77

    add-int/lit8 v5, p2, 0x1

    invoke-static {p1, p2}, Ljj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result p2

    invoke-virtual {p0, p2}, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->encodeChar(C)I

    move-result v6

    const v7, 0xfffd

    if-ne v6, v7, :cond_46

    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-ge v5, v1, :cond_2c

    invoke-static {p1, v5}, Ljj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    add-int/lit8 v5, v5, 0x1

    :cond_2c
    add-int/lit8 v2, v0, 0x1

    iget-object v7, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    aget-byte v3, v7, v3

    aput-byte v3, p4, v0

    iget-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    array-length v0, v0

    if-le v0, v4, :cond_43

    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    aget-byte v3, v3, v4

    aput-byte v3, p4, v2

    move p2, v5

    goto :goto_3

    :cond_43
    move v0, v2

    move p2, v5

    goto :goto_3

    :cond_46
    const/16 v7, 0xff

    if-le v6, v7, :cond_64

    iget v2, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-nez v2, :cond_57

    iput v4, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xe

    aput-byte v3, p4, v0

    move v0, v2

    :cond_57
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    aput-byte v3, p4, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v6

    aput-byte v3, p4, v2

    goto :goto_75

    :cond_64
    iget v7, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v7, v4, :cond_6f

    iput v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    add-int/lit8 v3, v0, 0x1

    aput-byte v2, p4, v0

    move v0, v3

    :cond_6f
    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, v6

    aput-byte v3, p4, v0

    move v0, v2

    :goto_75
    move p2, v5

    goto :goto_3

    :cond_77
    iget v5, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v5, v4, :cond_82

    iput v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    add-int/lit8 v3, v0, 0x1

    aput-byte v2, p4, v0

    move v0, v3

    :cond_82
    return v0
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 4

    iget v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, v1, :cond_e

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0

    :cond_e
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_13
    invoke-virtual {p0}, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->implReset()V

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected implReset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    return-void
.end method
