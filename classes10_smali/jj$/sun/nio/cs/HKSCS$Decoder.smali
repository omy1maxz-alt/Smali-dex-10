.class public Ljj$/sun/nio/cs/HKSCS$Decoder;
.super Ljj$/sun/nio/cs/DoubleByte$Decoder;
.source "HKSCS.java"


# static fields
.field static b2Max:I

.field static b2Min:I


# instance fields
.field private b2cBmp:[[C

.field private b2cSupp:[[C

.field private big5Dec:Ljj$/sun/nio/cs/DoubleByte$Decoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    sput v0, Ljj$/sun/nio/cs/HKSCS$Decoder;->b2Min:I

    const/16 v0, 0xfe

    sput v0, Ljj$/sun/nio/cs/HKSCS$Decoder;->b2Max:I

    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/DoubleByte$Decoder;[[C[[C)V
    .registers 14

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v2, 0x3f000000  # 0.5f

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Ljj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;FF[[C[CIIZ)V

    iput-object p2, v0, Ljj$/sun/nio/cs/HKSCS$Decoder;->big5Dec:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    iput-object p3, v0, Ljj$/sun/nio/cs/HKSCS$Decoder;->b2cBmp:[[C

    iput-object p4, v0, Ljj$/sun/nio/cs/HKSCS$Decoder;->b2cSupp:[[C

    return-void
.end method

.method public static initb2c([[C[Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_18

    aget-object v1, p1, v0

    if-nez v1, :cond_d

    sget-object v1, Ljj$/sun/nio/cs/DoubleByte;->B2C_UNMAPPABLE:[C

    aput-object v1, p0, v0

    goto :goto_15

    :cond_d
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aput-object v1, p0, v0

    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method


# virtual methods
.method public decode([BII[C)I
    .registers 14

    const/4 v0, 0x0

    add-int v1, p2, p3

    invoke-virtual {p0}, Ljj$/sun/nio/cs/HKSCS$Decoder;->replacement()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_c
    if-ge p2, v1, :cond_67

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p0, p2}, Ljj$/sun/nio/cs/HKSCS$Decoder;->decodeSingle(I)C

    move-result v4

    const v5, 0xfffd

    if-ne v4, v5, :cond_5f

    if-ne v1, v3, :cond_22

    move v4, v2

    move v6, v3

    goto :goto_60

    :cond_22
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    sget v7, Ljj$/sun/nio/cs/HKSCS$Decoder;->b2Min:I

    if-lt v3, v7, :cond_5d

    sget v7, Ljj$/sun/nio/cs/HKSCS$Decoder;->b2Max:I

    if-le v3, v7, :cond_31

    goto :goto_5d

    :cond_31
    invoke-virtual {p0, p2, v3}, Ljj$/sun/nio/cs/HKSCS$Decoder;->decodeDouble(II)C

    move-result v7

    move v4, v7

    if-ne v7, v5, :cond_60

    invoke-virtual {p0, p2, v3}, Ljj$/sun/nio/cs/HKSCS$Decoder;->decodeDoubleEx(II)C

    move-result v4

    if-ne v4, v5, :cond_46

    invoke-virtual {p0, p2, v3}, Ljj$/sun/nio/cs/HKSCS$Decoder;->decodeBig5(II)C

    move-result v4

    if-ne v4, v5, :cond_60

    move v4, v2

    goto :goto_60

    :cond_46
    add-int/lit8 v5, v0, 0x1

    const/high16 v7, 0x20000

    add-int v8, v4, v7

    invoke-static {v8}, Ljj$/sun/nio/cs/Surrogate;->high(I)C

    move-result v8

    aput-char v8, p4, v0

    add-int/lit8 v0, v5, 0x1

    add-int/2addr v7, v4

    invoke-static {v7}, Ljj$/sun/nio/cs/Surrogate;->low(I)C

    move-result v7

    aput-char v7, p4, v5

    move p2, v6

    goto :goto_c

    :cond_5d
    :goto_5d
    move v4, v2

    goto :goto_60

    :cond_5f
    move v6, v3

    :cond_60
    :goto_60
    add-int/lit8 v3, v0, 0x1

    aput-char v4, p4, v0

    move v0, v3

    move p2, v6

    goto :goto_c

    :cond_67
    return v0
.end method

.method protected decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 22

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
    if-ge v7, v5, :cond_124

    :try_start_36
    aget-byte v0, v4, v7

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljj$/sun/nio/cs/HKSCS$Decoder;->decodeSingle(I)C

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    const v15, 0xfffd

    if-ne v10, v15, :cond_dd

    sub-int v15, v5, v7

    if-ge v15, v14, :cond_66

    sget-object v14, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_13f

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v3, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    return-object v14

    :cond_66
    add-int/lit8 v15, v7, 0x1

    :try_start_68
    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 v11, v11, 0x1

    const/16 v17, 0x2

    sget v14, Ljj$/sun/nio/cs/HKSCS$Decoder;->b2Min:I

    if-lt v15, v14, :cond_be

    sget v14, Ljj$/sun/nio/cs/HKSCS$Decoder;->b2Max:I

    if-le v15, v14, :cond_7b

    move/from16 v18, v0

    goto :goto_c0

    :cond_7b
    invoke-virtual {v1, v0, v15}, Ljj$/sun/nio/cs/HKSCS$Decoder;->decodeDouble(II)C

    move-result v14

    move v10, v14

    const v14, 0xfffd

    if-ne v10, v14, :cond_bb

    invoke-virtual {v1, v0, v15}, Ljj$/sun/nio/cs/HKSCS$Decoder;->decodeDoubleEx(II)C

    move-result v16

    move/from16 v10, v16

    if-ne v10, v14, :cond_b7

    invoke-virtual {v1, v0, v15}, Ljj$/sun/nio/cs/HKSCS$Decoder;->decodeBig5(II)C

    move-result v16

    move/from16 v10, v16

    if-ne v10, v14, :cond_b4

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v14
    :try_end_99
    .catchall {:try_start_68 .. :try_end_99} :catchall_13f

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v16

    move/from16 v18, v0

    sub-int v0, v7, v16

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int v0, v9, v0

    invoke-virtual {v3, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    return-object v14

    :cond_b4
    move/from16 v18, v0

    goto :goto_e1

    :cond_b7
    move/from16 v18, v0

    const/4 v12, 0x2

    goto :goto_e1

    :cond_bb
    move/from16 v18, v0

    goto :goto_e1

    :cond_be
    move/from16 v18, v0

    :goto_c0
    :try_start_c0
    invoke-static/range {v17 .. v17}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0
    :try_end_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_13f

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

    return-object v0

    :cond_dd
    move/from16 v18, v0

    const/16 v17, 0x2

    :goto_e1
    sub-int v0, v8, v9

    if-ge v0, v12, :cond_100

    :try_start_e5
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_e7
    .catchall {:try_start_e5 .. :try_end_e7} :catchall_13f

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

    return-object v0

    :cond_100
    const/4 v0, 0x2

    if-ne v12, v0, :cond_119

    add-int/lit8 v14, v9, 0x1

    const/high16 v0, 0x20000

    add-int v15, v10, v0

    :try_start_109
    invoke-static {v15}, Ljj$/sun/nio/cs/Surrogate;->high(I)C

    move-result v15

    aput-char v15, v6, v9
    :try_end_10f
    .catchall {:try_start_109 .. :try_end_10f} :catchall_121

    add-int/lit8 v9, v14, 0x1

    add-int/2addr v0, v10

    :try_start_112
    invoke-static {v0}, Ljj$/sun/nio/cs/Surrogate;->low(I)C

    move-result v0

    aput-char v0, v6, v14
    :try_end_118
    .catchall {:try_start_112 .. :try_end_118} :catchall_13f

    goto :goto_11e

    :cond_119
    add-int/lit8 v14, v9, 0x1

    :try_start_11b
    aput-char v10, v6, v9
    :try_end_11d
    .catchall {:try_start_11b .. :try_end_11d} :catchall_121

    move v9, v14

    :goto_11e
    add-int/2addr v7, v11

    goto/16 :goto_34

    :catchall_121
    move-exception v0

    move v9, v14

    goto :goto_140

    :cond_124
    :try_start_124
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_126
    .catchall {:try_start_124 .. :try_end_126} :catchall_13f

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

    :catchall_13f
    move-exception v0

    :goto_140
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

.method public decodeBig5(II)C
    .registers 4

    iget-object v0, p0, Ljj$/sun/nio/cs/HKSCS$Decoder;->big5Dec:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    invoke-virtual {v0, p1, p2}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->decodeDouble(II)C

    move-result v0

    return v0
.end method

.method protected decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 13

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_96

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v2}, Ljj$/sun/nio/cs/HKSCS$Decoder;->decodeSingle(I)C

    move-result v5

    const/4 v6, 0x2

    const v7, 0xfffd

    if-ne v5, v7, :cond_6b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_2d

    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_9f

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    return-object v6

    :cond_2d
    :try_start_2d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v3, v3, 0x1

    sget v9, Ljj$/sun/nio/cs/HKSCS$Decoder;->b2Min:I

    if-lt v8, v9, :cond_60

    sget v9, Ljj$/sun/nio/cs/HKSCS$Decoder;->b2Max:I

    if-le v8, v9, :cond_3e

    goto :goto_60

    :cond_3e
    invoke-virtual {p0, v2, v8}, Ljj$/sun/nio/cs/HKSCS$Decoder;->decodeDouble(II)C

    move-result v9

    move v5, v9

    if-ne v5, v7, :cond_6b

    invoke-virtual {p0, v2, v8}, Ljj$/sun/nio/cs/HKSCS$Decoder;->decodeDoubleEx(II)C

    move-result v9

    move v5, v9

    if-ne v5, v7, :cond_5e

    invoke-virtual {p0, v2, v8}, Ljj$/sun/nio/cs/HKSCS$Decoder;->decodeBig5(II)C

    move-result v9

    move v5, v9

    if-ne v5, v7, :cond_6b

    invoke-static {v6}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v6
    :try_end_57
    .catchall {:try_start_2d .. :try_end_57} :catchall_9f

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    return-object v6

    :cond_5e
    const/4 v4, 0x2

    goto :goto_6b

    :cond_60
    :goto_60
    :try_start_60
    invoke-static {v6}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v6
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_9f

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    return-object v6

    :cond_6b
    :goto_6b
    :try_start_6b
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v7

    if-ge v7, v4, :cond_7a

    sget-object v6, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_9f

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    return-object v6

    :cond_7a
    if-ne v4, v6, :cond_90

    const/high16 v6, 0x20000

    add-int v7, v5, v6

    :try_start_80
    invoke-static {v7}, Ljj$/sun/nio/cs/Surrogate;->high(I)C

    move-result v7

    invoke-virtual {p2, v7}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/2addr v6, v5

    invoke-static {v6}, Ljj$/sun/nio/cs/Surrogate;->low(I)C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_93

    :cond_90
    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    :goto_93
    add-int/2addr v0, v3

    goto/16 :goto_4

    :cond_96
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_98
    .catchall {:try_start_80 .. :try_end_98} :catchall_9f

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    return-object v1

    :catchall_9f
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    throw v1
.end method

.method public decodeDouble(II)C
    .registers 5

    iget-object v0, p0, Ljj$/sun/nio/cs/HKSCS$Decoder;->b2cBmp:[[C

    aget-object v0, v0, p1

    sget v1, Ljj$/sun/nio/cs/HKSCS$Decoder;->b2Min:I

    sub-int v1, p2, v1

    aget-char v0, v0, v1

    return v0
.end method

.method public decodeDoubleEx(II)C
    .registers 5

    iget-object v0, p0, Ljj$/sun/nio/cs/HKSCS$Decoder;->b2cSupp:[[C

    aget-object v0, v0, p1

    sget v1, Ljj$/sun/nio/cs/HKSCS$Decoder;->b2Min:I

    sub-int v1, p2, v1

    aget-char v0, v0, v1

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

    invoke-virtual {p0, p1, p2}, Ljj$/sun/nio/cs/HKSCS$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual {p0, p1, p2}, Ljj$/sun/nio/cs/HKSCS$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decodeSingle(I)C
    .registers 3

    iget-object v0, p0, Ljj$/sun/nio/cs/HKSCS$Decoder;->big5Dec:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    invoke-virtual {v0, p1}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->decodeSingle(I)C

    move-result v0

    return v0
.end method
