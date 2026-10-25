.class public Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;
.super Ljj$/sun/nio/cs/DoubleByte$Decoder;
.source "DoubleByte.java"


# static fields
.field private static final DBCS:I = 0x1

.field private static final SBCS:I = 0x0

.field private static final SI:I = 0xf

.field private static final SO:I = 0xe


# instance fields
.field private currentState:I


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;[[C[CII)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;[[C[CIIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[[C[CIIZ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Ljj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;[[C[CIIZ)V

    return-void
.end method

.method private static isDoubleByte(II)Z
    .registers 4

    const/16 v0, 0x41

    if-gt v0, p0, :cond_c

    const/16 v1, 0xfe

    if-gt p0, v1, :cond_c

    if-gt v0, p1, :cond_c

    if-le p1, v1, :cond_12

    :cond_c
    const/16 v0, 0x40

    if-ne p0, v0, :cond_14

    if-ne p1, v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method


# virtual methods
.method public decode([BII[C)I
    .registers 15

    const/4 v0, 0x0

    add-int v1, p2, p3

    const/4 v2, 0x0

    iput v2, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    invoke-virtual {p0}, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->replacement()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_e
    if-ge p2, v1, :cond_7a

    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/16 v5, 0xe

    const/4 v6, 0x1

    if-ne p2, v5, :cond_2a

    iget v5, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    if-eqz v5, :cond_27

    add-int/lit8 v5, v0, 0x1

    aput-char v3, p4, v0

    move p2, v4

    move v0, v5

    goto/16 :goto_79

    :cond_27
    iput v6, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    goto :goto_3b

    :cond_2a
    const/16 v5, 0xf

    if-ne p2, v5, :cond_3d

    iget v5, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    if-eq v5, v6, :cond_39

    add-int/lit8 v5, v0, 0x1

    aput-char v3, p4, v0

    move p2, v4

    move v0, v5

    goto :goto_79

    :cond_39
    iput v2, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    :goto_3b
    move p2, v4

    goto :goto_79

    :cond_3d
    const v5, 0xfffd

    iget v6, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    const v7, 0xfffd

    if-nez v6, :cond_4f

    iget-object v6, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2cSB:[C

    aget-char v5, v6, p2

    if-ne v5, v7, :cond_73

    move v5, v3

    goto :goto_73

    :cond_4f
    if-ne v1, v4, :cond_53

    move v5, v3

    goto :goto_73

    :cond_53
    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    iget v8, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Min:I

    if-lt v4, v8, :cond_6e

    iget v8, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Max:I

    if-gt v4, v8, :cond_6e

    iget-object v8, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2c:[[C

    aget-object v8, v8, p2

    iget v9, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Min:I

    sub-int v9, v4, v9

    aget-char v8, v8, v9

    move v5, v8

    if-ne v8, v7, :cond_6f

    :cond_6e
    goto :goto_71

    :cond_6f
    move v4, v6

    goto :goto_73

    :goto_71
    move v5, v3

    move v4, v6

    :cond_73
    :goto_73
    add-int/lit8 v6, v0, 0x1

    aput-char v5, p4, v0

    move p2, v4

    move v0, v6

    :goto_79
    goto :goto_e

    :cond_7a
    return v0
.end method

.method protected decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v6

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    move v9, v7

    move v7, v0

    :goto_34
    if-ge v7, v5, :cond_168

    :try_start_36
    aget-byte v0, v4, v7

    and-int/lit16 v0, v0, 0xff

    const/4 v10, 0x1

    const/16 v11, 0xe

    const/4 v12, 0x1

    if-ne v0, v11, :cond_65

    iget v11, v1, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    if-eqz v11, :cond_61

    invoke-static {v12}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v11
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_183

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v7, v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/CharBuffer;

    return-object v11

    :cond_61
    :try_start_61
    iput v12, v1, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    goto/16 :goto_122

    :cond_65
    const/16 v11, 0xf

    if-ne v0, v11, :cond_8f

    iget v11, v1, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    if-eq v11, v12, :cond_8a

    invoke-static {v12}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v11
    :try_end_71
    .catchall {:try_start_61 .. :try_end_71} :catchall_183

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v7, v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/CharBuffer;

    return-object v11

    :cond_8a
    const/4 v11, 0x0

    :try_start_8b
    iput v11, v1, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    goto/16 :goto_122

    :cond_8f
    const v11, 0xfffd

    iget v13, v1, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    const v14, 0xfffd

    if-nez v13, :cond_bc

    iget-object v13, v1, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2cSB:[C

    aget-char v13, v13, v0

    if-ne v13, v14, :cond_fd

    invoke-static {v12}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v11
    :try_end_a3
    .catchall {:try_start_8b .. :try_end_a3} :catchall_183

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v7, v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/CharBuffer;

    return-object v11

    :cond_bc
    sub-int v13, v5, v7

    const/4 v15, 0x2

    if-ge v13, v15, :cond_dc

    :try_start_c1
    sget-object v12, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_c3
    .catchall {:try_start_c1 .. :try_end_c3} :catchall_183

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    return-object v12

    :cond_dc
    add-int/lit8 v13, v7, 0x1

    :try_start_de
    aget-byte v13, v4, v13

    and-int/lit16 v13, v13, 0xff

    const/16 v16, 0x2

    iget v15, v1, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Min:I

    if-lt v13, v15, :cond_f9

    iget v15, v1, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Max:I

    if-gt v13, v15, :cond_f9

    iget-object v15, v1, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2c:[[C

    aget-object v15, v15, v0

    iget v12, v1, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Min:I

    sub-int v12, v13, v12

    aget-char v12, v15, v12

    move v11, v12

    if-ne v12, v14, :cond_fa

    :cond_f9
    goto :goto_128

    :cond_fa
    add-int/lit8 v10, v10, 0x1

    move v13, v11

    :cond_fd
    sub-int v11, v8, v9

    const/4 v12, 0x1

    if-ge v11, v12, :cond_11d

    sget-object v11, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_104
    .catchall {:try_start_de .. :try_end_104} :catchall_183

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v7, v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/CharBuffer;

    return-object v11

    :cond_11d
    add-int/lit8 v11, v9, 0x1

    :try_start_11f
    aput-char v13, v6, v9
    :try_end_121
    .catchall {:try_start_11f .. :try_end_121} :catchall_125

    move v9, v11

    :goto_122
    add-int/2addr v7, v10

    goto/16 :goto_34

    :catchall_125
    move-exception v0

    move v9, v11

    goto :goto_184

    :goto_128
    :try_start_128
    invoke-static {v0, v13}, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->isDoubleByte(II)Z

    move-result v12

    if-nez v12, :cond_14b

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_132
    .catchall {:try_start_128 .. :try_end_132} :catchall_183

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    return-object v12

    :cond_14b
    :try_start_14b
    invoke-static/range {v16 .. v16}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_14f
    .catchall {:try_start_14b .. :try_end_14f} :catchall_183

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    return-object v12

    :cond_168
    :try_start_168
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_16a
    .catchall {:try_start_168 .. :try_end_16a} :catchall_183

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {v3, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    return-object v0

    :catchall_183
    move-exception v0

    :goto_184
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {v3, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    throw v0
.end method

.method protected decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 12

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_bb

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    const/16 v3, 0xe

    const/4 v4, 0x1

    if-ne v1, v3, :cond_29

    iget v3, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    if-eqz v3, :cond_25

    invoke-static {v4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_c4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    return-object v3

    :cond_25
    :try_start_25
    iput v4, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    goto/16 :goto_9b

    :cond_29
    const/16 v3, 0xf

    if-ne v1, v3, :cond_40

    iget v3, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    if-eq v3, v4, :cond_3c

    invoke-static {v4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_c4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    return-object v3

    :cond_3c
    const/4 v3, 0x0

    :try_start_3d
    iput v3, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    goto :goto_9b

    :cond_40
    const v3, 0xfffd

    iget v5, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    const v6, 0xfffd

    if-nez v5, :cond_5b

    iget-object v5, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2cSB:[C

    aget-char v5, v5, v1

    if-ne v5, v6, :cond_89

    invoke-static {v4}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_54
    .catchall {:try_start_3d .. :try_end_54} :catchall_c4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    return-object v3

    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v4, :cond_6a

    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_c4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    return-object v4

    :cond_6a
    :try_start_6a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    iget v7, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Min:I

    if-lt v5, v7, :cond_85

    iget v7, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Max:I

    if-gt v5, v7, :cond_85

    iget-object v7, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2c:[[C

    aget-object v7, v7, v1

    iget v8, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Min:I

    sub-int v8, v5, v8

    aget-char v7, v7, v8

    move v3, v7

    if-ne v7, v6, :cond_86

    :cond_85
    goto :goto_9e

    :cond_86
    add-int/lit8 v2, v2, 0x1

    move v5, v3

    :cond_89
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    if-ge v3, v4, :cond_98

    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_91
    .catchall {:try_start_6a .. :try_end_91} :catchall_c4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    return-object v3

    :cond_98
    :try_start_98
    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    :goto_9b
    add-int/2addr v0, v2

    goto/16 :goto_4

    :goto_9e
    invoke-static {v1, v5}, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->isDoubleByte(II)Z

    move-result v4

    const/4 v6, 0x2

    if-nez v4, :cond_b0

    invoke-static {v6}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_a9
    .catchall {:try_start_98 .. :try_end_a9} :catchall_c4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    return-object v4

    :cond_b0
    :try_start_b0
    invoke-static {v6}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_c4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    return-object v4

    :cond_bb
    :try_start_bb
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_bd
    .catchall {:try_start_bb .. :try_end_bd} :catchall_c4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    return-object v1

    :catchall_c4
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    throw v1
.end method

.method public implReset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    return-void
.end method
