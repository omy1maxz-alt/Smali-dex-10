.class public Ljj$/sun/nio/cs/EUC_TW$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "EUC_TW.java"


# static fields
.field static final b1Max:I = 0xfe

.field static final b1Min:I = 0xa1

.field static final b2Max:I = 0xfe

.field static final b2Min:I = 0xa1

.field static final b2c:[Ljava/lang/String;

.field static final b2cIsSupp:[B

.field static final cnspToIndex:[B

.field static final dbSegSize:I = 0x5e


# instance fields
.field c1:[C

.field c2:[C


# direct methods
.method static constructor <clinit>()V
    .registers 7

    sget-object v0, Ljj$/sun/nio/cs/EUC_TWMapping;->b2c:[Ljava/lang/String;

    sput-object v0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->b2c:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    sget-object v0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    sget-object v0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/16 v1, 0xa2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    sget-object v0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/16 v1, 0xa3

    const/4 v3, 0x2

    aput-byte v3, v0, v1

    sget-object v0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/16 v1, 0xa4

    const/4 v3, 0x3

    aput-byte v3, v0, v1

    sget-object v0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/16 v1, 0xa5

    const/4 v3, 0x4

    aput-byte v3, v0, v1

    sget-object v0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/16 v1, 0xa6

    const/4 v3, 0x5

    aput-byte v3, v0, v1

    sget-object v0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/16 v1, 0xa7

    const/4 v3, 0x6

    aput-byte v3, v0, v1

    sget-object v0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/16 v1, 0xaf

    const/4 v3, 0x7

    aput-byte v3, v0, v1

    sget-object v0, Ljj$/sun/nio/cs/EUC_TWMapping;->b2cIsSuppStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    shl-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_67

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_67
    sput-object v1, Ljj$/sun/nio/cs/EUC_TW$Decoder;->b2cIsSupp:[B

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 3

    const/high16 v0, 0x40000000  # 2.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->c1:[C

    const/4 v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->c2:[C

    return-void
.end method

.method static decode(III[C[C)[C
    .registers 11

    const/4 v0, 0x0

    const/16 v1, 0xa1

    if-lt p0, v1, :cond_42

    const/16 v2, 0xfe

    if-gt p0, v2, :cond_42

    if-lt p1, v1, :cond_42

    if-le p1, v2, :cond_e

    goto :goto_42

    :cond_e
    add-int/lit16 v2, p0, -0xa1

    mul-int/lit8 v2, v2, 0x5e

    add-int/2addr v2, p1

    sub-int/2addr v2, v1

    sget-object v1, Ljj$/sun/nio/cs/EUC_TW$Decoder;->b2c:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v3, 0xfffd

    if-ne v1, v3, :cond_22

    return-object v0

    :cond_22
    sget-object v0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->b2cIsSupp:[B

    aget-byte v0, v0, v2

    const/4 v3, 0x1

    shl-int v4, v3, p2

    and-int/2addr v0, v4

    const/4 v4, 0x0

    if-nez v0, :cond_30

    aput-char v1, p3, v4

    return-object p3

    :cond_30
    const/high16 v0, 0x20000

    add-int v5, v1, v0

    invoke-static {v5}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v5

    aput-char v5, p4, v4

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v0

    aput-char v0, p4, v3

    return-object p4

    :cond_42
    :goto_42
    return-object v0
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
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
    if-ge v7, v5, :cond_1f6

    :try_start_36
    aget-byte v0, v4, v7

    and-int/lit16 v0, v0, 0xff

    const/16 v10, 0x8e

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v0, v10, :cond_121

    sub-int v10, v5, v7

    const/4 v14, 0x4

    if-ge v10, v14, :cond_60

    sget-object v10, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_211

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v9, v11

    invoke-virtual {v3, v11}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/CharBuffer;

    return-object v10

    :cond_60
    :try_start_60
    sget-object v10, Ljj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    add-int/lit8 v15, v7, 0x1

    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    aget-byte v10, v10, v15

    if-gez v10, :cond_89

    invoke-static {v12}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v11
    :try_end_70
    .catchall {:try_start_60 .. :try_end_70} :catchall_211

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

    :cond_89
    add-int/lit8 v12, v7, 0x2

    :try_start_8b
    aget-byte v12, v4, v12

    and-int/lit16 v0, v12, 0xff

    add-int/lit8 v12, v7, 0x3

    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual {v1, v0, v12, v10}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->toUnicode(III)[C

    move-result-object v15

    if-nez v15, :cond_e2

    invoke-static {v0}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v11

    if-eqz v11, :cond_c5

    invoke-static {v12}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v11

    if-nez v11, :cond_a8

    goto :goto_c5

    :cond_a8
    invoke-static {v14}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v11
    :try_end_ac
    .catchall {:try_start_8b .. :try_end_ac} :catchall_211

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

    return-object v11

    :cond_c5
    :goto_c5
    :try_start_c5
    invoke-static {v14}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v11
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_211

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

    return-object v11

    :cond_e2
    sub-int v14, v8, v9

    const/16 v16, 0x0

    :try_start_e6
    array-length v11, v15

    if-ge v14, v11, :cond_104

    sget-object v11, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_eb
    .catchall {:try_start_e6 .. :try_end_eb} :catchall_211

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

    return-object v11

    :cond_104
    :try_start_104
    array-length v11, v15
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_211

    if-ne v11, v13, :cond_10e

    add-int/lit8 v11, v9, 0x1

    :try_start_109
    aget-char v13, v15, v16

    aput-char v13, v6, v9

    goto :goto_11b

    :cond_10e
    add-int/lit8 v11, v9, 0x1

    aget-char v14, v15, v16

    aput-char v14, v6, v9
    :try_end_114
    .catchall {:try_start_109 .. :try_end_114} :catchall_1f3

    add-int/lit8 v9, v11, 0x1

    :try_start_116
    aget-char v13, v15, v13

    aput-char v13, v6, v11

    move v11, v9

    :goto_11b
    nop

    add-int/lit8 v7, v7, 0x4

    move v9, v11

    goto/16 :goto_1f1

    :cond_121
    const/16 v16, 0x0

    const/16 v10, 0x80

    if-ge v0, v10, :cond_154

    sub-int v10, v8, v9

    if-ge v10, v13, :cond_146

    sget-object v10, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_12d
    .catchall {:try_start_116 .. :try_end_12d} :catchall_211

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v9, v11

    invoke-virtual {v3, v11}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/CharBuffer;

    return-object v10

    :cond_146
    add-int/lit8 v10, v9, 0x1

    int-to-char v11, v0

    :try_start_149
    aput-char v11, v6, v9
    :try_end_14b
    .catchall {:try_start_149 .. :try_end_14b} :catchall_150

    add-int/lit8 v7, v7, 0x1

    move v9, v10

    goto/16 :goto_1f1

    :catchall_150
    move-exception v0

    move v9, v10

    goto/16 :goto_212

    :cond_154
    sub-int v10, v5, v7

    if-ge v10, v12, :cond_173

    :try_start_158
    sget-object v10, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_15a
    .catchall {:try_start_158 .. :try_end_15a} :catchall_211

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v9, v11

    invoke-virtual {v3, v11}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/CharBuffer;

    return-object v10

    :cond_173
    add-int/lit8 v10, v7, 0x1

    :try_start_175
    aget-byte v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x0

    invoke-virtual {v1, v0, v10, v11}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->toUnicode(III)[C

    move-result-object v14

    if-nez v14, :cond_1c7

    invoke-static {v0}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v11

    if-eqz v11, :cond_1aa

    invoke-static {v10}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v11

    if-nez v11, :cond_18d

    goto :goto_1aa

    :cond_18d
    invoke-static {v12}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v11
    :try_end_191
    .catchall {:try_start_175 .. :try_end_191} :catchall_211

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

    :cond_1aa
    :goto_1aa
    :try_start_1aa
    invoke-static {v13}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v11
    :try_end_1ae
    .catchall {:try_start_1aa .. :try_end_1ae} :catchall_211

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

    :cond_1c7
    sub-int v11, v8, v9

    if-ge v11, v13, :cond_1e6

    :try_start_1cb
    sget-object v11, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_1cd
    .catchall {:try_start_1cb .. :try_end_1cd} :catchall_211

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

    :cond_1e6
    add-int/lit8 v11, v9, 0x1

    const/16 v16, 0x0

    :try_start_1ea
    aget-char v12, v14, v16

    aput-char v12, v6, v9
    :try_end_1ee
    .catchall {:try_start_1ea .. :try_end_1ee} :catchall_1f3

    add-int/lit8 v7, v7, 0x2

    move v9, v11

    :goto_1f1
    goto/16 :goto_34

    :catchall_1f3
    move-exception v0

    move v9, v11

    goto :goto_212

    :cond_1f6
    :try_start_1f6
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_1f8
    .catchall {:try_start_1f6 .. :try_end_1f8} :catchall_211

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

    :catchall_211
    move-exception v0

    :goto_212
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

.method private decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 12

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_10b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8e

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_9b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v6, 0x3

    if-ge v2, v6, :cond_27

    sget-object v2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_114

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    return-object v2

    :cond_27
    :try_start_27
    sget-object v2, Ljj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    aget-byte v2, v2, v6

    if-gez v2, :cond_3e

    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_114

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    return-object v3

    :cond_3e
    :try_start_3e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v1, v3, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v1, v3, v2}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->toUnicode(III)[C

    move-result-object v6

    if-nez v6, :cond_74

    invoke-static {v1}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_69

    invoke-static {v3}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v4

    if-nez v4, :cond_5e

    goto :goto_69

    :cond_5e
    invoke-static {v5}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_62
    .catchall {:try_start_3e .. :try_end_62} :catchall_114

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    return-object v4

    :cond_69
    :goto_69
    :try_start_69
    invoke-static {v5}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_114

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    return-object v4

    :cond_74
    :try_start_74
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v7

    array-length v8, v6

    if-ge v7, v8, :cond_84

    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_114

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    return-object v4

    :cond_84
    :try_start_84
    array-length v7, v6

    if-ne v7, v4, :cond_8d

    aget-char v4, v6, v5

    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_97

    :cond_8d
    aget-char v5, v6, v5

    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    aget-char v4, v6, v4

    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    :goto_97
    nop

    add-int/lit8 v0, v0, 0x4

    goto :goto_109

    :cond_9b
    const/16 v2, 0x80

    if-ge v1, v2, :cond_b5

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_ae

    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_a7
    .catchall {:try_start_84 .. :try_end_a7} :catchall_114

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    return-object v2

    :cond_ae
    int-to-char v2, v1

    :try_start_af
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_109

    :cond_b5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_c4

    sget-object v2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_bd
    .catchall {:try_start_af .. :try_end_bd} :catchall_114

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    return-object v2

    :cond_c4
    :try_start_c4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v1, v2, v5}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->toUnicode(III)[C

    move-result-object v6

    if-nez v6, :cond_f3

    invoke-static {v1}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v5

    if-eqz v5, :cond_e8

    invoke-static {v2}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v5

    if-nez v5, :cond_dd

    goto :goto_e8

    :cond_dd
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_e1
    .catchall {:try_start_c4 .. :try_end_e1} :catchall_114

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    return-object v3

    :cond_e8
    :goto_e8
    :try_start_e8
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_ec
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_114

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    return-object v3

    :cond_f3
    :try_start_f3
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_102

    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_fb
    .catchall {:try_start_f3 .. :try_end_fb} :catchall_114

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    return-object v3

    :cond_102
    :try_start_102
    aget-char v3, v6, v5

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v0, v0, 0x2

    :goto_109
    goto/16 :goto_4

    :cond_10b
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_10d
    .catchall {:try_start_102 .. :try_end_10d} :catchall_114

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    return-object v1

    :catchall_114
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    throw v1
.end method

.method static isLegalDB(I)Z
    .registers 2

    const/16 v0, 0xa1

    if-lt p0, v0, :cond_a

    const/16 v0, 0xfe

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
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

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public toUnicode(III)[C
    .registers 6

    iget-object v0, p0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->c1:[C

    iget-object v1, p0, Ljj$/sun/nio/cs/EUC_TW$Decoder;->c2:[C

    invoke-static {p1, p2, p3, v0, v1}, Ljj$/sun/nio/cs/EUC_TW$Decoder;->decode(III[C[C)[C

    move-result-object v0

    return-object v0
.end method
