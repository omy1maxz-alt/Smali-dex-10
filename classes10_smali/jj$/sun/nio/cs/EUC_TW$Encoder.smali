.class public Ljj$/sun/nio/cs/EUC_TW$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "EUC_TW.java"


# static fields
.field static final c2b:[C

.field static final c2bIndex:[C

.field static final c2bPlane:[B

.field static final c2bSupp:[C

.field static final c2bSuppIndex:[C


# instance fields
.field private bb:[B


# direct methods
.method static constructor <clinit>()V
    .registers 21

    const/16 v0, 0xa1

    const/16 v1, 0xfe

    const/16 v2, 0xa1

    const/16 v3, 0xfe

    const/16 v4, 0x5e

    sget-object v5, Ljj$/sun/nio/cs/EUC_TW$Decoder;->b2c:[Ljava/lang/String;

    sget-object v6, Ljj$/sun/nio/cs/EUC_TW$Decoder;->b2cIsSupp:[B

    sget-object v7, Ljj$/sun/nio/cs/EUC_TWMapping;->c2bIndex:[C

    sput-object v7, Ljj$/sun/nio/cs/EUC_TW$Encoder;->c2bIndex:[C

    sget-object v7, Ljj$/sun/nio/cs/EUC_TWMapping;->c2bSuppIndex:[C

    sput-object v7, Ljj$/sun/nio/cs/EUC_TW$Encoder;->c2bSuppIndex:[C

    const/16 v7, 0x7c00

    new-array v8, v7, [C

    const v9, 0xaa00

    new-array v10, v9, [C

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v7, v7, [B

    const v9, 0xfffd

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([CC)V

    invoke-static {v10, v9}, Ljava/util/Arrays;->fill([CC)V

    const/4 v11, 0x0

    :goto_2f
    array-length v12, v5

    if-ge v11, v12, :cond_c0

    aget-object v12, v5, v11

    move v13, v11

    const/4 v14, 0x7

    if-ne v13, v14, :cond_3b

    const/16 v13, 0xf

    goto :goto_3f

    :cond_3b
    if-eqz v13, :cond_3f

    add-int/lit8 v13, v11, 0x1

    :cond_3f
    :goto_3f
    const/4 v14, 0x0

    move v15, v0

    :goto_41
    if-gt v15, v1, :cond_b5

    move/from16 v16, v2

    move/from16 v9, v16

    :goto_47
    if-gt v9, v3, :cond_ab

    move/from16 v17, v0

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move/from16 v18, v1

    const v1, 0xfffd

    if-eq v0, v1, :cond_9f

    aget-byte v16, v6, v14

    const/16 v19, 0x1

    shl-int v19, v19, v11

    and-int v16, v16, v19

    if-eqz v16, :cond_7f

    sget-object v16, Ljj$/sun/nio/cs/EUC_TW$Encoder;->c2bSuppIndex:[C

    shr-int/lit8 v19, v0, 0x8

    aget-char v16, v16, v19

    and-int/lit16 v1, v0, 0xff

    add-int v16, v16, v1

    shl-int/lit8 v1, v15, 0x8

    add-int/2addr v1, v9

    int-to-char v1, v1

    aput-char v1, v10, v16

    aget-byte v1, v7, v16

    move/from16 v20, v1

    shl-int/lit8 v1, v13, 0x4

    int-to-byte v1, v1

    or-int v1, v20, v1

    int-to-byte v1, v1

    aput-byte v1, v7, v16

    move/from16 v20, v0

    goto :goto_a1

    :cond_7f
    sget-object v1, Ljj$/sun/nio/cs/EUC_TW$Encoder;->c2bIndex:[C

    shr-int/lit8 v16, v0, 0x8

    aget-char v1, v1, v16

    move/from16 v16, v1

    and-int/lit16 v1, v0, 0xff

    add-int v1, v16, v1

    shl-int/lit8 v16, v15, 0x8

    move/from16 v20, v0

    add-int v0, v16, v9

    int-to-char v0, v0

    aput-char v0, v8, v1

    aget-byte v0, v7, v1

    move/from16 v16, v0

    int-to-byte v0, v13

    or-int v0, v16, v0

    int-to-byte v0, v0

    aput-byte v0, v7, v1

    goto :goto_a1

    :cond_9f
    move/from16 v20, v0

    :goto_a1
    nop

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    goto :goto_47

    :cond_ab
    move/from16 v17, v0

    move/from16 v18, v1

    add-int/lit8 v15, v15, 0x1

    const v9, 0xfffd

    goto :goto_41

    :cond_b5
    move/from16 v17, v0

    move/from16 v18, v1

    add-int/lit8 v11, v11, 0x1

    const v9, 0xfffd

    goto/16 :goto_2f

    :cond_c0
    sput-object v8, Ljj$/sun/nio/cs/EUC_TW$Encoder;->c2b:[C

    sput-object v10, Ljj$/sun/nio/cs/EUC_TW$Encoder;->c2bSupp:[C

    sput-object v7, Ljj$/sun/nio/cs/EUC_TW$Encoder;->c2bPlane:[B

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 3

    const/high16 v0, 0x40800000  # 4.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Ljj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    return-void
.end method

.method static encode(CC[B)I
    .registers 10

    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    const/high16 v1, 0xf0000

    and-int/2addr v1, v0

    const/4 v2, -0x1

    const/high16 v3, 0x20000

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    sub-int/2addr v0, v3

    sget-object v1, Ljj$/sun/nio/cs/EUC_TW$Encoder;->c2bSuppIndex:[C

    shr-int/lit8 v3, v0, 0x8

    aget-char v1, v1, v3

    const v3, 0xfffd

    if-ne v1, v3, :cond_1a

    return v2

    :cond_1a
    and-int/lit16 v4, v0, 0xff

    add-int/2addr v1, v4

    sget-object v4, Ljj$/sun/nio/cs/EUC_TW$Encoder;->c2bSupp:[C

    aget-char v4, v4, v1

    if-ne v4, v3, :cond_24

    return v2

    :cond_24
    sget-object v2, Ljj$/sun/nio/cs/EUC_TW$Encoder;->c2bPlane:[B

    aget-byte v2, v2, v1

    const/4 v3, 0x4

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    const/4 v5, 0x0

    const/16 v6, -0x72

    aput-byte v6, p2, v5

    or-int/lit16 v5, v2, 0xa0

    int-to-byte v5, v5

    const/4 v6, 0x1

    aput-byte v5, p2, v6

    shr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x2

    aput-byte v5, p2, v6

    const/4 v5, 0x3

    int-to-byte v6, v4

    aput-byte v6, p2, v5

    return v3
.end method

.method static encode(C[B)I
    .registers 9

    sget-object v0, Ljj$/sun/nio/cs/EUC_TW$Encoder;->c2bIndex:[C

    shr-int/lit8 v1, p0, 0x8

    aget-char v0, v0, v1

    const/4 v1, -0x1

    const v2, 0xfffd

    if-ne v0, v2, :cond_d

    return v1

    :cond_d
    and-int/lit16 v3, p0, 0xff

    add-int/2addr v0, v3

    sget-object v3, Ljj$/sun/nio/cs/EUC_TW$Encoder;->c2b:[C

    aget-char v3, v3, v0

    if-ne v3, v2, :cond_17

    return v1

    :cond_17
    sget-object v1, Ljj$/sun/nio/cs/EUC_TW$Encoder;->c2bPlane:[B

    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_2b

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    int-to-byte v5, v3

    aput-byte v5, p1, v4

    return v2

    :cond_2b
    const/16 v6, -0x72

    aput-byte v6, p1, v5

    or-int/lit16 v5, v1, 0xa0

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    const/4 v2, 0x3

    int-to-byte v4, v3

    aput-byte v4, p1, v2

    const/4 v2, 0x4

    return v2
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 15

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
    if-ge v1, v2, :cond_117

    :try_start_2e
    aget-char v6, v0, v1

    const/4 v7, 0x1

    const/16 v8, 0x80

    const/4 v9, -0x1

    if-ge v6, v8, :cond_3f

    iget-object v8, p0, Ljj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    const/4 v10, 0x0

    int-to-byte v11, v6

    aput-byte v11, v8, v10

    const/4 v8, 0x1

    goto/16 :goto_c4

    :cond_3f
    iget-object v8, p0, Ljj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    invoke-virtual {p0, v6, v8}, Ljj$/sun/nio/cs/EUC_TW$Encoder;->toEUC(C[B)I

    move-result v8

    if-ne v8, v9, :cond_c4

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_a1

    add-int/lit8 v10, v1, 0x1

    if-ne v10, v2, :cond_6d

    sget-object v9, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_54
    .catchall {:try_start_2e .. :try_end_54} :catchall_132

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    return-object v9

    :cond_6d
    add-int/lit8 v10, v1, 0x1

    :try_start_6f
    aget-char v10, v0, v10

    invoke-static {v10}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v10

    if-nez v10, :cond_94

    invoke-static {v11}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_7b
    .catchall {:try_start_6f .. :try_end_7b} :catchall_132

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    return-object v9

    :cond_94
    add-int/lit8 v10, v1, 0x1

    :try_start_96
    aget-char v10, v0, v10

    iget-object v11, p0, Ljj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    invoke-virtual {p0, v6, v10, v11}, Ljj$/sun/nio/cs/EUC_TW$Encoder;->toEUC(CC[B)I

    move-result v10

    move v8, v10

    const/4 v7, 0x2

    goto :goto_c4

    :cond_a1
    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_c4

    invoke-static {v11}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_ab
    .catchall {:try_start_96 .. :try_end_ab} :catchall_132

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    return-object v9

    :cond_c4
    :goto_c4
    if-ne v8, v9, :cond_e3

    :try_start_c6
    invoke-static {v7}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_ca
    .catchall {:try_start_c6 .. :try_end_ca} :catchall_132

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    return-object v9

    :cond_e3
    sub-int v9, v5, v4

    if-ge v9, v8, :cond_102

    :try_start_e7
    sget-object v9, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_e9
    .catchall {:try_start_e7 .. :try_end_e9} :catchall_132

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    return-object v9

    :cond_102
    const/4 v9, 0x0

    :goto_103
    if-ge v9, v8, :cond_114

    add-int/lit8 v10, v4, 0x1

    :try_start_107
    iget-object v11, p0, Ljj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    aget-byte v11, v11, v9

    aput-byte v11, v3, v4
    :try_end_10d
    .catchall {:try_start_107 .. :try_end_10d} :catchall_111

    add-int/lit8 v9, v9, 0x1

    move v4, v10

    goto :goto_103

    :catchall_111
    move-exception v6

    move v4, v10

    goto :goto_133

    :cond_114
    add-int/2addr v1, v7

    goto/16 :goto_2c

    :cond_117
    :try_start_117
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_119
    .catchall {:try_start_117 .. :try_end_119} :catchall_132

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

    :catchall_132
    move-exception v6

    :goto_133
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

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 11

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_95

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    const/16 v3, 0x80

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1c

    const/4 v3, 0x1

    iget-object v5, p0, Ljj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    const/4 v6, 0x0

    int-to-byte v7, v2

    aput-byte v7, v5, v6

    goto :goto_69

    :cond_1c
    iget-object v3, p0, Ljj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    invoke-virtual {p0, v2, v3}, Ljj$/sun/nio/cs/EUC_TW$Encoder;->toEUC(C[B)I

    move-result v3

    if-ne v3, v4, :cond_69

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_58

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_3a

    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_9e

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :cond_3a
    :try_start_3a
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_4f

    invoke-static {v6}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_9e

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/CharBuffer;

    return-object v4

    :cond_4f
    :try_start_4f
    iget-object v6, p0, Ljj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    invoke-virtual {p0, v2, v5, v6}, Ljj$/sun/nio/cs/EUC_TW$Encoder;->toEUC(CC[B)I

    move-result v6

    move v3, v6

    const/4 v1, 0x2

    :cond_57
    goto :goto_69

    :cond_58
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-static {v6}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_9e

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :cond_69
    :goto_69
    if-ne v3, v4, :cond_76

    :try_start_6b
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_9e

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :cond_76
    :try_start_76
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_85

    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_9e

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :cond_85
    const/4 v4, 0x0

    :goto_86
    if-ge v4, v3, :cond_92

    :try_start_88
    iget-object v5, p0, Ljj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    aget-byte v5, v5, v4

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_86

    :cond_92
    add-int/2addr v0, v1

    goto/16 :goto_4

    :cond_95
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_97
    .catchall {:try_start_88 .. :try_end_97} :catchall_9e

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


# virtual methods
.method public canEncode(C)Z
    .registers 4

    const/16 v0, 0x7f

    if-le p1, v0, :cond_10

    iget-object v0, p0, Ljj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    invoke-virtual {p0, p1, v0}, Ljj$/sun/nio/cs/EUC_TW$Encoder;->toEUC(C[B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public canEncode(Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3d

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_34

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_1b

    return v3

    :cond_1b
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_33

    iget-object v4, p0, Ljj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    invoke-virtual {p0, v0, v1, v4}, Ljj$/sun/nio/cs/EUC_TW$Encoder;->toEUC(CC[B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_31

    goto :goto_33

    :cond_31
    move v0, v2

    goto :goto_3c

    :cond_33
    :goto_33
    return v3

    :cond_34
    invoke-virtual {p0, v0}, Ljj$/sun/nio/cs/EUC_TW$Encoder;->canEncode(C)Z

    move-result v2

    if-nez v2, :cond_3b

    return v3

    :cond_3b
    move v0, v1

    :goto_3c
    goto :goto_1

    :cond_3d
    const/4 v1, 0x1

    return v1
.end method

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 4

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/EUC_TW$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/EUC_TW$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public toEUC(CC[B)I
    .registers 5

    invoke-static {p1, p2, p3}, Ljj$/sun/nio/cs/EUC_TW$Encoder;->encode(CC[B)I

    move-result v0

    return v0
.end method

.method public toEUC(C[B)I
    .registers 4

    invoke-static {p1, p2}, Ljj$/sun/nio/cs/EUC_TW$Encoder;->encode(C[B)I

    move-result v0

    return v0
.end method
