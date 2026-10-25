.class Ljj$/sun/nio/cs/UTF_8$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "UTF_8.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/sun/nio/cs/UTF_8;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/UTF_8-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/UTF_8$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 20

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    add-int v8, v3, v4

    sub-int v3, v2, v0

    sub-int v4, v8, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v9, v1, v3

    :goto_37
    if-ge v1, v9, :cond_49

    aget-byte v3, v6, v0

    if-ltz v3, :cond_49

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v6, v0

    int-to-char v0, v0

    aput-char v0, v7, v1

    move v1, v3

    move v0, v4

    goto :goto_37

    :cond_49
    move v4, v1

    move v1, v0

    :goto_4b
    if-ge v1, v2, :cond_184

    aget-byte v10, v6, v1

    if-ltz v10, :cond_6b

    if-lt v4, v8, :cond_5d

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    :cond_5d
    move-object/from16 v0, p1

    move-object/from16 v3, p2

    add-int/lit8 v5, v4, 0x1

    int-to-char v11, v10

    aput-char v11, v7, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto/16 :goto_147

    :cond_6b
    move-object/from16 v0, p1

    move-object/from16 v3, p2

    shr-int/lit8 v5, v10, 0x5

    const/4 v11, -0x2

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v5, v11, :cond_a6

    and-int/lit8 v5, v10, 0x1e

    if-eqz v5, :cond_a6

    sub-int v5, v2, v1

    if-lt v5, v12, :cond_a0

    if-lt v4, v8, :cond_81

    goto :goto_a0

    :cond_81
    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v6, v5

    invoke-static {v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isNotContinuation(I)Z

    move-result v11

    if-eqz v11, :cond_90

    invoke-static {v0, v1, v3, v4, v13}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v11

    return-object v11

    :cond_90
    add-int/lit8 v11, v4, 0x1

    shl-int/lit8 v12, v10, 0x6

    xor-int/2addr v12, v5

    xor-int/lit16 v12, v12, 0xf80

    int-to-char v12, v12

    aput-char v12, v7, v4

    nop

    add-int/lit8 v1, v1, 0x2

    move v4, v11

    goto/16 :goto_147

    :cond_a0
    :goto_a0
    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    :cond_a6
    shr-int/lit8 v5, v10, 0x4

    if-ne v5, v11, :cond_fb

    sub-int v11, v2, v1

    const/4 v5, 0x3

    if-lt v11, v5, :cond_e4

    if-lt v4, v8, :cond_b2

    goto :goto_e4

    :cond_b2
    add-int/lit8 v12, v1, 0x1

    aget-byte v12, v6, v12

    add-int/lit8 v13, v1, 0x2

    aget-byte v13, v6, v13

    invoke-static {v10, v12, v13}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isMalformed3(III)Z

    move-result v14

    if-eqz v14, :cond_c5

    invoke-static {v0, v1, v3, v4, v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    :cond_c5
    shl-int/lit8 v14, v10, 0xc

    shl-int/lit8 v15, v12, 0x6

    xor-int/2addr v14, v15

    const v15, -0x1e080

    xor-int/2addr v15, v13

    xor-int/2addr v14, v15

    int-to-char v14, v14

    invoke-static {v14}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v15

    if-eqz v15, :cond_db

    invoke-static {v0, v1, v3, v4, v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    :cond_db
    add-int/lit8 v5, v4, 0x1

    aput-char v14, v7, v4

    nop

    add-int/lit8 v1, v1, 0x3

    move v4, v5

    goto :goto_147

    :cond_e4
    :goto_e4
    if-le v11, v13, :cond_f5

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v6, v5

    invoke-static {v10, v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isMalformed3_2(II)Z

    move-result v5

    if-eqz v5, :cond_f5

    invoke-static {v0, v1, v3, v4, v13}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    :cond_f5
    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    :cond_fb
    shr-int/lit8 v5, v10, 0x3

    if-ne v5, v11, :cond_17f

    sub-int v11, v2, v1

    const/4 v5, 0x4

    if-lt v11, v5, :cond_14e

    sub-int v14, v8, v4

    if-ge v14, v12, :cond_109

    goto :goto_14e

    :cond_109
    add-int/lit8 v12, v1, 0x1

    aget-byte v12, v6, v12

    add-int/lit8 v13, v1, 0x2

    aget-byte v13, v6, v13

    add-int/lit8 v14, v1, 0x3

    aget-byte v14, v6, v14

    shl-int/lit8 v15, v10, 0x12

    shl-int/lit8 v16, v12, 0xc

    xor-int v15, v15, v16

    shl-int/lit8 v16, v13, 0x6

    xor-int v15, v15, v16

    const v16, 0x381f80

    xor-int v16, v14, v16

    xor-int v15, v15, v16

    invoke-static {v12, v13, v14}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isMalformed4(III)Z

    move-result v16

    if-nez v16, :cond_149

    invoke-static {v15}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v16

    if-nez v16, :cond_133

    goto :goto_149

    :cond_133
    add-int/lit8 v5, v4, 0x1

    invoke-static {v15}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v16

    aput-char v16, v7, v4

    add-int/lit8 v4, v5, 0x1

    invoke-static {v15}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v16

    aput-char v16, v7, v5

    nop

    add-int/lit8 v1, v1, 0x4

    nop

    :goto_147
    goto/16 :goto_4b

    :cond_149
    :goto_149
    invoke-static {v0, v1, v3, v4, v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    :cond_14e
    :goto_14e
    and-int/lit16 v10, v10, 0xff

    const/16 v5, 0xf4

    if-gt v10, v5, :cond_17a

    if-le v11, v13, :cond_163

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v10, v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isMalformed4_2(II)Z

    move-result v5

    if-eqz v5, :cond_163

    goto :goto_17a

    :cond_163
    if-le v11, v12, :cond_174

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, v6, v5

    invoke-static {v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isMalformed4_3(I)Z

    move-result v5

    if-eqz v5, :cond_174

    invoke-static {v0, v1, v3, v4, v12}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    :cond_174
    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    :cond_17a
    :goto_17a
    invoke-static {v0, v1, v3, v4, v13}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    :cond_17f
    invoke-static {v0, v1, v3, v4, v13}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    :cond_184
    move-object/from16 v0, p1

    move-object/from16 v3, p2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5
.end method

.method private decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 13

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_135

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_24

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_1c

    invoke-static {p1, v0, v3}, Ljj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    :cond_1c
    int-to-char v3, v2

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f9

    :cond_24
    shr-int/lit8 v4, v2, 0x5

    const/4 v5, -0x2

    const/4 v6, 0x2

    if-ne v4, v5, :cond_5b

    and-int/lit8 v4, v2, 0x1e

    if-eqz v4, :cond_5b

    sub-int v4, v1, v0

    if-lt v4, v6, :cond_56

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_39

    goto :goto_56

    :cond_39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isNotContinuation(I)Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-static {p1, v0, v3}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    :cond_48
    shl-int/lit8 v3, v2, 0x6

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0xf80

    int-to-char v3, v3

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    nop

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_f9

    :cond_56
    :goto_56
    invoke-static {p1, v0, v6}, Ljj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    :cond_5b
    shr-int/lit8 v4, v2, 0x4

    if-ne v4, v5, :cond_b1

    sub-int v4, v1, v0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_9b

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    if-ge v6, v3, :cond_6b

    goto :goto_9b

    :cond_6b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-static {v2, v3, v6}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isMalformed3(III)Z

    move-result v7

    if-eqz v7, :cond_7e

    invoke-static {p1, v0, v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformed(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    :cond_7e
    shl-int/lit8 v7, v2, 0xc

    shl-int/lit8 v8, v3, 0x6

    xor-int/2addr v7, v8

    const v8, -0x1e080

    xor-int/2addr v8, v6

    xor-int/2addr v7, v8

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_94

    invoke-static {p1, v0, v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    :cond_94
    invoke-virtual {p2, v7}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    nop

    add-int/lit8 v0, v0, 0x3

    goto :goto_f9

    :cond_9b
    :goto_9b
    if-le v4, v3, :cond_ac

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-static {v2, v6}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isMalformed3_2(II)Z

    move-result v6

    if-eqz v6, :cond_ac

    invoke-static {p1, v0, v3}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    :cond_ac
    invoke-static {p1, v0, v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    :cond_b1
    shr-int/lit8 v4, v2, 0x3

    if-ne v4, v5, :cond_130

    sub-int v4, v1, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_100

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v7

    if-ge v7, v6, :cond_c1

    goto :goto_100

    :cond_c1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    shl-int/lit8 v8, v2, 0x12

    shl-int/lit8 v9, v3, 0xc

    xor-int/2addr v8, v9

    shl-int/lit8 v9, v6, 0x6

    xor-int/2addr v8, v9

    const v9, 0x381f80

    xor-int/2addr v9, v7

    xor-int/2addr v8, v9

    invoke-static {v3, v6, v7}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isMalformed4(III)Z

    move-result v9

    if-nez v9, :cond_fb

    invoke-static {v8}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v9

    if-nez v9, :cond_e7

    goto :goto_fb

    :cond_e7
    invoke-static {v8}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    invoke-static {v8}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    nop

    add-int/lit8 v0, v0, 0x4

    nop

    :goto_f9
    goto/16 :goto_8

    :cond_fb
    :goto_fb
    invoke-static {p1, v0, v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformed(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    :cond_100
    :goto_100
    and-int/lit16 v2, v2, 0xff

    const/16 v7, 0xf4

    if-gt v2, v7, :cond_12b

    if-le v4, v3, :cond_115

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v2, v7}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isMalformed4_2(II)Z

    move-result v7

    if-eqz v7, :cond_115

    goto :goto_12b

    :cond_115
    if-le v4, v6, :cond_126

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isMalformed4_3(I)Z

    move-result v3

    if-eqz v3, :cond_126

    invoke-static {p1, v0, v6}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    :cond_126
    invoke-static {p1, v0, v5}, Ljj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    :cond_12b
    :goto_12b
    invoke-static {p1, v0, v3}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    :cond_130
    invoke-static {p1, v0, v3}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformed(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    :cond_135
    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Ljj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2
.end method

.method private static getByteBuffer(Ljava/nio/ByteBuffer;[BI)Ljava/nio/ByteBuffer;
    .registers 4

    if-nez p0, :cond_6

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    :cond_6
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private static isMalformed3(III)Z
    .registers 5

    const/16 v0, -0x20

    const/16 v1, 0x80

    if-ne p0, v0, :cond_a

    and-int/lit16 v0, p1, 0xe0

    if-eq v0, v1, :cond_15

    :cond_a
    and-int/lit16 v0, p1, 0xc0

    if-ne v0, v1, :cond_15

    and-int/lit16 v0, p2, 0xc0

    if-eq v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private static isMalformed3_2(II)Z
    .registers 4

    const/16 v0, -0x20

    const/16 v1, 0x80

    if-ne p0, v0, :cond_a

    and-int/lit16 v0, p1, 0xe0

    if-eq v0, v1, :cond_e

    :cond_a
    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static isMalformed4(III)Z
    .registers 5

    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_11

    and-int/lit16 v0, p1, 0xc0

    if-ne v0, v1, :cond_11

    and-int/lit16 v0, p2, 0xc0

    if-eq v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private static isMalformed4_2(II)Z
    .registers 4

    const/16 v0, 0xf0

    if-ne p0, v0, :cond_c

    const/16 v0, 0x90

    if-lt p1, v0, :cond_1a

    const/16 v0, 0xbf

    if-gt p1, v0, :cond_1a

    :cond_c
    const/16 v0, 0xf4

    const/16 v1, 0x80

    if-ne p0, v0, :cond_16

    and-int/lit16 v0, p1, 0xf0

    if-ne v0, v1, :cond_1a

    :cond_16
    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v1, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method private static isMalformed4_3(I)Z
    .registers 3

    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static isNotContinuation(I)Z
    .registers 3

    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .registers 4

    const/4 v0, 0x1

    :goto_1
    if-ge v0, p1, :cond_15

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    invoke-static {p1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static malformed(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;
    .registers 5

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {p0, p2}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private static malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
    .registers 6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {p0, p4}, Ljj$/sun/nio/cs/UTF_8$Decoder;->malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Ljj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    return-object v0
.end method

.method private static malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;
    .registers 4

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {p2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static malformedForLength(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
    .registers 6

    invoke-static {p0, p1, p2, p3}, Ljj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    invoke-static {p4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .registers 9

    const/4 v0, 0x2

    const/16 v1, 0x80

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_6e

    goto :goto_6c

    :pswitch_8  #0x4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xf4

    if-gt v3, v5, :cond_46

    const/16 v6, 0xf0

    if-ne v3, v6, :cond_24

    const/16 v6, 0x90

    if-lt v4, v6, :cond_46

    const/16 v6, 0xbf

    if-gt v4, v6, :cond_46

    :cond_24
    if-ne v3, v5, :cond_2a

    and-int/lit16 v5, v4, 0xf0

    if-ne v5, v1, :cond_46

    :cond_2a
    invoke-static {v4}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_46

    :cond_31
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_40
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_46
    :goto_46
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :pswitch_4b  #0x3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/16 v5, -0x20

    if-ne v3, v5, :cond_5b

    and-int/lit16 v5, v4, 0xe0

    if-eq v5, v1, :cond_61

    :cond_5b
    invoke-static {v4}, Ljj$/sun/nio/cs/UTF_8$Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_62

    :cond_61
    const/4 v0, 0x1

    :cond_62
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :pswitch_67  #0x1, 0x2
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :goto_6c
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_67  #00000001
        :pswitch_67  #00000002
        :pswitch_4b  #00000003
        :pswitch_8  #00000004
    .end packed-switch
.end method

.method private static xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
    .registers 4

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    if-eqz p2, :cond_f

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p2, :cond_c

    goto :goto_f

    :cond_c
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_11

    :cond_f
    :goto_f
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    :goto_11
    return-object v0
.end method

.method private static xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
    .registers 7

    invoke-static {p0, p1, p3, p4}, Ljj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    if-eqz p5, :cond_d

    sub-int v0, p2, p1

    if-ge v0, p5, :cond_a

    goto :goto_d

    :cond_a
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_f

    :cond_d
    :goto_d
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    :goto_f
    return-object v0
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/UTF_8$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/UTF_8$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method
