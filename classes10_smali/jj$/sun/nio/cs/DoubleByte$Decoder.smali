.class public Ljj$/sun/nio/cs/DoubleByte$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "DoubleByte.java"

# interfaces
.implements Ljj$/sun/nio/cs/DelegatableDecoder;
.implements Ljj$/sun/nio/cs/ArrayDecoder;


# instance fields
.field final b2Max:I

.field final b2Min:I

.field final b2c:[[C

.field final b2cSB:[C

.field final isASCIICompatible:Z


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;FF[[C[CIIZ)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    iput-object p4, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    iput-object p5, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2cSB:[C

    iput p6, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    iput p7, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2Max:I

    iput-boolean p8, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->isASCIICompatible:Z

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[[C[CII)V
    .registers 15

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    const/high16 v2, 0x3f000000  # 0.5f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Ljj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;FF[[C[CIIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[[C[CIIZ)V
    .registers 16

    const/high16 v2, 0x3f000000  # 0.5f

    const/high16 v3, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Ljj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;FF[[C[CIIZ)V

    return-void
.end method


# virtual methods
.method protected crMalformedOrUnderFlow(I)Ljava/nio/charset/CoderResult;
    .registers 3

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected crMalformedOrUnmappable(II)Ljava/nio/charset/CoderResult;
    .registers 5

    iget-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    aget-object v0, v0, p1

    sget-object v1, Ljj$/sun/nio/cs/DoubleByte;->B2C_UNMAPPABLE:[C

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    aget-object v0, v0, p2

    sget-object v1, Ljj$/sun/nio/cs/DoubleByte;->B2C_UNMAPPABLE:[C

    if-ne v0, v1, :cond_20

    invoke-virtual {p0, p2}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->decodeSingle(I)C

    move-result v0

    const v1, 0xfffd

    if-eq v0, v1, :cond_1a

    goto :goto_20

    :cond_1a
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_20
    :goto_20
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode([BII[C)I
    .registers 14

    const/4 v0, 0x0

    add-int v1, p2, p3

    invoke-virtual {p0}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->replacement()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_c
    if-ge p2, v1, :cond_57

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iget-object v4, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2cSB:[C

    aget-char v4, v4, p2

    const v5, 0xfffd

    if-ne v4, v5, :cond_50

    if-ge v3, v1, :cond_4d

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iget v7, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    if-lt v3, v7, :cond_3a

    iget v7, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2Max:I

    if-gt v3, v7, :cond_3a

    iget-object v7, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    aget-object v7, v7, p2

    iget v8, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    sub-int v8, v3, v8

    aget-char v7, v7, v8

    move v4, v7

    if-ne v7, v5, :cond_3b

    :cond_3a
    goto :goto_3d

    :cond_3b
    move v3, v6

    goto :goto_4d

    :goto_3d
    invoke-virtual {p0, p2, v3}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->crMalformedOrUnmappable(II)Ljava/nio/charset/CoderResult;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4c

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    goto :goto_4d

    :cond_4c
    move v3, v6

    :cond_4d
    :goto_4d
    if-ne v4, v5, :cond_50

    move v4, v2

    :cond_50
    add-int/lit8 v5, v0, 0x1

    aput-char v4, p4, v0

    move p2, v3

    move v0, v5

    goto :goto_c

    :cond_57
    return v0
.end method

.method protected decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 16

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    :goto_2c
    if-ge v1, v2, :cond_a6

    if-ge v4, v5, :cond_a6

    const/4 v6, 0x1

    :try_start_31
    aget-byte v7, v0, v1

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2cSB:[C

    aget-char v8, v8, v7

    const v9, 0xfffd

    if-ne v8, v9, :cond_9c

    sub-int v10, v2, v1

    const/4 v11, 0x2

    if-ge v10, v11, :cond_60

    invoke-virtual {p0, v7}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->crMalformedOrUnderFlow(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_c6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p2, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    return-object v9

    :cond_60
    add-int/lit8 v10, v1, 0x1

    :try_start_62
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    iget v11, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    if-lt v10, v11, :cond_7b

    iget v11, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2Max:I

    if-gt v10, v11, :cond_7b

    iget-object v11, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    aget-object v11, v11, v7

    iget v12, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    sub-int v12, v10, v12

    aget-char v11, v11, v12

    move v8, v11

    if-ne v11, v9, :cond_7c

    :cond_7b
    goto :goto_7f

    :cond_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_9c

    :goto_7f
    invoke-virtual {p0, v7, v10}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->crMalformedOrUnmappable(II)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_83
    .catchall {:try_start_62 .. :try_end_83} :catchall_c6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v1, v11

    invoke-virtual {p1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v4, v11

    invoke-virtual {p2, v11}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/CharBuffer;

    return-object v9

    :cond_9c
    :goto_9c
    add-int/lit8 v9, v4, 0x1

    :try_start_9e
    aput-char v8, v3, v4
    :try_end_a0
    .catchall {:try_start_9e .. :try_end_a0} :catchall_a3

    add-int/2addr v1, v6

    move v4, v9

    goto :goto_2c

    :catchall_a3
    move-exception v6

    move v4, v9

    goto :goto_c7

    :cond_a6
    if-lt v1, v2, :cond_ab

    :try_start_a8
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_ad

    :cond_ab
    sget-object v6, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_ad
    .catchall {:try_start_a8 .. :try_end_ad} :catchall_c6

    :goto_ad
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p2, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    return-object v6

    :catchall_c6
    move-exception v6

    :goto_c7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p2, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    throw v6
.end method

.method protected decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 11

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2cSB:[C

    aget-char v2, v2, v1

    const/4 v3, 0x1

    const v4, 0xfffd

    if-ne v2, v4, :cond_5c

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_32

    invoke-virtual {p0, v1}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->crMalformedOrUnderFlow(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_73

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    return-object v4

    :cond_32
    :try_start_32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    iget v6, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    if-lt v5, v6, :cond_4d

    iget v6, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2Max:I

    if-gt v5, v6, :cond_4d

    iget-object v6, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    aget-object v6, v6, v1

    iget v7, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    sub-int v7, v5, v7

    aget-char v6, v6, v7

    move v2, v6

    if-ne v6, v4, :cond_4e

    :cond_4d
    goto :goto_51

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :goto_51
    invoke-virtual {p0, v1, v5}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->crMalformedOrUnmappable(II)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_55
    .catchall {:try_start_32 .. :try_end_55} :catchall_73

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    return-object v4

    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/2addr v0, v3

    goto :goto_4

    :cond_61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_6a

    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_6c

    :cond_6a
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_6c
    .catchall {:try_start_5c .. :try_end_6c} :catchall_73

    :goto_6c
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    return-object v1

    :catchall_73
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    throw v1
.end method

.method public decodeDouble(II)C
    .registers 5

    if-ltz p1, :cond_1b

    iget-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    array-length v0, v0

    if-gt p1, v0, :cond_1b

    iget v0, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    if-lt p2, v0, :cond_1b

    iget v0, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2Max:I

    if-le p2, v0, :cond_10

    goto :goto_1b

    :cond_10
    iget-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    aget-object v0, v0, p1

    iget v1, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    sub-int v1, p2, v1

    aget-char v0, v0, v1

    return v0

    :cond_1b
    :goto_1b
    const v0, 0xfffd

    return v0
.end method

.method public decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1, p2}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual {p0, p1, p2}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decodeSingle(I)C
    .registers 3

    iget-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->b2cSB:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 3

    invoke-super {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public implReset()V
    .registers 1

    invoke-super {p0}, Ljava/nio/charset/CharsetDecoder;->implReset()V

    return-void
.end method

.method public isASCIICompatible()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder;->isASCIICompatible:Z

    return v0
.end method
